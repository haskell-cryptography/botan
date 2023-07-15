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

data HashStruct
type HashPtr = Ptr HashStruct

newtype Hash = MkHash { getHashForeignPtr :: ForeignPtr HashStruct }

withHashPtr :: Hash -> (HashPtr -> IO a) -> IO a
withHashPtr = withForeignPtr . getHashForeignPtr

foreign import ccall unsafe botan_hash_init :: Ptr HashPtr -> Ptr CChar -> Word32 -> IO BotanErrorCode
foreign import ccall unsafe "&botan_hash_destroy" botan_hash_destroy :: FinalizerPtr HashStruct

-- TODO: Discuss naming, eg init vs hashInit
--  It depends on whether we intend qualified import or not
-- TODO: ByteString vs Text
hashInitName :: ByteString -> IO Hash
hashInitName name = mkInit_name_flags MkHash botan_hash_init botan_hash_destroy name 0

foreign import ccall unsafe botan_hash_name :: HashPtr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

-- TODO: hashNameByteString vs hashNameText
hashName :: Hash -> IO ByteString
hashName = mkGetName withHashPtr botan_hash_name

-- int botan_hash_copy_state(botan_hash_t *dest, const botan_hash_t source)
foreign import ccall unsafe botan_hash_copy_state :: Ptr HashPtr -> HashPtr -> IO BotanErrorCode

-- TODO: This is more akin to a hashCopy / hashDuplicate, rather than hashCopyState.
--  It does not copy state from one hash to another, it generates a new one.
hashCopyState :: Hash -> IO Hash
hashCopyState source = withHashPtr source $ \ sourcePtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_hash_copy_state outPtr sourcePtr
        out <- peek outPtr
        hashForeignPtr <- newForeignPtr botan_hash_destroy out
        return $ MkHash hashForeignPtr


-- int botan_hash_clear(botan_hash_t hash)
foreign import ccall unsafe botan_hash_clear :: HashPtr -> IO BotanErrorCode

hashClear :: Hash -> IO ()
hashClear =  mkAction withHashPtr botan_hash_clear

-- int botan_hash_block_size(botan_hash_t hash, size_t* block_size);
foreign import ccall unsafe botan_hash_block_size :: HashPtr -> Ptr CSize -> IO BotanErrorCode

hashBlockSize :: Hash -> IO Int
hashBlockSize = mkGetSize withHashPtr botan_hash_block_size

foreign import ccall unsafe botan_hash_output_length :: HashPtr -> Ptr CSize -> IO BotanErrorCode

hashOutputLength :: Hash -> IO Int
hashOutputLength = mkGetSize withHashPtr botan_hash_output_length

-- int botan_hash_update(botan_hash_t hash, const uint8_t *input, size_t len)
foreign import ccall unsafe botan_hash_update :: HashPtr -> Ptr Word8  -> CSize -> IO BotanErrorCode

hashUpdate :: Hash -> ByteString -> IO ()
hashUpdate = mkSetBytesLen withHashPtr botan_hash_update

-- int botan_hash_final(botan_hash_t hash, uint8_t out[])
foreign import ccall unsafe botan_hash_final :: HashPtr -> Ptr Word8 -> IO BotanErrorCode

-- TODO: Digest type
hashFinal :: Hash -> IO ByteString
hashFinal hash = withHashPtr hash $ \ hashPtr -> do
    sz <- hashOutputLength hash
    allocBytes sz $ \ digestPtr -> do
        throwBotanIfNegative_ $ botan_hash_final hashPtr digestPtr

hashWith :: ByteString -> ByteString -> ByteString
hashWith name bs = unsafePerformIO $ do
    h <- hashInitName name
    hashUpdate h bs
    dg <- hashFinal h
    return dg

-- TODO: The version that uses type inference 
--  hash :: Hash ha => ByteString -> Digest ha
-- VS: The version that takes explicit parameters
--  hashWith :: HashAlg ha => Hash ha -> ByteString -> Digest ha
-- The former works well with type families, the latter with fundeps
