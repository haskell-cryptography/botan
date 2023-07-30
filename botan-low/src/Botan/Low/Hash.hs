{-|
Module      : Botan.Low.Hash
Description : Hash Functions and Checksums
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

Hash functions are one-way functions, which map data of arbitrary size
to a fixed output length. Most of the hash functions in Botan are designed
to be cryptographically secure, which means that it is computationally
infeasible to create a collision (finding two inputs with the same hash)
or preimages (given a hash output, generating an arbitrary input with the
same hash). But note that not all such hash functions meet their goals,
in particular MD4 and MD5 are trivially broken. However they are still
included due to their wide adoption in various protocols.

Using a hash function is typically split into three stages: initialization,
update, and finalization (often referred to as a IUF interface). The
initialization stage is implicit: after creating a hash function object,
it is ready to process data. Then update is called one or more times.
Calling update several times is equivalent to calling it once with all of
the arguments concatenated. After completing a hash computation (eg using
hashFinal), the internal state is reset to begin hashing a new message.
-}

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
