module Botan.Hash where

import Prelude

import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString

import Data.Word

import System.IO
import System.IO.Unsafe

import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable

import Botan.Error
import Botan.Make
import Botan.Prelude

import GHC.Stack

-- NOTE: Noticed that "MD5" is not supported / was not built into this release of botan?
--  This may require conditional compilation checks or something.

-- /*
-- * Hash type
-- */
-- typedef struct botan_hash_struct* botan_hash_t;

data HashStruct
type HashPtr = Ptr HashStruct

newtype Hash = MkHash { getHashForeignPtr :: ForeignPtr HashStruct }

withHashPtr :: Hash -> (HashPtr -> IO a) -> IO a
withHashPtr = withForeignPtr . getHashForeignPtr

-- /**
-- * Initialize a hash function object
-- * @param hash hash object
-- * @param hash_name name of the hash function, e.g., "SHA-384"
-- * @param flags should be 0 in current API revision, all other uses are reserved
-- *       and return BOTAN_FFI_ERROR_BAD_FLAG
-- */
-- BOTAN_FFI_EXPORT(2, 0) int botan_hash_init(botan_hash_t* hash, const char* hash_name, uint32_t flags);
foreign import ccall unsafe botan_hash_init :: Ptr HashPtr -> Ptr CChar -> Word32 -> IO BotanErrorCode

hashInit :: ByteString -> IO Hash
hashInit name = mkInit_name_flags MkHash botan_hash_init botan_hash_destroy name 0

withHash :: ByteString -> (Hash -> IO a) -> IO a
withHash = mkWithTemp1 hashInit hashDestroy

-- /**
-- * Frees all resources of the hash object
-- * @param hash hash object
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_FFI_EXPORT(2, 0) int botan_hash_destroy(botan_hash_t hash);
foreign import ccall unsafe "&botan_hash_destroy" botan_hash_destroy :: FinalizerPtr HashStruct

hashDestroy :: Hash -> IO ()
hashDestroy hash = finalizeForeignPtr (getHashForeignPtr hash)

-- /**
-- * Get the name of this hash function
-- * @param hash the object to read
-- * @param name output buffer
-- * @param name_len on input, the length of buffer, on success the number of bytes written
-- */
-- BOTAN_FFI_EXPORT(2, 8) int botan_hash_name(botan_hash_t hash, char* name, size_t* name_len);
foreign import ccall unsafe botan_hash_name :: HashPtr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

hashName :: Hash -> IO ByteString
hashName = mkGetName withHashPtr botan_hash_name

-- /**
-- * Copy the state of a hash function object
-- * @param dest destination hash object
-- * @param source source hash object
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_FFI_EXPORT(2, 2) int botan_hash_copy_state(botan_hash_t* dest, const botan_hash_t source);
foreign import ccall unsafe botan_hash_copy_state :: Ptr HashPtr -> HashPtr -> IO BotanErrorCode

-- NOTE: This does the correct thing - see C++ docs:
--  Return a newly allocated HashFunction object of the same type as this one,
--  whose internal state matches the current state of this.
hashCopyState :: Hash -> IO Hash
hashCopyState source = withHashPtr source $ \ sourcePtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_hash_copy_state outPtr sourcePtr
        out <- peek outPtr
        hashForeignPtr <- newForeignPtr botan_hash_destroy out
        return $ MkHash hashForeignPtr

-- /**
-- * Reinitializes the state of the hash computation. A hash can
-- * be computed (with update/final) immediately.
-- * @param hash hash object
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_FFI_EXPORT(2, 0) int botan_hash_clear(botan_hash_t hash);
foreign import ccall unsafe botan_hash_clear :: HashPtr -> IO BotanErrorCode

hashClear :: Hash -> IO ()
hashClear =  mkAction withHashPtr botan_hash_clear

-- /**
-- * Writes the block size of the hash function to *block_size
-- * @param hash hash object
-- * @param block_size output buffer to hold the hash function output length
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_FFI_EXPORT(2, 2) int botan_hash_block_size(botan_hash_t hash, size_t* block_size);
foreign import ccall unsafe botan_hash_block_size :: HashPtr -> Ptr CSize -> IO BotanErrorCode

hashBlockSize :: Hash -> IO Int
hashBlockSize = mkGetSize withHashPtr botan_hash_block_size

-- /**
-- * Writes the output length of the hash function to *output_length
-- * @param hash hash object
-- * @param output_length output buffer to hold the hash function output length
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_FFI_EXPORT(2, 0) int botan_hash_output_length(botan_hash_t hash, size_t* output_length);
foreign import ccall unsafe botan_hash_output_length :: HashPtr -> Ptr CSize -> IO BotanErrorCode

hashOutputLength :: Hash -> IO Int
hashOutputLength = mkGetSize withHashPtr botan_hash_output_length

-- /**
-- * Send more input to the hash function
-- * @param hash hash object
-- * @param in input buffer
-- * @param in_len number of bytes to read from the input buffer
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_FFI_EXPORT(2, 0) int botan_hash_update(botan_hash_t hash, const uint8_t* in, size_t in_len);
foreign import ccall unsafe botan_hash_update :: HashPtr -> Ptr Word8  -> CSize -> IO BotanErrorCode

hashUpdate :: Hash -> ByteString -> IO ()
hashUpdate = mkSetBytesLen withHashPtr botan_hash_update

-- /**
-- * Finalizes the hash computation and writes the output to
-- * out[0:botan_hash_output_length()] then reinitializes for computing
-- * another digest as if botan_hash_clear had been called.
-- * @param hash hash object
-- * @param out output buffer
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_FFI_EXPORT(2, 0) int botan_hash_final(botan_hash_t hash, uint8_t out[]);
foreign import ccall unsafe botan_hash_final :: HashPtr -> Ptr Word8 -> IO BotanErrorCode

hashFinal :: Hash -> IO ByteString
hashFinal hash = withHashPtr hash $ \ hashPtr -> do
    sz <- hashOutputLength hash
    allocBytes sz $ \ digestPtr -> do
        throwBotanIfNegative_ $ botan_hash_final hashPtr digestPtr

-- TODO: Higher-level interface, Digest type

hashWith :: ByteString -> ByteString -> ByteString
hashWith name bs = unsafePerformIO $ do
    h <- hashInit name
    hashUpdate h bs
    dg <- hashFinal h
    return dg

-- TODO: The version that uses type inference 
--  hash :: Hash ha => ByteString -> Digest ha
-- VS: The version that takes explicit parameters
--  hashWith :: HashAlg ha => Hash ha -> ByteString -> Digest ha
-- The former works well with type families, the latter with fundeps
