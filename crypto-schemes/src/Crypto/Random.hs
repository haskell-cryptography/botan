{-# LANGUAGE InstanceSigs #-}
module Crypto.Random where

import Data.Bifunctor
import Data.Functor.Identity

import Crypto.Prelude

class PseudoRandom gen where
    generatePseudoRandomBytes :: Int -> gen -> (ByteString,gen)

-- class (PseudoRandom gen) => DeterministicRandom gen where
--     splitPseudoRandom :: gen -> (gen,gen)

class (Monad m) => MonadRandom m where
    generateRandomBytesM :: Int -> m ByteString

class (Monad m, PseudoRandom gen) => MonadPseudoRandom gen m where
    generatePseudoRandomBytesM :: Int -> gen -> m (ByteString,gen)
    generatePseudoRandomBytesM count gen = return $! generatePseudoRandomBytes count gen

-- NOTE: Simple copy of StateT, could just do
-- newtype PseudoRandomT gen (m :: * -> *) a = MkPseudoRandomT (StateT gen m a)
-- For now, we have this:
newtype PseudoRandomT gen (m :: * -> *) a = MkPseudoRandomT (gen -> m (a, gen))

runPseudoRandomT :: PseudoRandomT gen m a -> gen -> m (a, gen)
runPseudoRandomT (MkPseudoRandomT m) = m

withPseudoRandomT :: gen -> PseudoRandomT gen m a -> m (a, gen)
withPseudoRandomT = flip runPseudoRandomT

instance (Functor f, PseudoRandom gen) => Functor (PseudoRandomT gen f) where
    
    fmap :: (Functor f, PseudoRandom gen) => (a -> b) -> PseudoRandomT gen f a -> PseudoRandomT gen f b
    fmap f pa = MkPseudoRandomT (fmap (first f) . runPseudoRandomT pa)

instance (Monad m, PseudoRandom gen) => Applicative (PseudoRandomT gen m) where

    pure a = MkPseudoRandomT $ \ gen -> pure (a,gen)

    MkPseudoRandomT mf <*> MkPseudoRandomT ma = MkPseudoRandomT $ \ gen -> do
        (f, gen') <- mf gen
        (a, gen'') <- ma gen'
        return (f a, gen'')

instance (Monad m, PseudoRandom gen) => Monad (PseudoRandomT gen m) where

    return = pure

    ma >>= mb  = MkPseudoRandomT $ \ gen -> do
        (a, gen') <- runPseudoRandomT ma gen
        runPseudoRandomT (mb a) gen'

-- PseudoRandom Identity monad

type PseudoRandomM gen = PseudoRandomT gen Identity

runPseudoRandomM :: PseudoRandomM gen a -> gen -> (a, gen)
runPseudoRandomM (MkPseudoRandomT m) gen = runIdentity $ m gen

withPseudoRandomM :: gen -> PseudoRandomM gen a -> (a, gen)
withPseudoRandomM = flip runPseudoRandomM 

-- data RandomT (m :: * -> *) a

-- type RandomM = RandomT Identity

--