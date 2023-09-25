module Crypto.Hash.MD5
( MD5(..)
, MD5Digest(..)
, md5
) where

import qualified Data.ByteString as ByteString
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import Crypto.Hash
import Crypto.Prelude

-- MD5 type

data MD5

newtype instance Ctx MD5 = MD5Ctx
    { getMD5Ctx :: Botan.HashCtx }

newtype instance Digest MD5 = MD5Digest
    { getMD5ByteString :: ByteString {- ByteVector 16 -} }
    deriving newtype (Eq, Ord)

type MD5Ctx = Ctx MD5
type MD5Digest = Digest MD5

-- MD5 instances

instance Show (Digest MD5) where
    show :: Digest MD5 -> String
    show (MD5Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash MD5 where
    hashWithCtx :: Ctx MD5 -> ByteString -> Digest MD5
    hashWithCtx (MD5Ctx ctx) bytes = MD5Digest $ Botan.hashWithHashCtx ctx bytes

instance IncrementalHash MD5 where

    hashInit :: MD5Ctx
    hashInit = MD5Ctx $ Botan.hashCtxInit Botan.MD5

    hashUpdate :: MD5Ctx -> ByteString -> MD5Ctx
    hashUpdate (MD5Ctx ctx) bytes = MD5Ctx $ Botan.hashCtxUpdate ctx bytes

    hashUpdates :: MD5Ctx -> [ByteString] -> MD5Ctx
    hashUpdates (MD5Ctx ctx) chunks = MD5Ctx $ Botan.hashCtxUpdates ctx chunks

    hashFinalize :: MD5Ctx -> MD5Digest
    hashFinalize (MD5Ctx ctx) = MD5Digest $ Botan.hashCtxFinalize ctx

-- MD5 hash

md5 :: ByteString -> MD5Digest
md5 = hash
