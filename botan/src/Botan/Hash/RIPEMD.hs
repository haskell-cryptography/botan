module Botan.Hash.RIPEMD
( RIPEMD160(..)
, RIPEMD160Digest(..)
, ripemd160
, ripemd160Lazy
) where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import Botan.Hash.Class -- Crypto.Hash
import Botan.Prelude

-- RIPEMD160 type

data RIPEMD160

newtype instance Digest RIPEMD160 = RIPEMD160Digest
    { getRIPEMD160ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type RIPEMD160Digest = Digest RIPEMD160

instance Show (Digest RIPEMD160) where
    show :: Digest RIPEMD160 -> String
    show (RIPEMD160Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash RIPEMD160 where
    hash :: ByteString -> Digest RIPEMD160
    hash = RIPEMD160Digest . Botan.hash Botan.ripemd160

instance IncrementalHash RIPEMD160 where
    hashLazy :: Lazy.ByteString -> Digest RIPEMD160
    hashLazy = RIPEMD160Digest . Botan.hashLazy Botan.ripemd160

-- RIPEMD160 hash

ripemd160 :: ByteString -> RIPEMD160Digest
ripemd160 = hash

ripemd160Lazy :: Lazy.ByteString -> RIPEMD160Digest
ripemd160Lazy = hashLazy
