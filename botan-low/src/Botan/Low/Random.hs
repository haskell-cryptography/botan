module Botan.Low.Random where

import qualified Data.ByteString as ByteString

import Botan.Bindings.Random

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

-- NOTE: Went with `Random` nomenclature rather than `RNG` because oof.

-- TODO: Make this use the new `Botan.Make` functions

newtype Random = MkRandom { getRandomForeignPtr :: ForeignPtr RandomStruct }

withRandomPtr :: Random -> (RandomPtr -> IO a) -> IO a
withRandomPtr = withForeignPtr . getRandomForeignPtr

pattern System :: RandomType
pattern System = BOTAN_RANDOM_TYPE_SYSTEM

pattern User :: RandomType
pattern User = BOTAN_RANDOM_TYPE_USER

pattern UserThreadsafe :: RandomType
pattern UserThreadsafe = BOTAN_RANDOM_TYPE_USER_THREADSAFE

pattern RDRand :: RandomType
pattern RDRand = BOTAN_RANDOM_TYPE_RDRAND

randomInit :: RandomType -> IO Random
randomInit name = do
    alloca $ \ outPtr -> do
        asCString name $ \ namePtr -> do 
            throwBotanIfNegative_ $ botan_rng_init outPtr namePtr
        out <- peek outPtr
        macForeignPtr <- newForeignPtr botan_rng_destroy out
        return $ MkRandom macForeignPtr

withRandom :: RandomType -> (Random -> IO a) -> IO a
withRandom = mkWithTemp1 randomInit randomDestroy

randomDestroy :: Random -> IO ()
randomDestroy random = finalizeForeignPtr (getRandomForeignPtr random)

randomGet :: Int -> Random -> IO ByteString
randomGet len random = do
    withRandomPtr random $ \ randomPtr -> do
        allocBytes len $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_rng_get randomPtr bytesPtr (fromIntegral len)

systemRandomGet :: Int -> IO ByteString
systemRandomGet len = allocBytes len $ \ bytesPtr -> do
    throwBotanIfNegative_ $ botan_system_rng_get bytesPtr (fromIntegral len)

randomReseed :: Random -> Int -> IO ()
randomReseed random bits = do
    withRandomPtr random $ \ randomPtr -> do
        throwBotanIfNegative_ $ botan_rng_reseed randomPtr (fromIntegral bits)

randomReseedFromRandom :: Random -> Random -> Int -> IO ()
randomReseedFromRandom random source bits = do
    withRandomPtr random $ \ randomPtr -> do
        withRandomPtr source $ \ sourcePtr -> do
            throwBotanIfNegative_ $ botan_rng_reseed_from_rng randomPtr sourcePtr (fromIntegral bits)

randomAddEntropy :: Random -> ByteString -> IO ()
randomAddEntropy random bytes = do
    withRandomPtr random $ \ randomPtr -> do
        asBytesLen bytes $ \ bytesPtr bytesLen -> do
            throwBotanIfNegative_ $ botan_rng_add_entropy randomPtr bytesPtr bytesLen
