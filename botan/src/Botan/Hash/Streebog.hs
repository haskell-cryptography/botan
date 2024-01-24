module Botan.Hash.Streebog
( Streebog256(..)
, Streebog256Digest(..)
, streebog256
, streebog256Lazy
, Streebog512(..)
, Streebog512Digest(..)
, streebog512
, streebog512Lazy
) where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import Botan.Hash.Class -- Crypto.Hash
import Botan.Prelude

-- Streebog256 type

data Streebog256

newtype instance Digest Streebog256 = Streebog256Digest
    { getStreebog256ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type Streebog256Digest = Digest Streebog256

instance Show (Digest Streebog256) where
    show :: Digest Streebog256 -> String
    show (Streebog256Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash Streebog256 where
    hash :: ByteString -> Digest Streebog256
    hash = Streebog256Digest . Botan.hash Botan.streebog256

instance IncrementalHash Streebog256 where
    hashLazy :: Lazy.ByteString -> Digest Streebog256
    hashLazy = Streebog256Digest . Botan.hashLazy Botan.streebog256

-- Streebog256 hash

streebog256 :: ByteString -> Streebog256Digest
streebog256 = hash

streebog256Lazy :: Lazy.ByteString -> Streebog256Digest
streebog256Lazy = hashLazy

-- Streebog512 type

data Streebog512

newtype instance Digest Streebog512 = Streebog512Digest
    { getStreebog512ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type Streebog512Digest = Digest Streebog512

instance Show (Digest Streebog512) where
    show :: Digest Streebog512 -> String
    show (Streebog512Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash Streebog512 where
    hash :: ByteString -> Digest Streebog512
    hash = Streebog512Digest . Botan.hash Botan.streebog512

instance IncrementalHash Streebog512 where
    hashLazy :: Lazy.ByteString -> Digest Streebog512
    hashLazy = Streebog512Digest . Botan.hashLazy Botan.streebog512

-- Streebog512 hash

streebog512 :: ByteString -> Streebog512Digest
streebog512 = hash

streebog512Lazy :: Lazy.ByteString -> Streebog512Digest
streebog512Lazy = hashLazy

