{-|
Module      : Botan.Low.RNG
Description : Random number generators
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.RNG where

import qualified Data.ByteString as ByteString

import Botan.Bindings.RNG

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Remake
import Botan.Low.Prelude

-- NOTE: Does not take advantage of Remake
-- NOTE: Uses ConstPtr / unConstPtr manually
-- TODO: Take advantage of Remake / better peek / (peekConst or constPeek) functions

newtype RNG = MkRNG { getRNGForeignPtr :: ForeignPtr BotanRNGStruct }

newRNG      :: BotanRNG -> IO RNG
withRNG     :: RNG -> (BotanRNG -> IO a) -> IO a
-- | Destroy a random number generator object immediately
rngDestroy  :: RNG -> IO ()
createRNG   :: (Ptr BotanRNG -> IO CInt) -> IO RNG
(newRNG, withRNG, rngDestroy, createRNG, _)
    = mkBindings MkBotanRNG runBotanRNG MkRNG getRNGForeignPtr botan_rng_destroy

type RNGType = ByteString

pattern SystemRNG           -- ^ system RNG
    ,   UserRNG             -- ^ userspace RNG
    ,   UserThreadsafeRNG   -- ^ userspace RNG, with internal locking
    ,   RDRandRNG           -- ^ directly read RDRAND
    ::  RNGType
pattern SystemRNG           = BOTAN_RNG_TYPE_SYSTEM
pattern UserRNG             = BOTAN_RNG_TYPE_USER
pattern UserThreadsafeRNG   = BOTAN_RNG_TYPE_USER_THREADSAFE
pattern RDRandRNG           = BOTAN_RNG_TYPE_RDRAND

rngInit :: RNGType -> IO RNG
rngInit = mkCreateObjectCString createRNG botan_rng_init

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withRNGInit :: RNGType -> (RNG -> IO a) -> IO a
withRNGInit = mkWithTemp1 rngInit rngDestroy

rngGet :: RNG -> Int -> IO ByteString
rngGet rng len = withRNG rng $ \ botanRNG -> do
    allocBytes len $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_rng_get botanRNG bytesPtr (fromIntegral len)

systemRNGGet :: Int -> IO ByteString
systemRNGGet len = allocBytes len $ \ bytesPtr -> do
    throwBotanIfNegative_ $ botan_system_rng_get bytesPtr (fromIntegral len)

rngReseed :: RNG -> Int -> IO ()
rngReseed rng bits = withRNG rng $ \ botanRNG -> do
    throwBotanIfNegative_ $ botan_rng_reseed botanRNG (fromIntegral bits)

rngReseedFromRNG :: RNG -> RNG -> Int -> IO ()
rngReseedFromRNG rng source bits = withRNG rng $ \ botanRNG -> do
    withRNG source $ \ sourcePtr -> do
        throwBotanIfNegative_ $ botan_rng_reseed_from_rng botanRNG sourcePtr (fromIntegral bits)

rngAddEntropy :: RNG -> ByteString -> IO ()
rngAddEntropy rng bytes = withRNG rng $ \ botanRNG -> do
    asBytesLen bytes $ \ bytesPtr bytesLen -> do
        throwBotanIfNegative_ $ botan_rng_add_entropy botanRNG (ConstPtr bytesPtr) bytesLen
