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
( Hash(..)
, HashName(..)
, HashDigest(..)
, withHash
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
, hashWithHash
, hashWithName
) where

import qualified Data.ByteString as ByteString

import System.IO.Unsafe

import Botan.Bindings.Hash

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.Remake

newtype Hash = MkHash { getHashForeignPtr :: ForeignPtr BotanHashStruct }

newHash      :: BotanHash -> IO Hash
withHash     :: Hash -> (BotanHash -> IO a) -> IO a
hashDestroy  :: Hash -> IO ()
createHash   :: (Ptr BotanHash -> IO CInt) -> IO Hash
(newHash, withHash, hashDestroy, createHash, _)
    = mkBindings
        MkBotanHash runBotanHash
        MkHash getHashForeignPtr
        botan_hash_destroy

type HashName = ByteString
type HashDigest = ByteString

-- TODO: hashInit :: HashName -> -> HashFlags -> IO Hash?
hashInit :: HashName -> IO Hash
hashInit = mkCreateObjectCString createHash (\ out name -> botan_hash_init out name 0)

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withHashInit :: HashName -> (Hash -> IO a) -> IO a
withHashInit = mkWithTemp1 hashInit hashDestroy

hashName :: Hash -> IO HashDigest
hashName = mkGetCString withHash botan_hash_name

-- NOTE: This does the correct thing - see C++ docs:
--  Return a newly allocated HashFunction object of the same type as this one,
--  whose internal state matches the current state of this.
hashCopyState :: Hash -> IO Hash
hashCopyState source = withHash source $ \ sourcePtr -> do
    createHash $ \ out -> botan_hash_copy_state out sourcePtr

hashClear :: Hash -> IO ()
hashClear =  mkAction withHash botan_hash_clear

hashBlockSize :: Hash -> IO Int
hashBlockSize = mkGetSize withHash botan_hash_block_size

hashOutputLength :: Hash -> IO Int
hashOutputLength = mkGetSize withHash botan_hash_output_length

hashUpdate :: Hash -> ByteString -> IO ()
hashUpdate = mkWithObjectSetterCBytesLen withHash botan_hash_update

hashFinal :: Hash -> IO HashDigest
hashFinal hash = withHash hash $ \ hashPtr -> do
    sz <- hashOutputLength hash
    allocBytes sz $ \ digestPtr -> do
        throwBotanIfNegative_ $ botan_hash_final hashPtr digestPtr

-- Convenience

hashUpdateFinalize :: Hash -> ByteString -> IO HashDigest
hashUpdateFinalize ctx bytes = do
    hashUpdate ctx bytes
    hashFinal ctx

hashUpdateFinalizeClear :: Hash -> ByteString -> IO HashDigest
hashUpdateFinalizeClear ctx bytes = do
    dg <- hashUpdateFinalize ctx bytes
    hashClear ctx
    return dg
-- Or: hashUpdateFinalize ctx bytes <* hashClear ctx

hashWithHash :: Hash -> ByteString -> IO HashDigest
hashWithHash = hashUpdateFinalizeClear

hashWithName :: HashName -> ByteString -> IO HashDigest
hashWithName name bytes = do
    ctx <- hashInit name
    hashWithHash ctx bytes
