{-|
Module      : Botan.Hash
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

module Botan.Hash (

  -- * Hashes
  -- $introduction

  -- * Usage
  -- $usage

  -- * Idiomatic interface

  -- ** Data type
    Hash(..)
  , CryptoHash(..)
  , Checksum(..)

  -- ** Enumerations

  , hashes
  , cryptoHashes
  , checksums

  -- ** Associated types
  , HashDigest
  , BLAKE2bSize
  , SHAKE128Size
  , SHAKE256Size
  , Skein512Size
  , Skein512Salt

  -- ** Accessors

  , hashName
  , hashBlockSize
  , hashDigestSize

  -- ** Idiomatic algorithm
  , hash
  , hashChunks
  , hashLazy
  , hashFile
  , hashFileLazy
  -- , unsafeHash
  -- , unsafeHashLazy

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
import qualified Data.ByteString.Lazy as Lazy

import           Data.Foldable

import qualified Botan.Low.Hash as Low

import           Botan.Prelude

-- TODO: Distinguish between nonCopying and autoCopying variants

-- TODO: The patterns established here are useful
--  - The way newtype Foo, isFoo, foo, and unsafeFoo are defined
--  - unsafeFoo may be dropped in favor of MkFoo
--  - easier defining of enumerations
-- Go fix BlockCipher / Cipher to matc

{- $introduction

-}

{- $usage

-}

--
-- Idiomatic interface
--

data Hash
    = BLAKE2b BLAKE2bSize
    | GOST_34_11
    | Keccak1600_224
    | Keccak1600_256
    | Keccak1600_384
    | Keccak1600_512
    | MD4   -- NOTE: TODO: unsafeMD4 instead of md4
    | MD5   -- NOTE: TODO: unsafeMD5 instead of md5
    | RIPEMD160
    | SHA1
    | SHA224    -- TODO: Maybe rename SHA2_...
    | SHA256
    | SHA384
    | SHA512
    | SHA512_256
    | SHA3_224
    | SHA3_256
    | SHA3_384
    | SHA3_512
    | SHAKE128 SHAKE128Size
    | SHAKE256 SHAKE256Size
    | SM3
    | Skein512 Skein512Size Skein512Salt
    | Streebog256
    | Streebog512
    | Whirlpool
    | Adler32
    | CRC24
    | CRC32
--     | Parallel Hash Hash
--     | Comb4P Hash Hash
    deriving stock (Eq, Ord, Show)

newtype CryptoHash = MkCryptoHash { unCryptoHash :: Hash }
    deriving stock (Eq, Ord, Show)

isCryptoHash :: Hash -> Bool
isCryptoHash (BLAKE2b _)    = True
isCryptoHash GOST_34_11     = True
isCryptoHash Keccak1600_224 = True
isCryptoHash Keccak1600_256 = True
isCryptoHash Keccak1600_384 = True
isCryptoHash Keccak1600_512 = True
isCryptoHash MD4            = True
isCryptoHash MD5            = True
isCryptoHash RIPEMD160      = True
isCryptoHash SHA1           = True
isCryptoHash SHA224         = True
isCryptoHash SHA256         = True
isCryptoHash SHA384         = True
isCryptoHash SHA512         = True
isCryptoHash SHA512_256     = True
isCryptoHash SHA3_224       = True
isCryptoHash SHA3_256       = True
isCryptoHash SHA3_384       = True
isCryptoHash SHA3_512       = True
isCryptoHash (SHAKE128 _)   = True
isCryptoHash (SHAKE256 _)   = True
isCryptoHash SM3            = True
isCryptoHash (Skein512 _ _) = True
isCryptoHash Streebog256    = True
isCryptoHash Streebog512    = True
isCryptoHash Whirlpool      = True
isCryptoHash _              = False

newtype Checksum = MkChecksum { unChecksum :: Hash }
    deriving stock (Eq, Ord, Show)

isChecksum :: Hash -> Bool
isChecksum Adler32 = True
isChecksum CRC24   = True
isChecksum CRC32   = True
isChecksum _       = False

-- newtype HashStrategy = MkHashStrategy { unHashStrategy :: Hash }
--     deriving (Eq, Ord)

-- Associated types

type BLAKE2bSize = Int      -- 1-64 bytes, eg: 8-512 in multiples of 8
type SHAKE128Size = Int
type SHAKE256Size = Int
type Skein512Size = Int
type Skein512Salt = ByteString  -- Must not contain ")", can contain "," if escaped, best use ASCII text

-- Enumerations

-- NOTE: MAC max key sizes imply that the max digest should be 4096
defaultHashLength :: Int
defaultHashLength = 128

hashes :: [ Hash ]
hashes =
    [ BLAKE2b defaultHashLength
    , GOST_34_11
    , Keccak1600_224
    , Keccak1600_256
    , Keccak1600_384
    , Keccak1600_512
    , MD4
    , MD5
    , RIPEMD160
    , SHA1
    , SHA224
    , SHA256
    , SHA384
    , SHA512
    , SHA512_256
    , SHA3_224
    , SHA3_256
    , SHA3_384
    , SHA3_512
    , SHAKE128 defaultHashLength
    , SHAKE256 defaultHashLength
    , SM3
    , Skein512 defaultHashLength ""
    , Streebog256
    , Streebog512
    , Whirlpool
    , Adler32
    , CRC24
    , CRC32
    ]

cryptoHashes :: [ CryptoHash ]
cryptoHashes = fmap MkCryptoHash $ filter isCryptoHash hashes

checksums :: [ Checksum ]
checksums = fmap MkChecksum $ filter isChecksum hashes

-- Associated types

type HashDigest = ByteString

-- Accessors

hashName :: Hash -> Low.HashName
hashName (BLAKE2b sz)    = Low.blake2b sz        -- "BLAKE2b(" <> showBytes sz <> ")"
hashName GOST_34_11      = Low.GOST_34_11        -- "GOST-34.11"
hashName Keccak1600_224  = Low.keccak1600 @Int 224    -- "Keccak-1600(224)"
hashName Keccak1600_256  = Low.keccak1600 @Int 256    -- "Keccak-1600(256)"
hashName Keccak1600_384  = Low.keccak1600 @Int 384    -- "Keccak-1600(384)"
hashName Keccak1600_512  = Low.keccak1600 @Int 512    -- "Keccak-1600(512)"
hashName MD4             = Low.MD4               -- "MD4"
hashName MD5             = Low.MD5               -- "MD5"
hashName RIPEMD160       = Low.RIPEMD160         -- "RIPEMD-160"
hashName SHA1            = Low.SHA1              -- "SHA-1"
hashName SHA224          = Low.SHA224            -- "SHA-224"
hashName SHA256          = Low.SHA256            -- "SHA-256"
hashName SHA512          = Low.SHA512            -- "SHA-512"
hashName SHA384          = Low.SHA384            -- "SHA-384"
hashName SHA512_256      = Low.SHA512_256        -- "SHA-512-256"
hashName SHA3_224        = Low.sha3 @Int 224          -- "SHA-3(224)"
hashName SHA3_256        = Low.sha3 @Int 256          -- "SHA-3(256)"
hashName SHA3_384        = Low.sha3 @Int 384          -- "SHA-3(384)"
hashName SHA3_512        = Low.sha3 @Int 512          -- "SHA-3(512)"
hashName (SHAKE128 sz)   = Low.shake128 sz       -- "SHAKE-128(" <> showBytes sz <> ")"
hashName (SHAKE256 sz)   = Low.shake256 sz       -- "SHAKE-256(" <> showBytes sz <> ")"
hashName SM3             = Low.SM3               -- "SM3"
hashName (Skein512 sz b) = Low.skein512 sz b     -- "Skein-512(" <> showBytes sz <> "," <> b <> ")"
hashName Streebog256     = Low.Streebog256       -- "Streebog-256"
hashName Streebog512     = Low.Streebog512       -- "Streebog-512"
hashName Whirlpool       = Low.Whirlpool         -- "Whirlpool"
hashName Adler32         = Low.Adler32          -- "Adler32"
hashName CRC24           = Low.CRC24            -- "CRC24"
hashName CRC32           = Low.CRC32            -- "CRC32"
-- hashName (Parallel ha hb)   = "Parallel(" <> hashName ha <> "," <> hashName hb <> ")"
-- hashName (Comb4P ha hb)     = "Comb4P(" <> hashName ha <> "," <> hashName hb <> ")"

-- NOTE: SIZE IN BYTES
hashDigestSize :: Hash -> Int
hashDigestSize (BLAKE2b n)    = div n 8
hashDigestSize GOST_34_11     = 32
hashDigestSize Keccak1600_224 = 28
hashDigestSize Keccak1600_256 = 32
hashDigestSize Keccak1600_384 = 48
hashDigestSize Keccak1600_512 = 64
hashDigestSize MD4            = 16
hashDigestSize MD5            = 16
hashDigestSize RIPEMD160      = 20
hashDigestSize SHA1           = 20
hashDigestSize SHA224         = 28
hashDigestSize SHA256         = 32
hashDigestSize SHA384         = 48
hashDigestSize SHA512         = 64
hashDigestSize SHA512_256     = 32
hashDigestSize SHA3_224       = 28
hashDigestSize SHA3_256       = 32
hashDigestSize SHA3_384       = 48
hashDigestSize SHA3_512       = 64
hashDigestSize (SHAKE128 n)   = div n 8
hashDigestSize (SHAKE256 n)   = div n 8
hashDigestSize SM3            = 32
hashDigestSize (Skein512 n _) = div n 8
hashDigestSize Streebog256    = 32
hashDigestSize Streebog512    = 64
hashDigestSize Whirlpool      = 64
hashDigestSize Adler32        = 4
hashDigestSize CRC24          = 3
hashDigestSize CRC32          = 4
-- hashDigestSize (Parallel ha hb) = undefined
-- hashDigestSize (Comb4P ha hb)   = undefined
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

-- NOTE: SIZE IN BITS
hashBlockSize :: Hash -> Int
hashBlockSize (BLAKE2b _)    = 128
hashBlockSize GOST_34_11     = 32
hashBlockSize Keccak1600_224 = 144
hashBlockSize Keccak1600_256 = 136
hashBlockSize Keccak1600_384 = 104
hashBlockSize Keccak1600_512 = 72
hashBlockSize MD4            = 64
hashBlockSize MD5            = 64
hashBlockSize RIPEMD160      = 64
hashBlockSize SHA1           = 64
hashBlockSize SHA224         = 64
hashBlockSize SHA256         = 64
hashBlockSize SHA384         = 128
hashBlockSize SHA512         = 128
hashBlockSize SHA512_256     = 128
hashBlockSize SHA3_224       = 144
hashBlockSize SHA3_256       = 136
hashBlockSize SHA3_384       = 104
hashBlockSize SHA3_512       = 72
hashBlockSize (SHAKE128 _)   = 168
hashBlockSize (SHAKE256 _)   = 136
hashBlockSize SM3            = 64
hashBlockSize (Skein512 _ _) = 64
hashBlockSize Streebog256    = 64
hashBlockSize Streebog512    = 64
hashBlockSize Whirlpool      = 64
hashBlockSize Adler32        = error "Unimplemented: checksumBlockSize"
hashBlockSize CRC24          = error "Unimplemented: checksumBlockSize"
hashBlockSize CRC32          = error "Unimplemented: checksumBlockSize"
{-# WARNING hashBlockSize "Unimplemented for: Adler32, CRC24, CRC32" #-}
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

-- Idiomatic algorithm

hash :: Hash -> ByteString -> HashDigest
hash h bs = unsafePerformIO $ do
    ctx <- newHash h
    updateFinalizeHash ctx bs
{-# NOINLINE hash #-}

hashChunks :: Hash -> [ ByteString ] -> HashDigest
hashChunks h bss = unsafePerformIO $ do
    ctx <- newHash h
    updateHashChunks ctx bss
    finalizeHash ctx
{-# NOINLINE hashChunks #-}

hashLazy :: Hash -> Lazy.ByteString -> HashDigest
hashLazy h bs = hashChunks h (Lazy.toChunks bs)
-- hashLazy h bs = unsafePerformIO $ do
--     ctx <- newHash h
--     updateHashChunks ctx (Lazy.toChunks bs)
--     finalizeHash ctx
-- {-# NOINLINE hashLazy #-}

hashFile :: (MonadIO m) => Hash -> FilePath -> m HashDigest
hashFile h fp = hash h <$> liftIO (ByteString.readFile fp)

hashFileLazy :: (MonadIO m) => Hash -> FilePath -> m HashDigest
hashFileLazy h fp = do
    bs <- liftIO $ Lazy.readFile fp
    -- Seq is probably unnecessary
    let d = hashLazy h bs
        in d `seq` return d

--
-- Mutable interface
--

-- Tagged mutable context

data MutableHash = MkMutableHash
    { mutableHashType :: Hash
    , mutableHashCtx  :: Low.Hash
    }

-- Destructor

destroyHash
    :: (MonadIO m)
    => MutableHash
    -> m ()
destroyHash = liftIO . Low.hashDestroy . (.mutableHashCtx)

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
getHashName = liftIO . Low.hashName . (.mutableHashCtx)

getHashBlockSize
    :: (MonadIO m)
    => MutableHash
    -> m Int
getHashBlockSize = liftIO . Low.hashBlockSize . (.mutableHashCtx)

getHashDigestSize
    :: (MonadIO m)
    => MutableHash
    -> m Int
getHashDigestSize = liftIO . Low.hashOutputLength . (.mutableHashCtx)

-- Accessory functions

copyHashState
    :: (MonadIO m)
    => MutableHash
    -> m MutableHash
copyHashState mh = do
    ctx <- liftIO $ Low.hashCopyState mh.mutableHashCtx
    return $ MkMutableHash mh.mutableHashType ctx

clearHash
    :: (MonadIO m)
    => MutableHash
    -> m ()
clearHash = liftIO . Low.hashClear . (.mutableHashCtx)

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
updateHashChunks mh chunks =
    liftIO $ traverse_ (Low.hashUpdate mh.mutableHashCtx) chunks

finalizeHash
    :: (MonadIO m)
    => MutableHash
    -> m HashDigest
finalizeHash = liftIO . Low.hashFinal . (.mutableHashCtx)

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
blake2b n | 0 < n && mod n 8 == 0 && n <= 512 = Just $ BLAKE2b n
blake2b _ = Nothing

gost_34_11 :: Hash
gost_34_11 = GOST_34_11

keccak1600_224 :: Hash
keccak1600_224 = Keccak1600_224

keccak1600_256 :: Hash
keccak1600_256 = Keccak1600_256

keccak1600_384 :: Hash
keccak1600_384 = Keccak1600_384

keccak1600_512 :: Hash
keccak1600_512 = Keccak1600_512

keccak1600 :: Int -> Maybe Hash
keccak1600 224 = Just keccak1600_224
keccak1600 256 = Just keccak1600_256
keccak1600 384 = Just keccak1600_384
keccak1600 512 = Just keccak1600_512
keccak1600 _   = Nothing

md4 :: Hash
md4 = MD4

md5 :: Hash
md5 = MD5

ripemd160 :: Hash
ripemd160 = RIPEMD160

sha1 :: Hash
sha1 = SHA1

sha2_224 :: Hash
sha2_224 = SHA224

sha2_256 :: Hash
sha2_256 = SHA256

sha2_384 :: Hash
sha2_384 = SHA384

sha2_512 :: Hash
sha2_512 = SHA512

sha2_512_256 :: Hash
sha2_512_256 = SHA512_256

sha2 :: Int -> Maybe Hash
sha2 224 = Just sha2_224
sha2 256 = Just sha2_256
sha2 384 = Just sha2_384
sha2 512 = Just sha2_512
sha2 _   = Nothing

sha3_224 :: Hash
sha3_224 = SHA3_224

sha3_256 :: Hash
sha3_256 = SHA3_256

sha3_384 :: Hash
sha3_384 = SHA3_384

sha3_512 :: Hash
sha3_512 = SHA3_512

sha3 :: Int -> Maybe Hash
sha3 224 = Just sha3_224
sha3 256 = Just sha3_256
sha3 384 = Just sha3_384
sha3 512 = Just sha3_512
sha3 _   = Nothing

shake128 :: Int -> Maybe Hash
shake128 n | 0 < n && mod n 8 == 0 && n <= 512 = Just $ SHAKE128 n
shake128 _ = Nothing

shake256 :: Int -> Maybe Hash
shake256 n | 0 < n && mod n 8 == 0 && n <= 512 = Just $ SHAKE256 n
shake256 _ = Nothing

sm3 :: Hash
sm3 = SM3

skein512 :: Int -> ByteString -> Maybe Hash
skein512 n salt | 0 < n && mod n 8 == 0 && n <= 512 = Just $ Skein512 n salt
skein512 _ _ = Nothing

streebog256 :: Hash
streebog256 = Streebog256

streebog512 :: Hash
streebog512 = Streebog512

whirlpool :: Hash
whirlpool   = Whirlpool

adler32 :: Hash
adler32     = Adler32

crc24 :: Hash
crc24       = CRC24

crc32 :: Hash
crc32       = CRC32
