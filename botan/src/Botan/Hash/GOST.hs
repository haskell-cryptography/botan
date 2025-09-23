{-# LANGUAGE TypeFamilies #-}

module Botan.Hash.GOST (
    GOST_34_11
  , GOST_34_11Digest
  , gost_34_11
  , gost_34_11Lazy
  ) where

import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import           Botan.Hash.Class
import           Botan.Prelude

-- GOST_34_11 type

data GOST_34_11

newtype instance Digest GOST_34_11 = GOST_34_11Digest
    { _getGOST_34_11ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type GOST_34_11Digest = Digest GOST_34_11

instance Show (Digest GOST_34_11) where
    show :: Digest GOST_34_11 -> String
    show (GOST_34_11Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash GOST_34_11 where
    hash :: ByteString -> Digest GOST_34_11
    hash = GOST_34_11Digest . Botan.hash Botan.gost_34_11

instance IncrementalHash GOST_34_11 where
    hashLazy :: Lazy.ByteString -> Digest GOST_34_11
    hashLazy = GOST_34_11Digest . Botan.hashLazy Botan.gost_34_11

-- GOST_34_11 hash

gost_34_11 :: ByteString -> GOST_34_11Digest
gost_34_11 = hash

gost_34_11Lazy :: Lazy.ByteString -> GOST_34_11Digest
gost_34_11Lazy = hashLazy
