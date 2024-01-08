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
, pattern BLAKE2b
, blake2b'
, pattern Keccak_1600
, keccak_1600'
, pattern GOST_34_11
, pattern MD4
, pattern MD5
, pattern RIPEMD_160
, pattern SHA_1
, pattern SHA_224
, pattern SHA_256
, pattern SHA_384
, pattern SHA_512
, pattern SHA_512_256
, pattern SHA_3
, sha_3'
, pattern SHAKE_128
, shake_128'
, pattern SHAKE_256
, shake_256'
, pattern SM3
, pattern Skein_512
, skein_512'
, pattern Streebog_256
, pattern Streebog_512
, pattern Whirlpool
, pattern Parallel
, pattern Comb4P
, pattern Adler32
, pattern CRC24
, pattern CRC32
, cryptohashes
, checksums
, allHashes
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

pattern BLAKE2b
    ,   Keccak_1600
    ,   GOST_34_11
    ,   MD4
    ,   MD5
    ,   RIPEMD_160
    ,   SHA_1
    ,   SHA_224
    ,   SHA_256
    ,   SHA_384
    ,   SHA_512
    ,   SHA_512_256
    ,   SHA_3
    ,   SHAKE_128
    ,   SHAKE_256
    ,   SM3
    ,   Skein_512
    ,   Streebog_256
    ,   Streebog_512
    ,   Whirlpool
    ,   Parallel
    ,   Comb4P
    ,   Adler32
    ,   CRC24
    ,   CRC32
    :: HashName

pattern BLAKE2b         = BOTAN_HASH_BLAKE2B
-- TODO: function
-- sz is digest size in bits, must be 1-64 bytes, eg: 8-512 in multiples of 8
blake2b' sz | sz <= 512 = BLAKE2b /$ showBytes sz
blake2b' _ = error "Invalid BLAKE2b variant"
pattern Keccak_1600     = BOTAN_HASH_KECCAK_1600
-- TODO: function or pattern
keccak_1600' n | n `elem` [224, 256, 384, 512] = Keccak_1600 /$ showBytes n
keccak_1600' _ = error "Invalid Keccak-1600 variant"
-- pattern Keccak_1600_224 = "Keccak-1600(224)"
-- pattern Keccak_1600_256 = "Keccak-1600(256)"
-- pattern Keccak_1600_384 = "Keccak-1600(384)"
-- pattern Keccak_1600_512 = "Keccak-1600(512)"
pattern GOST_34_11      = BOTAN_HASH_GOST_34_11
pattern MD4             = BOTAN_HASH_MD4
pattern MD5             = BOTAN_HASH_MD5
pattern RIPEMD_160      = BOTAN_HASH_RIPEMD_160
pattern SHA_1           = BOTAN_HASH_SHA1
pattern SHA_224         = BOTAN_HASH_SHA_224
pattern SHA_256         = BOTAN_HASH_SHA_256
pattern SHA_384         = BOTAN_HASH_SHA_384
pattern SHA_512         = BOTAN_HASH_SHA_512
pattern SHA_512_256     = BOTAN_HASH_SHA_512_256
pattern SHA_3           = BOTAN_HASH_SHA_3
-- TODO: function or pattern
sha_3' n | n `elem` [224, 256, 384, 512] = SHA_3 /$ showBytes n
sha_3' _ = error "Invalid SHA-3 variant"
-- pattern SHA_3_224 = "SHA-3(224)"
-- pattern SHA_3_256 = "SHA-3(256)"
-- pattern SHA_3_384 = "SHA-3(384)"
-- pattern SHA_3_512 = "SHA-3(512)"
pattern SHAKE_128       = BOTAN_HASH_SHAKE_128
-- TODO: function
shake_128' sz = SHAKE_128 /$ showBytes sz
pattern SHAKE_256       = BOTAN_HASH_SHAKE_256
-- TODO: function
shake_256' sz = SHAKE_256 /$ showBytes sz
pattern SM3             = BOTAN_HASH_SM3
pattern Skein_512       = BOTAN_HASH_SKEIN_512
-- TODO: function
skein_512' sz salt = Skein_512 /$ showBytes sz <> "," <> salt
pattern Streebog_256    = BOTAN_HASH_STREEBOG_256
pattern Streebog_512    = BOTAN_HASH_STREEBOG_512
pattern Whirlpool       = BOTAN_HASH_WHIRLPOOL
pattern Parallel        = BOTAN_HASH_STRAT_PARALLEL
-- TODO: function
-- parallel a b =  Parallel /$ a <> "," <> b
-- TODO: function
-- comb4P a b =  Comb4P /$ a <> "," <> b
pattern Comb4P          = BOTAN_HASH_STRAT_COMB4P
pattern Adler32         = BOTAN_CHECKSUM_ADLER32
pattern CRC24           = BOTAN_CHECKSUM_CRC24
pattern CRC32           = BOTAN_CHECKSUM_CRC32

cryptohashes = 
    [ BLAKE2b
    -- , "BLAKE2b(128)"
    -- , "BLAKE2b(256)"
    -- , "BLAKE2b(512)"
    , GOST_34_11
    , Keccak_1600
    -- , "Keccak-1600(224)"
    -- , "Keccak-1600(256)"
    -- , "Keccak-1600(384)"
    -- , "Keccak-1600(512)"
    , MD4
    , MD5
    , RIPEMD_160
    , SHA_1
    , SHA_224
    , SHA_256
    , SHA_384
    , SHA_512
    , SHA_512_256
    , SHA_3
    -- , "SHA-3(224)"
    -- , "SHA-3(256)"
    -- , "SHA-3(384)"
    -- , "SHA-3(512)"
    -- NOTE: SHAKE-128 has no default value, a parameter *MUST* be supplied
    , shake_128' 128
    -- , "SHAKE-128(128)"
    -- , "SHAKE-128(256)"
    -- , "SHAKE-128(512)"
    -- NOTE: SHAKE-256 has no default value, a parameter *MUST* be supplied
    , shake_256' 128
    -- , "SHAKE-256(128)"
    -- , "SHAKE-256(256)"
    -- , "SHAKE-256(512)"
    , SM3
    , Skein_512
    -- , "Skein-512(128)"
    -- , "Skein-512(256)"
    -- , "Skein-512(512)"
    , Streebog_256
    , Streebog_512
    , Whirlpool
    ]

-- TODO:
-- hashStrategies :: [HashName]
-- hashStrategies = undefined

checksums = 
    [ Adler32
    , CRC24
    , CRC32
    ]

allHashes = cryptohashes ++ checksums

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
