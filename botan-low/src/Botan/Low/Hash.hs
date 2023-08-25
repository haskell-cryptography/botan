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
, hashCtxInitNameIO
, withHashCtxInitNameIO
, hashCtxDestroyIO
, hashCtxNameIO
, hashCtxCopyStateIO
, hashCtxClearIO
, hashCtxBlockSizeIO
, hashCtxOutputLengthIO
, hashCtxUpdateIO
, hashCtxFinalIO
, hashCtxUpdateFinalizeIO
, hashCtxUpdateFinalizeClearIO
, hashWithHashCtxIO
, hashWithNameIO
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

hashCtxInitNameIO :: HashName -> IO HashCtx
hashCtxInitNameIO name = mkInit_name_flags MkHashCtx botan_hash_init botan_hash_destroy name 0

withHashCtxInitNameIO :: HashName -> (HashCtx -> IO a) -> IO a
withHashCtxInitNameIO = mkWithTemp1 hashCtxInitNameIO hashCtxDestroyIO

hashCtxDestroyIO :: HashCtx -> IO ()
hashCtxDestroyIO hash = finalizeForeignPtr (getHashForeignPtr hash)

hashCtxNameIO :: HashCtx -> IO HashDigest
hashCtxNameIO = mkGetCString withHashPtr botan_hash_name

-- NOTE: This does the correct thing - see C++ docs:
--  Return a newly allocated HashFunction object of the same type as this one,
--  whose internal state matches the current state of this.
hashCtxCopyStateIO :: HashCtx -> IO HashCtx
hashCtxCopyStateIO source = withHashPtr source $ \ sourcePtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_hash_copy_state outPtr sourcePtr
        out <- peek outPtr
        hashForeignPtr <- newForeignPtr botan_hash_destroy out
        return $ MkHashCtx hashForeignPtr

hashCtxClearIO :: HashCtx -> IO ()
hashCtxClearIO =  mkAction withHashPtr botan_hash_clear

hashCtxBlockSizeIO :: HashCtx -> IO Int
hashCtxBlockSizeIO = mkGetSize withHashPtr botan_hash_block_size

hashCtxOutputLengthIO :: HashCtx -> IO Int
hashCtxOutputLengthIO = mkGetSize withHashPtr botan_hash_output_length

hashCtxUpdateIO :: HashCtx -> ByteString -> IO ()
hashCtxUpdateIO = mkSetBytesLen withHashPtr botan_hash_update

hashCtxFinalIO :: HashCtx -> IO HashDigest
hashCtxFinalIO hash = withHashPtr hash $ \ hashPtr -> do
    sz <- hashCtxOutputLengthIO hash
    allocBytes sz $ \ digestPtr -> do
        throwBotanIfNegative_ $ botan_hash_final hashPtr digestPtr

-- Convenience

hashCtxUpdateFinalizeIO :: HashCtx -> ByteString -> IO HashDigest
hashCtxUpdateFinalizeIO ctx bytes = do
    hashCtxUpdateIO ctx bytes
    hashCtxFinalIO ctx

hashCtxUpdateFinalizeClearIO :: HashCtx -> ByteString -> IO HashDigest
hashCtxUpdateFinalizeClearIO ctx bytes = do
    dg <- hashCtxUpdateFinalizeIO ctx bytes
    hashCtxClearIO ctx
    return dg
-- Or: hashCtxUpdateFinalizeIO ctx bytes <* hashCtxClearIO ctx

hashWithHashCtxIO :: HashCtx -> ByteString -> IO HashDigest
hashWithHashCtxIO = hashCtxUpdateFinalizeClearIO

hashWithNameIO :: HashName -> ByteString -> IO HashDigest
hashWithNameIO name bytes = do
    ctx <- hashCtxInitNameIO name
    hashWithHashCtxIO ctx bytes
