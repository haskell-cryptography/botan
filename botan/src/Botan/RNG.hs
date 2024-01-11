{-|
Module      : Botan.RNG
Description : Random number generators
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

A module for the common task of random number generation.
-}

{-# LANGUAGE    KindSignatures
            ,   RankNTypes
            ,   TypeSynonymInstances
            ,   FlexibleInstances
            ,   MagicHash
            ,   TypeFamilies
            ,   MultiParamTypeClasses
            ,   CPP
            ,   DerivingStrategies
            ,   FunctionalDependencies
#-}

module Botan.RNG
( 

-- * Random Number Generators
-- $introduction

-- * Usage
-- $usage

-- * The RNG data type
  RNG(..)

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
, RandomIO(..)
, runRandomIO

-- * RandomT monad transformer
, RandomT(..)
, runRandomT

) where

import Control.Concurrent.MVar

import Data.Bifunctor
import Data.Tuple

import qualified Data.ByteString as ByteString

import qualified Botan.Low.RNG as Low

import Control.Monad.Reader

import Botan.Prelude

import System.Random.Stateful

{- $introduction

Random number generators (RNG) are applicable to a wide variety of fields, including cryptography
and statistics. They tend to come in two basic varieties: /"true"/ random generators (TRNG) that
obtain entropy by measuring some physical random process, and /pseudo-/ random generators (PRNG)
that produce long sequences of unpredictable values based on permutations of a much shorter
initial key.

Most practical systems take a hybrid approach that involves reseeding a cryptographically
secure pseudo-random generator (CSPRNG) periodically from some a source of true entropy, which
is the approach that this library takes.

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
    deriving (Eq, Show)

type RNGName = Low.RNGType

rngName :: RNGType -> RNGName
rngName System            = Low.SystemRNG
rngName Autoseeded        = Low.UserRNG
rngName RDRand            = Low.RDRandRNG

{- |
The random number generator context.

NOTE: This data type is an instance of `System.Random.Stateful.Stateful`
-}
type RNG = Low.RNG

#if defined(HS_BOTAN_HAS_RANDOM)

instance (MonadIO m) => StatefulGen RNG m where

    -- NOTE: Going through ByteString first is inefficient
    uniformWord32 :: RNG -> m Word32
    uniformWord32 rng = packIntegral <$> getRandomBytesRNG 4 rng

packIntegral :: (Bits i, Integral i) => ByteString -> i
packIntegral = ByteString.foldl packIntegralWord 0

packIntegralWord :: (Bits i, Integral i, FiniteBits w, Integral w) => i -> w -> i
packIntegralWord i w = shiftL i (finiteBitSize w) .|. fromIntegral w

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
runRandomT :: (MonadIO m) => RandomT m a -> RNG -> m a
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

--
-- We can make RNG conform to the experimental typeclasses
--

instance RNG' RNG where

    generateRandomBytes' :: Int -> RNG -> IO ByteString
    generateRandomBytes' = getRandomBytesRNG

    addEntropyRNG' :: ByteString -> RNG -> IO ()
    addEntropyRNG' = addEntropyRNG

--
-- EXPERIMENTS TO BE MOVED TO CRYPTO-SCHEMES
--

-- TODO: More stringently define difference between:
--      - seeding (initializing or setting the RNG to a specific state)
--      - reseeding (adding entropy that gets mixed with the curent state)
-- NOTE: NIST DRBG standards support this use of terminology
--  https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-90Ar1.pdf
--  - Seed = "Verb: To acquire bits with sufficient entropy for the desired security strength. 
--    These bits will be used as input to a DRBG mechanism to determine a portion of the initial internal state."
--  - Reseed = "Verb: To acquire additional bits that will affect the internal state of the DRBG mechanism."

-- NOTE: RNG' and PRNG' are almost, but not exactly, equivalent to System.Random and System.Random.Stateful
-- PRNG' and RandomGen are equivalent aside from split, and RNG' matches StatefulGen (and Botan.Low.RNG.RNG
-- also can be an instance of both RNG' and StatefulGen)
-- However, RNG' is explicitly IO (for better or worse), and / as it is intended to represent TRNGs
-- To counter, RNG' partly has an IO constraint because of Botan.Low.RNG.RNG, and I do
-- understand the use intent of the m in Stateful g m as it allows you to swap between
-- IO and ST (and MonadIO)
-- They could be aligned more completely a la `class RNG' gen m where` to match StatefulGen
-- but I'd also like to keep the implications of (T)RNG' vs PRNG', and especially with
-- CSPRNG' specifically implying 'a PRNG indistinguishable from (T)RNG'
-- LATER: We can keep the T implication if we "require" that the RNG pass tests for uniform
-- distribution; otherwise we should reduce RNG from True TRNG to one that is explicitly
-- Unknown URNG - a slightly more relaxed constraint than true entropy. Note that
-- it is *not* 'stateful', it could be true random, *we're not supposed to be able to tell*.
-- Both System.Random and System.Random.Stateful are still both quite explicitly about PRNG,
-- and they even state it everywhere. We want to disambiguate RNG-in-general from specifically
-- PRNG or TRNG.
-- MINOR NOTE: If we reduce RNG from TRNG to URNG, we should also acknowledge that true random
-- is unaffected by reseeding, and so that anything that can be reseeded is also at least URNG
-- if not PRNG. This is a question of chaos vs random - chaos can be affected / reseeded but
-- still not predicted.

-- RandomGenerator
class RNG' gen where

    -- generateRandomWord8 :: gen -> IO Word8
    -- generateRandomWord16 :: gen -> IO Word16
    -- generateRandomWord32 :: gen -> IO Word32
    -- generateRandomWord64 :: gen -> IO Word64
    -- generateRandomShortByteString :: gen -> IO ShortByteString

    generateRandomBytes' :: Int -> gen -> IO ByteString

-- class RNG' gen => EntropyPool' gen where

    addEntropyRNG' :: ByteString -> gen -> IO ()

    -- Convenience

    -- NOTE: Omitted:
    -- addSystemEntropy' :: Int -> gen -> IO ()
    -- addSystemEntropy' n = addRandomEntropy' n systemRNG'

    addRandomEntropy'        :: (RNG' seed) => Int -> seed -> gen -> IO ()
    addRandomEntropy' nbytes seed gen = do
        entropy <- generateRandomBytes' nbytes seed
        addEntropyRNG' entropy gen

    addPseudoRandomEntropy'  :: (PRNG' seed) => Int -> seed -> gen -> IO seed
    addPseudoRandomEntropy' nbytes seed gen = do
        addEntropyRNG' entropy gen
        return seed'
        where
            (entropy, seed') = generatePseudoRandomBytes' nbytes seed


-- PseudoRandomGenerator
-- NOTE: Where possible, prefer `gen -> (a, gen)` as with MonadState `s -> (a, s)`
class PRNG' gen where

    generatePseudoRandomBytes'   :: Int -> gen -> (ByteString, gen) 

-- class PRNG' gen => Reseedable' gen where

    reseedEntropy'               :: ByteString -> gen -> gen

    -- Convenience

    -- NOTE: Omitted:
    -- reseedSystem'                :: Int -> gen -> IO gen
    -- reseedSystem' n = reseedRandom' n systemRNG'

    reseedRandom'                :: (RNG' seed) => Int -> seed -> gen -> IO gen
    reseedRandom' nbytes seed gen = do
        entropy <- generateRandomBytes' nbytes seed
        return (reseedEntropy' entropy gen)

    reseedPseudoRandom'          :: (PRNG' seed) => Int -> seed -> gen -> (seed, gen)
    reseedPseudoRandom' nbytes seed gen = (seed', gen') where
        (entropy, seed') = generatePseudoRandomBytes' nbytes seed
        gen'             = reseedEntropy' entropy gen

-- AsRandomGenerator
newtype CSPRNG' gen
    = MkCSPRNG' 
    -- { runCSPRNG' :: PRNG' gen => MVar gen
    { runCSPRNG' :: MVar gen
    }

modifyCSPRNG' :: CSPRNG' gen -> (gen -> IO (gen, a)) -> IO a
modifyCSPRNG' (MkCSPRNG' mgen) = modifyMVar mgen

modifyCSPRNG_' :: CSPRNG' gen -> (gen -> IO gen) -> IO ()
modifyCSPRNG_' (MkCSPRNG' mgen) = modifyMVar_ mgen

instance (PRNG' gen) => RNG' (CSPRNG' gen) where

    generateRandomBytes' :: Int -> CSPRNG' gen -> IO ByteString
    generateRandomBytes' nbytes csprng = modifyCSPRNG' csprng $ \ gen -> do
        return $ swap $ generatePseudoRandomBytes' nbytes gen

    addEntropyRNG' :: ByteString -> CSPRNG' gen -> IO ()
    addEntropyRNG' entropy csprng = modifyCSPRNG_' csprng $ \ gen -> do
        return (reseedEntropy' entropy gen)

-- NOTE: System.Random.Stateful uses a typeclass to represent 'frozen' PRNG
-- with an associated data type pointing back to the original.
-- Notably, it uses fundeps in the associated type,
{-
class StatefulGen (MutableGen f m) m => FrozenGen f m where
    type MutableGen f m = (g :: Type) | g -> f
    freezeGen :: MutableGen f m -> m f
    thawGen :: f -> m (MutableGen f m)
-}

class PRNG' gen => Seedable' gen where

    type Seed' gen

    -- Seed the state of an existing generator
    seed :: Seed' gen -> gen -> gen

    freezeSeed :: gen -> Seed' gen

    thawSeed :: Seed' gen -> gen

-- TODO: NIST DRBG standards
--  https://github.com/ANSSI-FR/libdrbg
--  https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-90Ar1.pdf
-- The three NIST SP 800-90A DRBG mechanisms
-- NOTE: NIST terminology:
--  - DRGB = Deterministic Random Bit Generator = PRNG
--  - NRGB = Non-deterministic Random Bit Generator = (True) RNG
{-
data HashType
data BlockCipherType

data HashDerivationFunction

data HashDRBG = MkHashDRBG
    { hashDRBGValue     :: ByteString       -- ^ v
    , hashDRBGConstant  :: ByteString       -- ^ c
    -- Administrative
    , hashDRBGSeedLen               :: Int  -- ^ seedlen
    , hashDRBGSecurityStrength      :: Int  -- ^ security_strength
    , hashDRBGPredictionResistant   :: Bool -- ^ prediction_resistance_flag
    }

hashDRBGInstantiate :: Int -> Bool -> ByteString -> HashDRBG
hashDRBGInstantiate requestedStrength predictionResistant personalizationString = undefined
-}
