{-|
Module      : Botan.Low.Hash
Description : Hash Functions and Checksums
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
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

{-# LANGUAGE OverloadedStrings #-}

module Botan.Low.Hash (

  -- * Hashing
  -- $introduction

  -- * Usage
  -- $usage

    Hash(..)
  , HashName
  , HashDigest
  , withHash
  , hashInit
  , hashDestroy
  , hashName
  , hashBlockSize
  , hashOutputLength
  , hashCopyState
  , hashUpdate
  , hashFinal
  , hashUpdateFinalize
  , hashUpdateFinalizeClear
  , hashClear

  -- * Hash algorithms

  , pattern BLAKE2b
  , blake2b
  , pattern Keccak1600
  , keccak1600
  , pattern GOST_34_11
  , pattern MD4
  , pattern MD5
  , pattern RIPEMD160
  , pattern SHA1
  , pattern SHA224
  , pattern SHA256
  , pattern SHA384
  , pattern SHA512
  , pattern SHA512_256
  , pattern SHA3
  , sha3
  , pattern SHAKE128
  , shake128
  , pattern SHAKE256
  , shake256
  , pattern SM3
  , pattern Skein512
  , skein512
  , pattern Streebog256
  , pattern Streebog512
  , pattern Whirlpool
  , pattern Parallel
  , pattern Comb4P
  , pattern Adler32
  , pattern CRC24
  , pattern CRC32

  -- * Convenience

  , cryptohashes
  , checksums
  , allHashes

  ) where

import           Botan.Bindings.Hash
import           Botan.Low.Error.Internal
import           Botan.Low.Internal.ByteString
import           Botan.Low.Internal.String
import           Botan.Low.Make
import           Botan.Low.Remake
import           Data.ByteString (ByteString)
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Ptr

{- $introduction

A `hash` is deterministic, one-way function suitable for producing a
deterministic, fixed-size digest from an arbitrarily-sized message, which is
used to verify the integrity of the data.

-}

{- $usage

Unless you need a specific `hash`, it is strongly recommended that you use the `SHA3` algorithm.

> import Botan.Low.Hash
> hash <- hashInit SHA3
> message = "Fee fi fo fum!"
> hashUpdate hash message
> digest <- hashFinal hash

You can verify a digest by hashing the message a second time, and comparing the two:

> rehash <- hashInit SHA3
> hashUpdate rehash message
> redigest <- hashFinal rehash
> digest == redigest -- True

You can clear a hash's state, leaving it ready for reuse:

> hashClear hash
> -- Process another message
> hashUpdate hash anotherMessage
> anotherDigest <- hashFinal hash

-}

newtype Hash = MkHash { getHashForeignPtr :: ForeignPtr BotanHashStruct }

withHash     :: Hash -> (BotanHash -> IO a) -> IO a
hashDestroy  :: Hash -> IO ()
createHash   :: (Ptr BotanHash -> IO CInt) -> IO Hash
(withHash, hashDestroy, createHash)
    = mkBindings
        MkBotanHash (.runBotanHash)
        MkHash (.getHashForeignPtr)
        botan_hash_destroy

type HashName = ByteString

pattern BLAKE2b
    ,   Keccak1600
    ,   GOST_34_11
    ,   MD4
    ,   MD5
    ,   RIPEMD160
    ,   SHA1
    ,   SHA224
    ,   SHA256
    ,   SHA384
    ,   SHA512
    ,   SHA512_256
    ,   SHA3
    ,   SHAKE128
    ,   SHAKE256
    ,   SM3
    ,   Skein512
    ,   Streebog256
    ,   Streebog512
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
blake2b :: (Ord a, Num a, Show a) => a -> HashName
blake2b sz | sz <= 512 = BLAKE2b /$ showBytes sz
blake2b _ = error "Invalid BLAKE2b variant"
pattern Keccak1600     = BOTAN_HASH_KECCAK_1600
-- TODO: function or pattern
keccak1600 :: (Eq a, Num a, Show a) => a -> HashName
keccak1600 n | n `elem` [224, 256, 384, 512] = Keccak1600 /$ showBytes n
keccak1600 _ = error "Invalid Keccak-1600 variant"
-- pattern Keccak1600_224 = "Keccak-1600(224)"
-- pattern Keccak1600_256 = "Keccak-1600(256)"
-- pattern Keccak1600_384 = "Keccak-1600(384)"
-- pattern Keccak1600_512 = "Keccak-1600(512)"
pattern GOST_34_11  = BOTAN_HASH_GOST_34_11
pattern MD4         = BOTAN_HASH_MD4
pattern MD5         = BOTAN_HASH_MD5
pattern RIPEMD160   = BOTAN_HASH_RIPEMD_160
pattern SHA1        = BOTAN_HASH_SHA1
pattern SHA224      = BOTAN_HASH_SHA_224
pattern SHA256      = BOTAN_HASH_SHA_256
pattern SHA384      = BOTAN_HASH_SHA_384
pattern SHA512      = BOTAN_HASH_SHA_512
pattern SHA512_256  = BOTAN_HASH_SHA_512_256
pattern SHA3        = BOTAN_HASH_SHA_3
-- TODO: function or pattern
sha3 :: (Eq a, Num a, Show a) => a -> HashName
sha3 n | n `elem` [224, 256, 384, 512] = SHA3 /$ showBytes n
sha3 _ = error "Invalid SHA-3 variant"
-- pattern SHA3_224 = "SHA-3(224)"
-- pattern SHA3_256 = "SHA-3(256)"
-- pattern SHA3_384 = "SHA-3(384)"
-- pattern SHA3_512 = "SHA-3(512)"
pattern SHAKE128       = BOTAN_HASH_SHAKE_128
-- TODO: function
shake128 :: Show a => a -> HashName
shake128 sz = SHAKE128 /$ showBytes sz
pattern SHAKE256       = BOTAN_HASH_SHAKE_256
-- TODO: function
shake256 :: Show a => a -> HashName
shake256 sz = SHAKE256 /$ showBytes sz
pattern SM3             = BOTAN_HASH_SM3
pattern Skein512       = BOTAN_HASH_SKEIN_512
-- TODO: function
skein512 :: Show a => a -> HashName -> HashName
skein512 sz salt = Skein512 /$ showBytes sz <> "," <> salt
pattern Streebog256    = BOTAN_HASH_STREEBOG_256
pattern Streebog512    = BOTAN_HASH_STREEBOG_512
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

cryptohashes :: [HashName]
cryptohashes =
    [ BLAKE2b
    -- , "BLAKE2b(128)"
    -- , "BLAKE2b(256)"
    -- , "BLAKE2b(512)"
    , GOST_34_11
    , Keccak1600
    -- , "Keccak-1600(224)"
    -- , "Keccak-1600(256)"
    -- , "Keccak-1600(384)"
    -- , "Keccak-1600(512)"
    , MD4
    , MD5
    , RIPEMD160
    , SHA1
    , SHA224
    , SHA256
    , SHA384
    , SHA512
    , SHA512_256
    , SHA3
    -- , "SHA-3(224)"
    -- , "SHA-3(256)"
    -- , "SHA-3(384)"
    -- , "SHA-3(512)"
    -- NOTE: SHAKE-128 has no default value, a parameter *MUST* be supplied
    , shake128 @Int 128
    -- , "SHAKE-128(128)"
    -- , "SHAKE-128(256)"
    -- , "SHAKE-128(512)"
    -- NOTE: SHAKE-256 has no default value, a parameter *MUST* be supplied
    , shake256 @Int 128
    -- , "SHAKE-256(128)"
    -- , "SHAKE-256(256)"
    -- , "SHAKE-256(512)"
    , SM3
    , Skein512
    -- , "Skein-512(128)"
    -- , "Skein-512(256)"
    -- , "Skein-512(512)"
    , Streebog256
    , Streebog512
    , Whirlpool
    ]

-- TODO:
-- hashStrategies :: [HashName]
-- hashStrategies = undefined

checksums :: [HashName]
checksums =
    [ Adler32
    , CRC24
    , CRC32
    ]

allHashes :: [HashName]
allHashes = cryptohashes ++ checksums

type HashDigest = ByteString

hashInit
    :: HashName -- ^ __hash_name__: name of the hash function, e.g., "SHA-384"
    -> IO Hash  -- ^ __hash__: hash object
hashInit = mkCreateObjectCString createHash (\ out name -> botan_hash_init out name 0)

hashName
    :: Hash             -- ^ __hash__: the object to read
    -> IO HashDigest    -- ^ __name__: output buffer
hashName = mkGetCString withHash botan_hash_name

-- NOTE: This does the correct thing - see C++ docs:
--  Return a newly allocated HashFunction object of the same type as this one,
--  whose internal state matches the current state of this.

hashCopyState
    :: Hash     -- ^ __source__: source hash object
    -> IO Hash  -- ^ __dest__: destination hash object
hashCopyState source = withHash source $ \ sourcePtr -> do
    createHash $ \ dest -> botan_hash_copy_state dest sourcePtr

hashClear
    :: Hash -- ^ __hash__: hash object
    -> IO ()
hashClear =  mkAction withHash botan_hash_clear

hashBlockSize
    :: Hash     -- ^ __hash__: hash object
    -> IO Int   -- ^ __block_size__: output buffer to hold the hash function block size
hashBlockSize = mkGetSize withHash botan_hash_block_size

hashOutputLength
    :: Hash     -- ^ __hash__: hash object
    -> IO Int   -- ^ __block_size__: output buffer to hold the hash function output length
hashOutputLength = mkGetSize withHash botan_hash_output_length

hashUpdate
    :: Hash         -- ^ __hash__: hash object
    -> ByteString   -- ^ __in__: input buffer
    -> IO ()
hashUpdate = mkWithObjectSetterCBytesLen withHash botan_hash_update

hashFinal
    :: Hash             -- ^ __hash__: hash object
    -> IO HashDigest    -- ^ __out[]__: output buffer
hashFinal hash = withHash hash $ \ hashPtr -> do
    sz <- hashOutputLength hash
    allocBytes sz $ \ digestPtr -> do
        throwBotanIfNegative_ $ botan_hash_final hashPtr digestPtr

-- TODO:
-- pkcsHashId
--     :: ByteString       -- ^ __hash_name__
--     -> IO ByteString    -- ^ __pkcs_id[]__
-- pkcsHashId = undefined


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
