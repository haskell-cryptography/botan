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

module Botan.Low.Hash
( HashCtx(..)
, HashName(..)
, HashDigest(..)
, withHashPtr
, hashInit
, withHashInit
, hashDestroy
, hashName
, hashCopyState
, hashClear
, hashBlockSize
, hashOutputLength
, hashUpdate
, hashFinal
, hashUpdateFinalize
, hashUpdateFinalizeClear
, hashWithHashCtx
, hashWithName
) where

import qualified Data.ByteString as ByteString

import System.IO.Unsafe

import Botan.Bindings.Hash

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

newtype HashCtx = MkHashCtx { getHashForeignPtr :: ForeignPtr HashStruct }

type HashName = ByteString
type HashDigest = ByteString

withHashPtr :: HashCtx -> (HashPtr -> IO a) -> IO a
withHashPtr = withForeignPtr . getHashForeignPtr

hashInit :: HashName -> IO HashCtx
hashInit name = mkInit_name_flags MkHashCtx botan_hash_init botan_hash_destroy name 0

withHashInit :: HashName -> (HashCtx -> IO a) -> IO a
withHashInit = mkWithTemp1 hashInit hashDestroy

hashDestroy :: HashCtx -> IO ()
hashDestroy hash = finalizeForeignPtr (getHashForeignPtr hash)

hashName :: HashCtx -> IO HashDigest
hashName = mkGetCString withHashPtr botan_hash_name

-- NOTE: This does the correct thing - see C++ docs:
--  Return a newly allocated HashFunction object of the same type as this one,
--  whose internal state matches the current state of this.
hashCopyState :: HashCtx -> IO HashCtx
hashCopyState source = withHashPtr source $ \ sourcePtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_hash_copy_state outPtr sourcePtr
        out <- peek outPtr
        hashForeignPtr <- newForeignPtr botan_hash_destroy out
        return $ MkHashCtx hashForeignPtr

hashClear :: HashCtx -> IO ()
hashClear =  mkAction withHashPtr botan_hash_clear

hashBlockSize :: HashCtx -> IO Int
hashBlockSize = mkGetSize withHashPtr botan_hash_block_size

hashOutputLength :: HashCtx -> IO Int
hashOutputLength = mkGetSize withHashPtr botan_hash_output_length

hashUpdate :: HashCtx -> ByteString -> IO ()
hashUpdate = mkSetBytesLen withHashPtr botan_hash_update

hashFinal :: HashCtx -> IO HashDigest
hashFinal hash = withHashPtr hash $ \ hashPtr -> do
    sz <- hashOutputLength hash
    allocBytes sz $ \ digestPtr -> do
        throwBotanIfNegative_ $ botan_hash_final hashPtr digestPtr

-- Convenience

hashUpdateFinalize :: HashCtx -> ByteString -> IO HashDigest
hashUpdateFinalize ctx bytes = do
    hashUpdate ctx bytes
    hashFinal ctx

hashUpdateFinalizeClear :: HashCtx -> ByteString -> IO HashDigest
hashUpdateFinalizeClear ctx bytes = do
    dg <- hashUpdateFinalize ctx bytes
    hashClear ctx
    return dg
-- Or: hashUpdateFinalize ctx bytes <* hashClear ctx

hashWithHashCtx :: HashCtx -> ByteString -> IO HashDigest
hashWithHashCtx = hashUpdateFinalizeClear

hashWithName :: HashName -> ByteString -> IO HashDigest
hashWithName name bytes = do
    ctx <- hashInit name
    hashWithHashCtx ctx bytes
