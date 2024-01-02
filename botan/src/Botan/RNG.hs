{-# LANGUAGE KindSignatures #-}
module Botan.RNG where

import Data.Bifunctor

import qualified Data.ByteString as ByteString

import qualified Botan.Low.RNG as Low

import Botan.Prelude

-- Higher-level

data RNG
    = System
    | User
    | UserThreadsafe
    | RDRand

rngName :: RNG -> Low.RNGType
rngName System          = "system"          -- BOTAN_RANDOM_TYPE_SYSTEM
rngName User            = "user"            -- BOTAN_RANDOM_TYPE_USER
rngName UserThreadsafe  = "user-threadsafe" -- BOTAN_RANDOM_TYPE_USER_THREADSAFE
rngName RDRand          = "rdrand"          -- BOTAN_RANDOM_TYPE_RDRAND

rngCtxInitIO :: RNG -> IO Low.RNG
rngCtxInitIO rng = Low.rngInit (rngName rng)


-- Crypton-like interface, todo: move to crypto-schemes?

-- Better names:
-- class PseudoRandom prng where
--     generatePseudoRandomBytes :: Int -> prng -> (ByteString,prng)
-- class (Monad m) => MonadRandom m where
--     generateRandomBytes :: Int -> m ByteString
-- data PseudoRandomT prng (m :: * -> *) a
-- type PseudoRandomM prng = PseudoRandomT prng Identity
-- data RandomT (m :: * -> *) a
-- type RandomM = RandomT Identity


class PRNG prng  where

    generatePseudoRandomBytes :: Int -> prng -> (ByteString,prng)

-- TODO: Rename MonadRandom
class Monad m => MonadRNG m where

    generateRandomBytes :: Int -> m ByteString

instance MonadRNG IO where

    generateRandomBytes = Low.systemRNGGet

newtype MonadPRNG prng a = MkMonadPRNG (prng -> (a, prng))

runMonadPRNG :: MonadPRNG prng a -> prng -> (a, prng)
runMonadPRNG (MkMonadPRNG prng) = prng

instance PRNG prng => Functor (MonadPRNG prng) where
    
    fmap f fa = MkMonadPRNG (first f . runMonadPRNG fa)

instance PRNG prng => Applicative (MonadPRNG prng) where

    pure a = MkMonadPRNG (a,)

    mf <*> ma = MkMonadPRNG $ (\ (f,prng) -> first f $ runMonadPRNG ma prng) . runMonadPRNG mf

instance PRNG prng => Monad (MonadPRNG prng) where

    return = pure

    ma >>= mb = MkMonadPRNG $ (\ (a, prng) -> runMonadPRNG (mb a) prng) . runMonadPRNG ma

instance PRNG prng => MonadRNG (MonadPRNG prng) where

    generateRandomBytes = MkMonadPRNG . generatePseudoRandomBytes

withPRNG :: PRNG prng => prng -> MonadPRNG prng a -> (a, prng)
withPRNG gen m = runMonadPRNG m gen
