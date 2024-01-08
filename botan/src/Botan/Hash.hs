module Botan.Hash
( MutableHash(..)
, Low.HashName(..)
, Low.HashDigest(..)
, hashCtxInitName
, hashCtxUpdate
, hashCtxUpdates
, hashCtxFinalize
, hashCtxName
, hashCtxBlockSize
, hashCtxDigestSize
, hashWithName
, hashWithHashCtx
-- , hash
-- , hashLazy
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
, Hash(..)
, hashName
, hashCtxInitIO
, hashWithHashIO
, hashCtxInit
, hashWithHash
) where

import qualified Data.ByteString as ByteString

import Data.Foldable

import qualified Botan.Low.Hash as Low

import Botan.Error ()
import Botan.Prelude
import Botan.Utility

-- NOTE: In comparison to botan-low functions which explicitly mutate context state,
--  these functions attempt to be referentially transparent by copying state.

type MutableHash = Low.Hash

-- cryptonite-like interface

hashCtxInitName :: Low.HashName -> Low.Hash
hashCtxInitName = unsafePerformIO1 Low.hashInit

hashCtxUpdate :: Low.Hash -> ByteString -> Low.Hash
hashCtxUpdate ctx bytes = hashCtxUpdates ctx [bytes]

hashCtxUpdates :: Low.Hash -> [ByteString] -> Low.Hash
hashCtxUpdates ctx chunks = unsafePerformIO $ do
    ctx' <- Low.hashCopyState ctx
    traverse_ (Low.hashUpdate ctx') chunks
    return ctx'

-- NOTE hashFinalize vs hashFinal
hashCtxFinalize :: Low.Hash -> Low.HashDigest
hashCtxFinalize ctx = unsafePerformIO $ do
    ctx' <- Low.hashCopyState ctx -- Determine whether this is necessary. Does finalize ever mutate the context?
    Low.hashFinal ctx'

hashCtxName :: Low.Hash -> ByteString
hashCtxName = unsafePerformIO1 Low.hashName

hashCtxBlockSize :: Low.Hash -> Int
hashCtxBlockSize = unsafePerformIO1 Low.hashBlockSize

-- NOTE: hashDigestSize vs hashOutputLength
hashCtxDigestSize :: Low.Hash -> Int
hashCtxDigestSize = unsafePerformIO1 Low.hashOutputLength

-- Convenience

hashWithHashCtx :: Low.Hash -> ByteString -> Low.HashDigest
hashWithHashCtx = unsafePerformIO2 Low.hashWithHash

hashWithName :: Low.HashName -> ByteString -> Low.HashDigest
hashWithName = unsafePerformIO2 Low.hashWithName

-- Hash spec

type BLAKE2bSize = Int      -- 1-64 bytes, eg: 8-512 in multiples of 8
-- data BLAKE2bSpec = BLAKE2b BLAKE2bSize

-- type Keccak1600Size = Int
data Keccak1600
    = Keccak1600_224
    | Keccak1600_256
    | Keccak1600_384
    | Keccak1600_512
    deriving (Show, Eq)

keccak1600Name :: Keccak1600 -> Low.HashName
keccak1600Name Keccak1600_224 = Low.keccak_1600' 224 -- "Keccak-1600(224)"
keccak1600Name Keccak1600_256 = Low.keccak_1600' 256 -- "Keccak-1600(256)"
keccak1600Name Keccak1600_384 = Low.keccak_1600' 384 -- "Keccak-1600(384)"
keccak1600Name Keccak1600_512 = Low.keccak_1600' 512 -- "Keccak-1600(512)"

data SHA2
    = SHA224
    | SHA256
    | SHA384
    | SHA512
    | SHA512_256
    deriving (Show, Eq)

sha2Name :: SHA2 -> Low.HashName
sha2Name SHA224     = Low.SHA_224       -- "SHA-224"
sha2Name SHA256     = Low.SHA_256       -- "SHA-256"
sha2Name SHA512     = Low.SHA_512       -- "SHA-512"
sha2Name SHA384     = Low.SHA_384       -- "SHA-384"
sha2Name SHA512_256 = Low.SHA_512_256   -- "SHA-512-256"

-- type SHA3Size = Int
data SHA3
    = SHA3_224
    | SHA3_256
    | SHA3_384
    | SHA3_512
    deriving (Show, Eq)

sha3Name :: SHA3 -> Low.HashName
sha3Name SHA3_224 = Low.sha_3' 224 -- "SHA-3(224)"
sha3Name SHA3_256 = Low.sha_3' 256 -- "SHA-3(256)"
sha3Name SHA3_384 = Low.sha_3' 384 -- "SHA-3(384)"
sha3Name SHA3_512 = Low.sha_3' 512 -- "SHA-3(512)"

type SHAKE128Size = Int
-- data SHAKE128Spec = SHAKE128 SHAKE128Size

type SHAKE256Size = Int
-- data SHAKE256Spec = SHAKE256 SHAKE256Size

type Skein512Size = Int
type Skein512Salt = ByteString  -- Must not contain ")", can contain "," if escaped, best use ASCII text
-- data Skein512Spec = Skein512 Skein512Size Skein512Salt

-- SomeHash
data Hash
    -- Cryptographic hashes
    = BLAKE2b BLAKE2bSize
    | GOST_34_11
    -- | Keccak1600 Keccak1600Size
    | Keccak1600 Keccak1600
    | MD4
    | MD5
    | RIPEMD160
    -- | SHA160    -- SHA1
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
    -- Combination strategies
    -- | Parallel Hash Hash
    -- | Comb4P Hash Hash
    -- Checksums -- TODO: Split off checksums from cryptohashes
    | Adler32
    | CRC24
    | CRC32
    deriving (Show, Eq)

-- data Hash
--     = Cryptohash Cryptohash
--     | Checksum Checksum

-- data Checksum
--     = Adler32
--     | CRC24
--     | CRC32

-- TODO: Proper parser-builder
-- TODO: Take advantage of functions in botan-low
hashName :: Hash -> Low.HashName
hashName spec = case spec of
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
    -- Combination strategies
    -- Parallel ha hb  -> "Parallel(" <> hashName ha <> "," <> hashName hb <> ")"
    -- Comb4P ha hb    -> "Comb4P(" <> hashName ha <> "," <> hashName hb <> ")"
    -- Checksums
    Adler32         -> Low.Adler32          -- "Adler32"
    CRC24           -> Low.CRC24            -- "CRC24"
    CRC32           -> Low.CRC32            -- "CRC32"

hashCtxInitIO :: Hash -> IO Low.Hash
hashCtxInitIO = Low.hashInit . hashName

hashWithHashIO :: Hash -> ByteString -> IO Low.HashDigest
hashWithHashIO spec bytes = do
    ctx <- hashCtxInitIO spec
    Low.hashWithHash ctx bytes

hashCtxInit :: Hash -> Low.Hash
hashCtxInit = unsafePerformIO1 hashCtxInitIO

hashWithHash :: Hash -> ByteString -> Low.HashDigest
hashWithHash = unsafePerformIO2 hashWithHashIO
