module Botan.Hash.MD4
( MD4(..)
, MD4Digest(..)
, md4
, md4Lazy
) where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import Botan.Hash.Class -- Crypto.Hash
import Botan.Prelude

-- MD4 type

data MD4

newtype instance Digest MD4 = MD4Digest
    { getMD4ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type MD4Digest = Digest MD4

instance Show (Digest MD4) where
    show :: Digest MD4 -> String
    show (MD4Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash MD4 where
    hash :: ByteString -> Digest MD4
    hash = MD4Digest . Botan.hash Botan.md4

instance IncrementalHash MD4 where
    hashLazy :: Lazy.ByteString -> Digest MD4
    hashLazy = MD4Digest . Botan.hashLazy Botan.md4

-- MD4 hash

md4 :: ByteString -> MD4Digest
md4 = hash

md4Lazy :: Lazy.ByteString -> MD4Digest
md4Lazy = hashLazy
