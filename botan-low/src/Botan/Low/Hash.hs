module Botan.Low.Hash where

import qualified Data.ByteString as ByteString

import System.IO.Unsafe

import Botan.Bindings.Hash

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

-- NOTE: Noticed that "MD5" is not supported / was not built into this release of botan?
--  This may require conditional compilation checks or something.

newtype Hash = MkHash { getHashForeignPtr :: ForeignPtr HashStruct }

withHashPtr :: Hash -> (HashPtr -> IO a) -> IO a
withHashPtr = withForeignPtr . getHashForeignPtr

hashInit :: ByteString -> IO Hash
hashInit name = mkInit_name_flags MkHash botan_hash_init botan_hash_destroy name 0

withHash :: ByteString -> (Hash -> IO a) -> IO a
withHash = mkWithTemp1 hashInit hashDestroy

hashDestroy :: Hash -> IO ()
hashDestroy hash = finalizeForeignPtr (getHashForeignPtr hash)

hashName :: Hash -> IO ByteString
hashName = mkGetName withHashPtr botan_hash_name

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

hashClear :: Hash -> IO ()
hashClear =  mkAction withHashPtr botan_hash_clear

hashBlockSize :: Hash -> IO Int
hashBlockSize = mkGetSize withHashPtr botan_hash_block_size

hashOutputLength :: Hash -> IO Int
hashOutputLength = mkGetSize withHashPtr botan_hash_output_length

hashUpdate :: Hash -> ByteString -> IO ()
hashUpdate = mkSetBytesLen withHashPtr botan_hash_update

hashFinal :: Hash -> IO ByteString
hashFinal hash = withHashPtr hash $ \ hashPtr -> do
    sz <- hashOutputLength hash
    allocBytes sz $ \ digestPtr -> do
        throwBotanIfNegative_ $ botan_hash_final hashPtr digestPtr
