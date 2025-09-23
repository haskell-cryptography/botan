{-|
Module      : Botan.RNG
Description : Random number generators
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

A module for the common task of random number generation.
-}

-- TODO: replace the orphan instance by a non-orphan instance or deriving-via
-- mechanism. See issue #56.
{-# OPTIONS_GHC -Wno-orphans #-}

{-# LANGUAGE CPP          #-}
{-# LANGUAGE TypeFamilies #-}

module Botan.RNG (

  -- * Random Number Generators
  -- $introduction

  -- * Usage
  -- $usage

  -- * The RNG data type
    RNG

  -- * Available RNGs
  , RNGType(..)

  -- * Initializing a random number generator
  , newRNG
  , systemRNG

  -- * Getting random bytes directly
  , getRandomBytesRNG
  , unsafeGetRandomBytesRNG

  -- * Adding entropy directly
  , addEntropyRNG
  , reseedRNG
  , reseedRNGFrom

  -- * IO with implicit RNG
  , MonadRandomIO(..)

  -- * Getting random bytes
  , getRandomBytes
  , getSystemRandomBytes

  -- * Adding entropy
  , reseed
  , reseedFrom
  , addEntropy

  -- * RandomIO monad
  , RandomIO
  , runRandomIO

  -- * RandomT monad transformer
  , RandomT
  , runRandomT

  ) where

import qualified Data.ByteString as ByteString

import qualified Botan.Low.RNG as Low

import           Control.Monad.Reader

import           Botan.Prelude

import           System.Random.Stateful

{- $introduction

Random number generators (RNG) are applicable to a wide variety of fields, including cryptography
and statistics. They tend to come in two basic varieties: /"true"/ random generators (TRNG) that
obtain entropy by measuring some physical random process, and /pseudo-/ random generators (PRNG)
that produce long sequences of unpredictable values based on permutations of a much shorter
initial key.

Most practical systems take a hybrid approach that involves reseeding a cryptographically
secure pseudo-random generator (CSPRNG) periodically from some a source of true entropy, which
is the approach that the Botan C++ library takes.

NOTE: Be forewarned that virtual machines usually lack access to a source of true entropy.

-}

{- $usage

This module provides two methods of using the random number generator, which are repeated
throughout other modules in the rest of the library, thus affecting their design:

- Directly using an `RNG` context
- Implicit access to an `RNG` context using `MonadRandomIO`

Use of `MonadRandomIO` is preferred.

=== Directly using an RNG context

Direct usage is very simple: an `RNG` context is created, and must be passed around manually.

> main = do
>     rng <- newRNG Autoseeded
>     addEntropyRNG "Fee fi fo fum!" rng
>     reseedRNG 32 rng
>     x <- getRandomBytesRNG 12 rng
>     print x

=== Implicit access to an RNG context using MonadRandomIO

Monadic usage is very simple: `IO` is itself a convenient instance of `MonadRandomIO` that
uses the `systemRNG`:

> main = do
>     x <- getRandomBytes 12
>     print x

The `runRandomIO` function is used to run a `MonadRandomIO` action in `RandomIO` with a specific `RNG`:

> main = do
>     rng <- newRNG Autoseeded
>     flip runRandomIO rng $ do
>         addEntropy "Fee fi fo fum!"
>         x <- getRandomBytes 12
>         liftIO $ print x

The `RandomT` transformer and `runRandomT` functions can also be run with any `MonadIO`,
since `RandomIO` and `RandomT` are both instances of `MonadRandomIO`.

> getSomeBytes :: (MonadIO m) => RandomT (ReaderT Int m) ByteString
> getSomeBytes = do
>     n <- lift ask
>     getRandomBytes n

-}

-- NOTE: Since botan 2.x User and User-threadsafe are the same thing:
--   ... if(rng_type_s == "user" || rng_type_s == "user-threadsafe") ...

{- |
The random generator type.

Custom RNG are not yet supported at this time.
-}
data RNGType
    = System        -- ^ System random `System_RNG`
    | Autoseeded    -- ^ User-threadsafe autoseeded random `AutoSeeded_RNG`
    | RDRand        -- ^ Hardware random `Processor_RNG`, may be unavailable

    -- CustomRNG ...
    deriving stock (Eq, Show)

type RNGName = Low.RNGType

rngName :: RNGType -> RNGName
rngName System     = Low.SystemRNG
rngName Autoseeded = Low.UserRNG
rngName RDRand     = Low.RDRandRNG

{- |
The random number generator context.

NOTE: This data type is an instance of `System.Random.Stateful.Stateful`
-}
type RNG = Low.RNG

-- TODO: Move this to a System.Random.Stateful.Botan module that is imported conditionally
#if defined(HS_BOTAN_HAS_RANDOM)

instance (MonadIO m) => StatefulGen RNG m where

    -- NOTE: Going through ByteString first is inefficient
    uniformWord32 :: RNG -> m Word32
    uniformWord32 rng = packIntegral <$> getRandomBytesRNG 4 rng

packIntegral :: (Bits i, Integral i) => ByteString -> i
packIntegral = ByteString.foldl packIntegralWord 0

packIntegralWord :: (Bits i, Integral i, FiniteBits w, Integral w) => i -> w -> i
packIntegralWord i w = shiftL i (finiteBitSize w) .|. fromIntegral w

-- TODO: Adapters between MonadRandomIO and StatefulGen?
-- NOTE: Requires demoting
--      instance (MonadIO m) => StatefulGen RNG m where
--          ...
--  to:
--      instance (MonadIO m) => StatefulGen RNG (RandomT m) where
--          uniformWord32 :: RNG -> RandomT m Word32
--          uniformWord32 rng = packIntegral <$> getRandomBytesRNG 4 rng
-- Eg, something like:
{-
newtype WrappedMonadRandomIO m a = WrapMonadRandomIO { unwrapMonadRandomIO :: m a }
    deriving newtype (Functor, Applicative, Monad, MonadIO)

instance (Monad m, MonadRandomIO m) => StatefulGen RNG (WrappedMonadRandomIO m) where
    uniformWord32 rng = packIntegral <$> getRandomBytesRNG 4 rng

instance (Monad m,  MonadRandomIO m) => MonadRandomIO (WrappedMonadRandomIO m) where
    getRNG = WrapMonadRandomIO getRNG
-}

#endif

{- |
Initialize a random number generator object

NOTE: This is not `Botan.Low.RNG.newRNG`
-}
newRNG :: (MonadIO m) => RNGType -> m RNG
newRNG rngtyp = liftIO $ Low.rngInit (rngName rngtyp)
-- Maybe rename initRNG

-- | The `System_RNG` generator
systemRNG :: RNG
systemRNG = unsafePerformIO $ newRNG System
{-# NOINLINE systemRNG #-}

-- | Get random bytes from a random number generator
getRandomBytesRNG
    :: (MonadIO m)
    => Int              -- ^ n number of bytes
    -> RNG              -- ^ rng random generator
    -> m ByteString     -- ^ A random bytestring of length n
getRandomBytesRNG n rng = liftIO $ Low.rngGet rng n

{- |
Get random bytes from a random number generator, unsafely.

This uses `unsafePerformIO`, and thus requires caution.
-}
unsafeGetRandomBytesRNG
    :: Int          -- ^ n number of bytes
    -> RNG          -- ^ rng random generator
    -> ByteString   -- ^ A random bytestring of length n
unsafeGetRandomBytesRNG n rng = unsafePerformIO $ getRandomBytesRNG n rng
{-# NOINLINE unsafeGetRandomBytesRNG #-}


-- | Get random bytes from system random number generator
getSystemRandomBytes
    :: (MonadIO m)
    => Int              -- ^ n number of bytes
     -> m ByteString    -- ^ A random bytestring of length n
getSystemRandomBytes = liftIO . Low.systemRNGGet

{- |
Reseed a random number generator.

Uses the System_RNG as a seed generator.
-}
reseedRNG
    :: (MonadIO m)
    => Int      -- ^ n number of bits
    -> RNG      -- ^ rng random generator
    -> m ()
reseedRNG n rng = liftIO $ Low.rngReseed rng n

{- |
Reseed a random number generator using another generator.

NOTE: The arguments are in a different order than Botan.Low.RNG.rngReseedFromRNG
-}
reseedRNGFrom
    :: (MonadIO m)
    => Int      -- ^ n
    -> RNG      -- ^ src
    -> RNG      -- ^ rng
    -> m ()
reseedRNGFrom n src rng = liftIO $ Low.rngReseedFromRNG rng src n

-- | Add some seed material to a random number generator
addEntropyRNG
    :: (MonadIO m)
    => ByteString
    -> RNG
    -> m ()
addEntropyRNG entropy gen = liftIO $ Low.rngAddEntropy gen entropy

-- newtype Random a = Random { unRandom :: RNG -> (# RNG, a #) }

-- NOTE: MonadRandom and RandomT might be ill-advised terminology.
-- What about MonadSample and SampleT for values that sample random distributions
-- that may or may not be uniform

-- | A typeclass for any monad that has access to a hidden `RNG` context
class MonadIO m => MonadRandomIO m where

    {- |
    Access the hidden `RNG` context

    This can be used to turn any direct `RNG` function into a `MonadRandomIO` function

    > getRandomBytes :: MonadRandomIO m => Int -> m ByteString
    > getRandomBytes n = getRNG >>= getRandomBytesRNG n
    -}
    getRNG :: m RNG

-- | Random generator monad transformer
type RandomT m = ReaderT RNG m
-- TODO: Turn RandomT into a newtype?
{-
newtype RandomT m a = MkRandomT { unRandomT :: ReaderT RNG m a }
-}

instance MonadRandomIO IO where
    getRNG = return systemRNG

instance (MonadIO m) => MonadRandomIO (ReaderT RNG m) where
    getRNG = ask

-- | Runs a `MonadRandomIO` action in `MonadIO` using the specified generator.
runRandomT :: RandomT m a -> RNG -> m a
runRandomT = runReaderT

-- | Random generator monad
type RandomIO = ReaderT RNG IO

-- | Runs a `RandomIO` action in `IO` using the specified generator.
runRandomIO :: RandomIO a -> RNG -> IO a
runRandomIO = runRandomT

-- | Get random bytes from the current random number generator
getRandomBytes :: MonadRandomIO m => Int -> m ByteString
getRandomBytes n = getRNG >>= getRandomBytesRNG n

{- |
Reseed the current random number generator.

Uses the System_RNG as a seed generator.
-}
reseed :: MonadRandomIO m => Int -> m ()
reseed n = getRNG >>= reseedRNG n

-- | Reseed the current random number generator using another generator.
reseedFrom
    :: (MonadRandomIO m)
    => Int      -- ^ n number of bits
    -> RNG      -- ^ src
    -> m ()
reseedFrom n src = getRNG >>= reseedRNGFrom n src

-- | Add some seed material to the current random number generator
addEntropy
    :: (MonadRandomIO m)
    => ByteString   -- ^ entropy
    -> m ()
addEntropy entropy = getRNG >>= addEntropyRNG entropy
