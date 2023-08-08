module Crypto.Hash.MD5
( MD5(..)
, MD5Digest(..)
, md5
) where

import qualified Data.ByteString as ByteString
import qualified Data.Text as Text

import Botan.Hash
import Botan.Utility

import Crypto.Hash
import Crypto.Prelude

-- MD5 type

data MD5

newtype instance Ctx MD5 = MD5Ctx
    { getMD5Ctx :: HashCtx }

newtype instance Digest MD5 = MD5Digest
    { getMD5ByteString :: ByteString {- ByteVector 16 -} }
    deriving newtype (Eq, Ord)

type MD5Ctx = Ctx MD5
type MD5Digest = Digest MD5

-- MD5 instances

instance Show (Digest MD5) where
    show :: Digest MD5 -> String
    show (MD5Digest bytes) = Text.unpack $ hexEncode bytes Lower

instance IsHash MD5 where
    hashWithCtx :: Ctx MD5 -> ByteString -> Digest MD5
    hashWithCtx (MD5Ctx ctx) bytes = MD5Digest $ hashWithHashCtx ctx bytes

instance IsIncrementalHash MD5 where

    hashInit :: MD5Ctx
    hashInit = MD5Ctx $ hashCtxInitHash MD5

    hashUpdate :: MD5Ctx -> ByteString -> MD5Ctx
    hashUpdate (MD5Ctx ctx) bytes = MD5Ctx $ hashCtxUpdate ctx bytes

    hashUpdates :: MD5Ctx -> [ByteString] -> MD5Ctx
    hashUpdates (MD5Ctx ctx) chunks = MD5Ctx $ hashCtxUpdates ctx chunks

    hashFinalize :: MD5Ctx -> MD5Digest
    hashFinalize (MD5Ctx ctx) = MD5Digest $ hashCtxFinalize ctx

-- MD5 hash

md5 :: ByteString -> MD5Digest
md5 = hash
