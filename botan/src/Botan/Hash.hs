{-# LANGUAGE InstanceSigs #-}
module Botan.Hash
( HashName(..)
, HashCtx
, HashDigest(..)
, hashCtxInit
, hashCtxUpdate
, hashCtxUpdates
, hashCtxFinalize
, hashCtxName
, hashCtxBlockSize
, hashCtxDigestSize
, hashWithName
, hashWithHashCtx
, hashWithHashCtxIO
-- , hash
-- , hashLazy
, Ctx(..)
, Digest(..)
, Hash(..)
, IncrementalHash(..)
, MD5(..)
, MD5Digest(..)
, hash
, Blake2bSize(..)
, Keccak1600Size(..)
, Sha3Size(..)
, SHAKE128Size(..)
, SHAKE256Size(..)
, Skein512Size(..)
, Skein512Salt(..)
, HashSpec(..)
, hashSpecName
, hashCtxInitWithSpec
, hashWithSpec
) where

import qualified Data.ByteString as ByteString

import Data.Foldable

import qualified Botan.Low.Hash as Low

import Botan.Error
import Botan.Prelude
import Botan.Utility

import qualified Data.Text as Text

-- TODO: Parametric type families / fundeps: Ctx a, Digest a, 

-- TODO: Push down to botan-low, make proper parametric types
type HashName = ByteString
type HashCtx = Low.Hash -- SomeHashCtx
type HashDigest = ByteString


-- NOTE: In comparison to botan-low functions which explicitly mutate context state,
--  these functions attempt to be referentially transparent by copying state

-- cryptonite-like interface

hashCtxInit :: HashName -> HashCtx
hashCtxInit name = unsafePerformIO $ Low.hashInit name

hashCtxUpdate :: HashCtx -> ByteString -> HashCtx
hashCtxUpdate ctx bytes = hashCtxUpdates ctx [bytes]

hashCtxUpdates :: HashCtx -> [ByteString] -> HashCtx
hashCtxUpdates ctx chunks = unsafePerformIO $ do
    ctx' <- Low.hashCopyState ctx
    traverse (Low.hashUpdate ctx') chunks
    return ctx'

-- NOTE hashFinalize vs hashFinal
hashCtxFinalize :: HashCtx -> HashDigest
hashCtxFinalize ctx = unsafePerformIO $ do
    ctx' <- Low.hashCopyState ctx
    Low.hashFinal ctx'

hashCtxName :: HashCtx -> ByteString
hashCtxName = unsafePerformIO1 Low.hashName

hashCtxBlockSize :: HashCtx -> Int
hashCtxBlockSize = unsafePerformIO1 Low.hashBlockSize

-- NOTE: hashDigestSize vs hashOutputLength
hashCtxDigestSize :: HashCtx -> Int
hashCtxDigestSize = unsafePerformIO1 Low.hashOutputLength

-- Convenience

hashWithName :: HashName -> ByteString -> HashDigest
-- NOTE: It should be safe to do:
--  hash name bytes = hashFinalize (hashUpdate (hashInit name) bytes)
-- However, this avoids the extra copying that we implemented for
-- referential transparency
hashWithName name bytes = unsafePerformIO $ do
    ctx <- Low.hashInit name
    hashWithHashCtxIO ctx bytes

-- Conceptually, this is just:
--  hashWithHashCtx ctx = hashCtxFinalize . hashCtxUpdate ctx
-- But we'd like to keep unsafePerformIO at the top
hashWithHashCtx :: HashCtx -> ByteString -> HashDigest
hashWithHashCtx ctx bytes = unsafePerformIO $ hashWithHashCtxIO ctx bytes

-- NOTE: Performs a clear after
hashWithHashCtxIO :: HashCtx -> ByteString -> IO HashDigest
hashWithHashCtxIO ctx bytes = do
    Low.hashUpdate ctx bytes
    dg <- Low.hashFinal ctx
    Low.hashClear ctx
    return dg
    
-- Data family style
--  Enables type-applications to control algorithm
--      ghci> hash @MD5 "Fee fi fo fum!"
--      4ccde4309739596c2a622e6809948ba0

data family Ctx a
data family Digest a

class Hash a where
    hashWithCtx :: Ctx a -> ByteString -> Digest a

class (Hash a) => IncrementalHash a where
    hashInit :: Ctx a
    hashUpdate :: Ctx a -> ByteString -> Ctx a
    hashUpdates :: Ctx a -> [ByteString] -> Ctx a
    hashFinalize :: Ctx a -> Digest a

data MD5

newtype instance Ctx MD5 = MD5Ctx
    { getMD5Ctx :: HashCtx }

newtype instance Digest MD5 = MD5Digest
    { getMD5ByteString :: ByteString {- ByteVector 16 -} }
    deriving newtype (Eq, Ord)

type MD5Ctx = Ctx MD5
type MD5Digest = Digest MD5

instance Show (Digest MD5) where
    show :: Digest MD5 -> String
    show (MD5Digest bytes) = Text.unpack $ hexEncode bytes Lower

instance Hash MD5 where
    hashWithCtx :: Ctx MD5 -> ByteString -> Digest MD5
    hashWithCtx (MD5Ctx ctx) bytes = MD5Digest $ hashWithHashCtx ctx bytes

instance IncrementalHash MD5 where

    hashInit :: MD5Ctx
    hashInit = MD5Ctx $ hashCtxInit "MD5"

    hashUpdate :: MD5Ctx -> ByteString -> MD5Ctx
    hashUpdate (MD5Ctx ctx) bytes = MD5Ctx $ hashCtxUpdate ctx bytes

    hashUpdates :: MD5Ctx -> [ByteString] -> MD5Ctx
    hashUpdates (MD5Ctx ctx) chunks = MD5Ctx $ hashCtxUpdates ctx chunks

    hashFinalize :: MD5Ctx -> MD5Digest
    hashFinalize (MD5Ctx ctx) = MD5Digest $ hashCtxFinalize ctx

hash :: (IncrementalHash a) => ByteString -> Digest a
hash = hashFinalize . hashUpdate hashInit

-- TODO: hashLazy :: (IncrementalHash a) => Lazy.ByteString -> Digest a

-- Hash spec

type Blake2bSize = Int      -- 256, 512

type Keccak1600Size = Int   -- 224, 256, 384, 512

type Sha3Size = Int         -- 224, 256, 384, 512

type SHAKE128Size = Int

type SHAKE256Size = Int

type Skein512Size = Int
type Skein512Salt = ByteString  -- Must not contain ")", can contain "," if escaped, best use ASCII text

-- SomeHashSpec
data HashSpec
    -- Cryptographic hashes
    = Blake2b Blake2bSize                   -- = Blake2b Blake2bSpec
    | Keccak1600 Keccak1600Size             -- | Keccak1600 Keccak1600Spec
    | MD4
    | MD5
    | RIPEMD160
    | SHA160
    | SHA224
    | SHA256
    | SHA512
    | SHA384
    | SHA512_256
    | SHA3 Sha3Size                         -- | SHA3 SHA3Spec
    | SHAKE128 SHAKE128Size                 -- | SHAKE128 SHAKE128Spec
    | SHAKE256 SHAKE256Size                 -- | SHAKE256 SHAKE256Spec
    | SM3
    | Skein512 Skein512Size Skein512Salt    -- | Skein512 Skein512Spec
    | Streebog256
    | Streebog512
    | Whirlpool
    -- Combination strategies
    | Parallel HashSpec HashSpec
    | Comb4P HashSpec HashSpec
    -- Checksums
    | Adler32
    | CRC24
    | CRC32
    deriving (Show, Eq)

hashSpecName :: HashSpec -> HashName
hashSpecName h = case h of
    -- Cryptographic hashes
    Blake2b sz      -> "Blake2b(" <> showBytes sz <> ")"
    Keccak1600 sz   -> "Keccak-1600(" <> showBytes sz <> ")"
    MD4             -> "MD4"
    MD5             -> "MD5"
    RIPEMD160       -> "RIPEMD-160"
    SHA160          -> "SHA-160"
    SHA224          -> "SHA-224"
    SHA256          -> "SHA-256"
    SHA512          -> "SHA-512"
    SHA384          -> "SHA-384"
    SHA512_256      -> "SHA-512-256"
    SHA3 sz         -> "SHA-3(" <> showBytes sz <> ")"
    SHAKE128 sz     -> "SHAKE-128(" <> showBytes sz <> ")"
    SHAKE256 sz     -> "SHAKE-256(" <> showBytes sz <> ")"
    SM3             -> "SM3"
    Skein512 sz b   -> ByteString.concat [ "Skein-512(" , showBytes sz , ",", b , ")" ]
    Streebog256     -> "Streebog-256"
    Streebog512     -> "Streebog-512"
    Whirlpool       -> "Whirlpool"
    -- Combination strategies
    Parallel ha hb  -> ByteString.concat [ "Parallel(", hashSpecName ha, ",", hashSpecName hb, ")"]
    Comb4P ha hb    -> ByteString.concat [ "Comb4P(", hashSpecName ha, ",", hashSpecName hb, ")"]
    -- Checksums
    Adler32         -> "Adler32"
    CRC24           -> "CRC24"
    CRC32           -> "CRC32"

hashCtxInitWithSpec :: HashSpec -> HashCtx
hashCtxInitWithSpec = hashCtxInit . hashSpecName

hashWithSpec :: HashSpec -> ByteString -> HashDigest
hashWithSpec spec = hashWithHashCtx (hashCtxInitWithSpec spec)

{-
import Botan.Hash
import Botan.Utility
-- Simplest, takes a name and spits out a bytestring
a = hashWithName "MD5" "Fee fi fo fum!"
:t a
flip hexEncode Lower a
-- Using type spec enum, still spits out a bytestring
b = hashWithSpec MD5 "Fee fi fo fum!"
:t b
flip hexEncode Lower b
-- What I'm thinking as the outer layer
c = hash @MD5 "Fee fi fo fum!"
:t c
print c
-- Once more with type inference
(d :: Digest MD5) = hash "Fee fi fo fum!"
print d
-}
