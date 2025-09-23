{-# LANGUAGE TypeFamilies #-}

module Botan.Hash.MD5 (
    MD5
  , MD5Digest
  , md5
  , md5Lazy
  ) where

import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import           Botan.Hash.Class
import           Botan.Prelude

-- MD5 type

data MD5

newtype instance Digest MD5 = MD5Digest
    { _getMD5ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type MD5Digest = Digest MD5

instance Show (Digest MD5) where
    show :: Digest MD5 -> String
    show (MD5Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash MD5 where
    hash :: ByteString -> Digest MD5
    hash = MD5Digest . Botan.hash Botan.md5

instance IncrementalHash MD5 where
    hashLazy :: Lazy.ByteString -> Digest MD5
    hashLazy = MD5Digest . Botan.hashLazy Botan.md5

-- MD5 hash

md5 :: ByteString -> MD5Digest
md5 = hash

md5Lazy :: Lazy.ByteString -> MD5Digest
md5Lazy = hashLazy
