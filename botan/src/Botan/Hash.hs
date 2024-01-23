{-|
Module      : Botan.Hash
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

module Botan.Hash
(

-- * Hashes
-- $introduction

-- * Usage
-- $usage

-- * Idiomatic interface

-- ** Data type
  Hash(..)
, Cryptohash(..)
, Checksum(..)

-- ** Enumerations

, allHashes
, cryptohashes
-- , hashStrategies
, checksums

-- ** Associated types
, HashDigest(..)
, BLAKE2bSize(..)
-- , Keccak1600Size(..)
-- , SHA3Size(..)
, Keccak1600(..)
, keccak1600Name
, SHA2(..)
, sha2Name
, SHA3(..)
, sha3Name
, SHAKE128Size(..)
, SHAKE256Size(..)
, Skein512Size(..)
, Skein512Salt(..)

-- ** Accessors

, hashName
, hashBlockSize
, hashDigestSize

, cryptohashName
, cryptohashBlockSize
, cryptohashDigestSize

-- ** Idiomatic algorithm
, hash
-- , hashLazy

-- * Mutable interface

-- ** Tagged mutable context
, MutableHash(..)

-- ** Destructor
, destroyHash

-- ** Initializers
, newHash

-- ** Accessors
, getHashName
, getHashBlockSize
, getHashDigestSize

-- ** Accessory functions
, copyHashState
, clearHash

-- ** Mutable algorithm
, updateHash
, updateHashChunks
, finalizeHash
, updateFinalizeHash
, updateFinalizeClearHash

-- Algorithm references

, blake2b
, gost_34_11
, keccak1600_224
, keccak1600_256
, keccak1600_384
, keccak1600_512
, keccak1600
, md4
, md5
, ripemd160
, sha1
, sha2_224
, sha2_256
, sha2_384
, sha2_512
, sha2_512_256
, sha2
, sha3_224
, sha3_256
, sha3_384
, sha3_512
, sha3
, shake128
, shake256
, sm3
, skein512
, streebog256
, streebog512
, whirlpool
, adler32
, crc24
, crc32

) where

import qualified Data.ByteString as ByteString

import Data.Foldable

import qualified Botan.Low.Hash as Low

import Botan.Error ()
import Botan.Prelude
import Botan.Utility

-- TODO: Distinguish between nonCopying and autoCopying variants

{- $introduction

-}

{- $usage

-}

--
-- Idiomatic interface
--

-- Data type

data Hash
    = Cryptohash Cryptohash
    -- | HashStrategy HashStrategy
    | Checksum Checksum
    deriving (Show, Eq)

-- data HashStrategy
--     = Parallel Hash Hash -- Or Parallel Cryptohash Cryptohash if necessary
--     | Comb4P Hash Hash   -- Or Comb4P Cryptohash Cryptohash if necessary

data Cryptohash
    -- Cryptographic hashes
    = BLAKE2b BLAKE2bSize
    | GOST_34_11
    -- | Keccak1600 Keccak1600Size
    | Keccak1600 Keccak1600
    | MD4   -- NOTE: TODO: unsafeMD4 instead of md4
    | MD5   -- NOTE: TODO: unsafeMD5 instead of md5
    | RIPEMD160
    | SHA1
    -- | SHA224    -- SHA2
    -- | SHA256
    -- | SHA384
    -- | SHA512
    -- | SHA512_256
    | SHA2 SHA2
    -- | SHA3 SHA3Size
    | SHA3 SHA3
    | SHAKE128 SHAKE128Size
    | SHAKE256 SHAKE256Size
    | SM3
    | Skein512 Skein512Size Skein512Salt
    | Streebog256
    | Streebog512
    | Whirlpool
    deriving (Show, Eq)

type BLAKE2bSize = Int      -- 1-64 bytes, eg: 8-512 in multiples of 8

data Keccak1600
    = Keccak1600_224
    | Keccak1600_256
    | Keccak1600_384
    | Keccak1600_512
    deriving (Show, Eq)

data SHA2
    = SHA224
    | SHA256
    | SHA384
    | SHA512
    | SHA512_256
    deriving (Show, Eq)

data SHA3
    = SHA3_224
    | SHA3_256
    | SHA3_384
    | SHA3_512
    deriving (Show, Eq)

type SHAKE128Size = Int
type SHAKE256Size = Int
type Skein512Size = Int
type Skein512Salt = ByteString  -- Must not contain ")", can contain "," if escaped, best use ASCII text
-- data Skein512Spec = Skein512 Skein512Size Skein512Salt

data Checksum
    = Adler32
    | CRC24
    | CRC32
    deriving (Show, Eq)

-- Enumerations

-- NOTE: MAC max key sizes imply that the max digest should be 4096
variableHashLength = 128

cryptohashes :: [Cryptohash]
cryptohashes =
    [ BLAKE2b variableHashLength
    , GOST_34_11
    , Keccak1600 Keccak1600_224
    , Keccak1600 Keccak1600_256
    , Keccak1600 Keccak1600_384
    , Keccak1600 Keccak1600_512
    , MD4
    , MD5
    , RIPEMD160
    , SHA1
    , SHA2 SHA224
    , SHA2 SHA256
    , SHA2 SHA384
    , SHA2 SHA512
    , SHA2 SHA512_256
    , SHA3 SHA3_224
    , SHA3 SHA3_256
    , SHA3 SHA3_384
    , SHA3 SHA3_512
    , SHAKE128 variableHashLength
    , SHAKE256 variableHashLength
    , SM3
    , Skein512 variableHashLength ""
    , Streebog256
    , Streebog512
    , Whirlpool
    ]

-- hashStrategies :: [HashStrategy]
-- hashStrategies = []

checksums :: [ Checksum ]
checksums =
    [ Adler32
    , CRC24
    , CRC32
    ]

allHashes :: [ Hash ]
allHashes = fmap Cryptohash cryptohashes ++ fmap Checksum checksums
-- allHashes = fmap Cryptohash cryptohashes ++ hashStrategies ++ fmap Checksum checksums

-- Associated types

type HashDigest = ByteString

-- Accessors

hashName :: Hash -> Low.HashName
hashName (Cryptohash cs) = cryptohashName cs
hashName (Checksum cs)   = checksumName cs

cryptohashName :: Cryptohash -> Low.HashName
cryptohashName spec = case spec of
    -- Cryptographic hashes
    BLAKE2b sz      -> Low.blake2b' sz      -- "BLAKE2b(" <> showBytes sz <> ")"
    GOST_34_11      -> Low.GOST_34_11       -- "GOST-34.11"
    -- Keccak1600 sz   -> "Keccak-1600(" <> showBytes sz <> ")"
    Keccak1600 v    -> keccak1600Name v
    MD4             -> Low.MD4              -- "MD4"
    MD5             -> Low.MD5              -- "MD5"
    RIPEMD160       -> Low.RIPEMD_160       -- "RIPEMD-160"
    SHA1            -> Low.SHA_1            -- "SHA-1"
    -- SHA224          -> "SHA-224"    -- SHA2
    -- SHA256          -> "SHA-256"
    -- SHA512          -> "SHA-512"
    -- SHA384          -> "SHA-384"
    -- SHA512_256      -> "SHA-512-256"
    SHA2 v          -> sha2Name v
    -- SHA3 sz         -> "SHA-3(" <> showBytes sz <> ")"
    SHA3 v          -> sha3Name v
    SHAKE128 sz     -> Low.shake_128' sz    -- "SHAKE-128(" <> showBytes sz <> ")"
    SHAKE256 sz     -> Low.shake_256' sz    -- "SHAKE-256(" <> showBytes sz <> ")"
    SM3             -> Low.SM3              -- "SM3"
    Skein512 sz b   -> Low.skein_512' sz b  -- "Skein-512(" <> showBytes sz <> "," <> b <> ")"
    Streebog256     -> Low.Streebog_256     -- "Streebog-256"
    Streebog512     -> Low.Streebog_512     -- "Streebog-512"
    Whirlpool       -> Low.Whirlpool        -- "Whirlpool"

keccak1600Name :: Keccak1600 -> Low.HashName
keccak1600Name Keccak1600_224 = Low.keccak_1600' 224 -- "Keccak-1600(224)"
keccak1600Name Keccak1600_256 = Low.keccak_1600' 256 -- "Keccak-1600(256)"
keccak1600Name Keccak1600_384 = Low.keccak_1600' 384 -- "Keccak-1600(384)"
keccak1600Name Keccak1600_512 = Low.keccak_1600' 512 -- "Keccak-1600(512)"

sha2Name :: SHA2 -> Low.HashName
sha2Name SHA224     = Low.SHA_224       -- "SHA-224"
sha2Name SHA256     = Low.SHA_256       -- "SHA-256"
sha2Name SHA512     = Low.SHA_512       -- "SHA-512"
sha2Name SHA384     = Low.SHA_384       -- "SHA-384"
sha2Name SHA512_256 = Low.SHA_512_256   -- "SHA-512-256"

sha3Name :: SHA3 -> Low.HashName
sha3Name SHA3_224 = Low.sha_3' 224 -- "SHA-3(224)"
sha3Name SHA3_256 = Low.sha_3' 256 -- "SHA-3(256)"
sha3Name SHA3_384 = Low.sha_3' 384 -- "SHA-3(384)"
sha3Name SHA3_512 = Low.sha_3' 512 -- "SHA-3(512)"

-- hashStrategyName :: HashStrategy -> Low.HashName
-- hashStrategyName hs = case hs of
--     Parallel ha hb  -> "Parallel(" <> hashName ha <> "," <> hashName hb <> ")"
--     Comb4P ha hb    -> "Comb4P(" <> hashName ha <> "," <> hashName hb <> ")"
    
checksumName :: Checksum -> Low.HashName
checksumName cs = case cs of
    Adler32         -> Low.Adler32          -- "Adler32"
    CRC24           -> Low.CRC24            -- "CRC24"
    CRC32           -> Low.CRC32            -- "CRC32"

hashDigestSize :: Hash -> Int
hashDigestSize (Cryptohash cs) = cryptohashDigestSize cs
hashDigestSize (Checksum cs) = checksumDigestSize cs

-- NOTE: SIZE IN BYTES
cryptohashDigestSize :: Cryptohash -> Int
cryptohashDigestSize (BLAKE2b n) = div n 8
cryptohashDigestSize GOST_34_11 = 32
cryptohashDigestSize (Keccak1600 Keccak1600_224) = 28
cryptohashDigestSize (Keccak1600 Keccak1600_256) = 32
cryptohashDigestSize (Keccak1600 Keccak1600_384) = 48
cryptohashDigestSize (Keccak1600 Keccak1600_512) = 64
cryptohashDigestSize MD4 = 16
cryptohashDigestSize MD5 = 16
cryptohashDigestSize RIPEMD160 = 20
cryptohashDigestSize SHA1 = 20
cryptohashDigestSize (SHA2 SHA224) = 28
cryptohashDigestSize (SHA2 SHA256) = 32
cryptohashDigestSize (SHA2 SHA384) = 48
cryptohashDigestSize (SHA2 SHA512) = 64
cryptohashDigestSize (SHA2 SHA512_256) = 32
cryptohashDigestSize (SHA3 SHA3_224) = 28
cryptohashDigestSize (SHA3 SHA3_256) = 32
cryptohashDigestSize (SHA3 SHA3_384) = 48
cryptohashDigestSize (SHA3 SHA3_512) = 64
cryptohashDigestSize (SHAKE128 n) = div n 8
cryptohashDigestSize (SHAKE256 n) = div n 8
cryptohashDigestSize SM3 = 32
cryptohashDigestSize (Skein512 n "") = div n 8
cryptohashDigestSize Streebog256 = 32
cryptohashDigestSize Streebog512 = 64
cryptohashDigestSize Whirlpool = 64
-- NOTE: Extracted / confirmed from inspecting:
{-
generateHashDigestSize :: IO ()
generateHashDigestSize = do
    each <- forM hashes  $ \ h -> do
        ctx <- Low.hashInit (hashName h)
        dsz <- Low.hashOutputLength ctx
        return $ concat $
            [ "hashDigestSize "
            , showsPrec 11 h ""
            , " = "
            , show dsz
            ]
    putStrLn $ unlines $
        "hashDigestSize :: Hash -> Int"
        : each
-}

checksumDigestSize :: Checksum -> Int
checksumDigestSize cs = case cs of
    Adler32         -> 4
    CRC24           -> 3
    CRC32           -> 4



-- NOTE: SIZE IN BITS
hashBlockSize :: Hash -> Int
hashBlockSize (Cryptohash cs) = cryptohashBlockSize cs
hashBlockSize (Checksum cs) = checksumBlockSize cs

-- NOTE: SIZE IN BITS
cryptohashBlockSize :: Cryptohash -> Int
cryptohashBlockSize (BLAKE2b _) = 128
cryptohashBlockSize GOST_34_11 = 32
cryptohashBlockSize (Keccak1600 Keccak1600_224) = 144
cryptohashBlockSize (Keccak1600 Keccak1600_256) = 136
cryptohashBlockSize (Keccak1600 Keccak1600_384) = 104
cryptohashBlockSize (Keccak1600 Keccak1600_512) = 72
cryptohashBlockSize MD4 = 64
cryptohashBlockSize MD5 = 64
cryptohashBlockSize RIPEMD160 = 64
cryptohashBlockSize SHA1 = 64
cryptohashBlockSize (SHA2 SHA224) = 64
cryptohashBlockSize (SHA2 SHA256) = 64
cryptohashBlockSize (SHA2 SHA384) = 128
cryptohashBlockSize (SHA2 SHA512) = 128
cryptohashBlockSize (SHA2 SHA512_256) = 128
cryptohashBlockSize (SHA3 SHA3_224) = 144
cryptohashBlockSize (SHA3 SHA3_256) = 136
cryptohashBlockSize (SHA3 SHA3_384) = 104
cryptohashBlockSize (SHA3 SHA3_512) = 72
cryptohashBlockSize (SHAKE128 _) = 168
cryptohashBlockSize (SHAKE256 _) = 136
cryptohashBlockSize SM3 = 64
cryptohashBlockSize (Skein512 _ "") = 64
cryptohashBlockSize Streebog256 = 64
cryptohashBlockSize Streebog512 = 64
cryptohashBlockSize Whirlpool = 64
-- NOTE: Extracted / confirmed from inspecting:
{-
generateHashBlockSize :: IO ()
generateHashBlockSize = do
    each <- forM hashes  $ \ h -> do
        ctx <- Low.hashInit (hashName h)
        bsz <- Low.hashBlockSize ctx
        return $ concat $
            [ "hashBlockSize "
            , showsPrec 11 h ""
            , " = "
            , show bsz
            ]
    putStrLn $ unlines $
        "hashBlockSize :: Hash -> Int"
        : each
-}

checksumBlockSize :: Checksum -> Int
checksumBlockSize cs = case cs of
    Adler32         -> error "Unimplemented: checksumBlockSize"
    CRC24           -> error "Unimplemented: checksumBlockSize"
    CRC32           -> error "Unimplemented: checksumBlockSize"
{-# WARNING checksumBlockSize "Unimplemented" #-}

-- Idiomatic algorithm

hash :: Hash -> ByteString -> HashDigest
hash h bs = unsafePerformIO $ do
    ctx <- newHash h
    updateFinalizeHash ctx bs
{-# NOINLINE hash #-}

-- hashLazy = undefined

--
-- Mutable interface
--

-- Tagged mutable context

data MutableHash = MkMutableHash
    { mutableHashType    :: Hash
    , mutableHashCtx     :: Low.Hash
    }

-- Destructor

destroyHash
    :: (MonadIO m)
    => MutableHash
    -> m ()
destroyHash = liftIO . Low.hashDestroy . mutableHashCtx

-- Initializers

newHash
    :: (MonadIO m)
    => Hash
    -> m MutableHash
newHash h = do
    ctx <- liftIO $ Low.hashInit $ hashName h
    return $ MkMutableHash h ctx

-- Accessors

getHashName
    :: (MonadIO m)
    => MutableHash
    -> m Low.HashName
getHashName = liftIO . Low.hashName . mutableHashCtx

getHashBlockSize
    :: (MonadIO m)
    => MutableHash
    -> m Int
getHashBlockSize = liftIO . Low.hashBlockSize . mutableHashCtx

getHashDigestSize
    :: (MonadIO m)
    => MutableHash
    -> m Int
getHashDigestSize = liftIO . Low.hashOutputLength . mutableHashCtx

-- Accessory functions

copyHashState
    :: (MonadIO m)
    => MutableHash
    -> m MutableHash
copyHashState mh = do
    ctx <- liftIO $ Low.hashCopyState $ mutableHashCtx mh
    return $ MkMutableHash (mutableHashType mh) ctx

clearHash
    :: (MonadIO m)
    => MutableHash
    -> m ()
clearHash = liftIO . Low.hashClear . mutableHashCtx

-- Mutable algorithm
-- TODO: Flip?
updateHash
    :: (MonadIO m)
    => MutableHash
    -> ByteString
    -> m ()
updateHash h bs = updateHashChunks h [bs]

-- TODO: Flip?
updateHashChunks
    :: (MonadIO m)
    => MutableHash
    -> [ByteString]
    -> m ()
updateHashChunks mh chunks = let ctx = mutableHashCtx mh in
    liftIO $ traverse_ (Low.hashUpdate ctx) chunks

finalizeHash
    :: (MonadIO m)
    => MutableHash
    -> m HashDigest
finalizeHash = liftIO . Low.hashFinal . mutableHashCtx

updateFinalizeHash
    :: (MonadIO m)
    => MutableHash
    -> ByteString
    -> m HashDigest
updateFinalizeHash h bs = liftIO $ do
    updateHash h bs
    finalizeHash h

updateFinalizeClearHash
    :: (MonadIO m)
    => MutableHash
    -> ByteString
    -> m HashDigest
updateFinalizeClearHash h bs = updateFinalizeHash h bs <* clearHash h


--
-- Algorithm references
--

-- blake2b_128 :: Hash
-- blake2b_128 = fromJust $ blake2b 128

-- blake2b_256 :: Hash
-- blake2b_256 = fromJust $ blake2b 256

-- blake2b_512 :: Hash
-- blake2b_512 = fromJust $ blake2b 512

blake2b :: Int -> Maybe Hash
blake2b n | 0 < n && mod n 8 == 0 && n <= 512 = Just $ Cryptohash $ BLAKE2b n
blake2b _ = Nothing

gost_34_11 :: Hash
gost_34_11 = Cryptohash GOST_34_11

keccak1600_224 :: Hash
keccak1600_224 = Cryptohash $ Keccak1600 Keccak1600_224

keccak1600_256 :: Hash
keccak1600_256 = Cryptohash $ Keccak1600 Keccak1600_256

keccak1600_384 :: Hash
keccak1600_384 = Cryptohash $ Keccak1600 Keccak1600_384

keccak1600_512 :: Hash
keccak1600_512 = Cryptohash $ Keccak1600 Keccak1600_512

keccak1600 :: Int -> Maybe Hash
keccak1600 224        = Just keccak1600_224
keccak1600 256        = Just keccak1600_256
keccak1600 384        = Just keccak1600_384
keccak1600 512        = Just keccak1600_512
keccak1600 _          = Nothing

md4 :: Hash
md4             = Cryptohash MD4

md5 :: Hash
md5             = Cryptohash MD5

ripemd160 :: Hash
ripemd160       = Cryptohash RIPEMD160

sha1 :: Hash
sha1            = Cryptohash SHA1

sha2_224 :: Hash
sha2_224        = Cryptohash $ SHA2 SHA224

sha2_256 :: Hash
sha2_256        = Cryptohash $ SHA2 SHA256

sha2_384 :: Hash
sha2_384        = Cryptohash $ SHA2 SHA384

sha2_512 :: Hash
sha2_512        = Cryptohash $ SHA2 SHA512

sha2_512_256 :: Hash
sha2_512_256    = Cryptohash $ SHA2 SHA512_256

sha2 :: Int -> Maybe Hash
sha2 224        = Just sha2_224
sha2 256        = Just sha2_256
sha2 384        = Just sha2_384
sha2 512        = Just sha2_512
sha2 _          = Nothing

sha3_224 :: Hash
sha3_224        = Cryptohash $ SHA3 SHA3_224

sha3_256 :: Hash
sha3_256        = Cryptohash $ SHA3 SHA3_256

sha3_384 :: Hash
sha3_384        = Cryptohash $ SHA3 SHA3_384

sha3_512 :: Hash
sha3_512        = Cryptohash $ SHA3 SHA3_512

sha3 :: Int -> Maybe Hash
sha3 224        = Just sha3_224
sha3 256        = Just sha3_256
sha3 384        = Just sha3_384
sha3 512        = Just sha3_512
sha3 _          = Nothing

shake128 :: Int -> Maybe Hash
shake128 n | 0 < n && mod n 8 == 0 && n <= 512 = Just $ Cryptohash $ SHAKE128 n

shake256 :: Int -> Maybe Hash
shake256 n | 0 < n && mod n 8 == 0 && n <= 512 = Just $ Cryptohash $ SHAKE256 n

sm3 :: Hash
sm3 = Cryptohash $ SM3

skein512 :: Int -> ByteString -> Maybe Hash
skein512 n salt | 0 < n && mod n 8 == 0 && n <= 512 = Just $ Cryptohash $ Skein512 n salt

streebog256 :: Hash
streebog256 = Cryptohash $ Streebog256

streebog512 :: Hash
streebog512 = Cryptohash $ Streebog512

whirlpool :: Hash
whirlpool   = Cryptohash $ Whirlpool

adler32 :: Hash
adler32     = Checksum $ Adler32

crc24 :: Hash
crc24       = Checksum $ CRC24

crc32 :: Hash
crc32       = Checksum $ CRC32
