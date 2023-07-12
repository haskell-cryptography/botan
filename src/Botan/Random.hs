module Botan.Random where

import Prelude

import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString

import Data.Word

import System.IO

import Foreign.C.String
import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable

import Botan.Error
import Botan.Prelude

-- NOTE: Went with `Random` nomenclature rather than `RNG` because oof.

type OpaqueRandom = Ptr ()

newtype Random = Random { randomForeignPtr :: ForeignPtr OpaqueRandom }

-- /**
-- * Initialize a random number generator object
-- * @param rng rng object
-- * @param rng_type type of the rng, possible values:
-- *    "system": system Random
-- *    "user": userspace Random
-- *    "user-threadsafe": userspace Random, with internal locking
-- *    "rdrand": directly read RDRAND
-- * Set rng_type to null to let the library choose some default.
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_rng_init(botan_rng_t* rng, const char* rng_type);
foreign import ccall unsafe botan_rng_init :: Ptr OpaqueRandom -> Ptr CChar -> IO BotanErrorCode
-- NOTE: Inconsistincies in init process - other objects accept a ptr + len
--  I presume that it expects a null-terminated C-String.

-- TODO: int botan_rng_init_custom

-- /**
-- * Frees all resources of the random number generator object
-- * @param rng rng object
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_rng_destroy(botan_rng_t rng);
foreign import ccall "&botan_rng_destroy" botan_rng_destroy :: FunPtr (Ptr OpaqueRandom -> IO ())

randomInit :: IO Random
randomInit = randomInitWith Default

data RandomType
    = Default
    | System
    | User
    | UserThreadsafe
    | Rdrand    -- NOTE: gives -40 (NotImplementedException) on my machine
-- NOTE: NOT ACTUAL CONSTANTS
-- type RNGType = CString
-- pattern BOTAN_RNG_DEFAULT           = ??? :: RNGType -- NOTE: Would be null pointer
-- pattern BOTAN_RNG_SYSTEM            = "system" :: RNGType
-- pattern BOTAN_RNG_USER              = "user" :: RNGType
-- pattern BOTAN_RNG_USER_THREADSAFE   = "user-threadsafe" :: RNGType
-- pattern BOTAN_RNG_RDRAND            = "rdrand" :: RNGType

withRandomType :: RandomType -> (CString -> IO a) -> IO a
withRandomType System           = ByteString.useAsCString "system"
withRandomType User             = ByteString.useAsCString "user"
withRandomType UserThreadsafe   = ByteString.useAsCString "user-threadsafe"
withRandomType Rdrand           = ByteString.useAsCString "rdrand"
withRandomType _                = ($ nullPtr)

randomInitWith :: RandomType -> IO Random
randomInitWith randomType = do
    randomForeignPtr <- malloc >>= newForeignPtr botan_rng_destroy
    withForeignPtr randomForeignPtr $ \ randomPtr -> do
        withRandomType randomType $ \ randomTypePtr -> do
            throwBotanIfNegative_ $ botan_rng_init randomPtr randomTypePtr
    return $ Random randomForeignPtr

-- /**
-- * Get random bytes from a random number generator
-- * @param rng rng object
-- * @param out output buffer of size out_len
-- * @param out_len number of requested bytes
-- * @return 0 on success, negative on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_rng_get(botan_rng_t rng, uint8_t* out, size_t out_len);
foreign import ccall unsafe botan_rng_get :: OpaqueRandom -> Ptr Word8 -> CSize -> IO BotanErrorCode

randomGet :: Int -> Random -> IO ByteString
randomGet len (Random randomForeignPtr) = do
    withForeignPtr randomForeignPtr $ \ randomPtr -> do
        random <- peek randomPtr
        bytes <- allocBytes len $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_rng_get random bytesPtr (fromIntegral len)
        return bytes

-- /**
-- * Get random bytes from system random number generator
-- * @param out output buffer of size out_len
-- * @param out_len number of requested bytes
-- * @return 0 on success, negative on failure
-- */
-- BOTAN_PUBLIC_API(3,0) int botan_system_rng_get(uint8_t* out, size_t out_len);
foreign import ccall unsafe botan_system_rng_get :: Ptr Word8 -> CSize -> IO BotanErrorCode

systemRandomGet :: Int -> IO ByteString
systemRandomGet len = allocBytes len $ \ bytesPtr -> do
    throwBotanIfNegative_ $ botan_system_rng_get bytesPtr (fromIntegral len)

-- /**
-- * Reseed a random number generator
-- * Uses the System_RNG as a seed generator.
-- *
-- * @param rng rng object
-- * @param bits number of bits to reseed with
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_rng_reseed(botan_rng_t rng, size_t bits);
foreign import ccall unsafe botan_rng_reseed :: OpaqueRandom -> CSize -> IO BotanErrorCode

randomReseed :: Random -> Int -> IO ()
randomReseed (Random randomForeignPtr) bits = do
    withForeignPtr randomForeignPtr $ \ randomPtr -> do
        random <- peek randomPtr
        throwBotanIfNegative_ $ botan_rng_reseed random (fromIntegral bits)

-- /**
-- * Reseed a random number generator
-- *
-- * @param rng rng object
-- * @param source_rng the rng that will be read from
-- * @param bits number of bits to reseed with
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,8) int botan_rng_reseed_from_rng(botan_rng_t rng,
--                                                     botan_rng_t source_rng,
--                                                     size_t bits);
foreign import ccall unsafe botan_rng_reseed_from_rng :: OpaqueRandom -> OpaqueRandom -> CSize -> IO BotanErrorCode

randomReseedFromRandom :: Random -> Random -> Int -> IO ()
randomReseedFromRandom (Random randomForeignPtr) (Random srcForeignPtr) bits = do
    withForeignPtr randomForeignPtr $ \ randomPtr -> do
        random <- peek randomPtr
        withForeignPtr srcForeignPtr $ \ srcPtr -> do
            src <- peek srcPtr
            throwBotanIfNegative_ $ botan_rng_reseed_from_rng random src (fromIntegral bits)

-- /**
-- * Add some seed material to a random number generator
-- *
-- * @param rng rng object
-- * @param entropy the data to add
-- * @param entropy_len length of entropy buffer
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,8) int botan_rng_add_entropy(botan_rng_t rng,
--                                                 const uint8_t* entropy,
--                                                 size_t entropy_len);
foreign import ccall unsafe botan_rng_add_entropy :: OpaqueRandom -> Ptr Word8 -> CSize -> IO BotanErrorCode

randomAddEntropy :: Random -> ByteString -> IO ()
randomAddEntropy (Random randomForeignPtr) bytes = do
    withForeignPtr randomForeignPtr $ \ randomPtr -> do
        random <- peek randomPtr
        withBytes bytes $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_rng_add_entropy random bytesPtr (fromIntegral $ ByteString.length bytes)
