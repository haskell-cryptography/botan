module Botan.Hash.Whirlpool
( Whirlpool(..)
, WhirlpoolDigest(..)
, whirlpool
, whirlpoolLazy
) where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import           Botan.Hash.Class
import           Botan.Prelude

-- Whirlpool type

data Whirlpool

newtype instance Digest Whirlpool = WhirlpoolDigest
    { getWhirlpoolByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type WhirlpoolDigest = Digest Whirlpool

instance Show (Digest Whirlpool) where
    show :: Digest Whirlpool -> String
    show (WhirlpoolDigest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash Whirlpool where
    hash :: ByteString -> Digest Whirlpool
    hash = WhirlpoolDigest . Botan.hash Botan.whirlpool

instance IncrementalHash Whirlpool where
    hashLazy :: Lazy.ByteString -> Digest Whirlpool
    hashLazy = WhirlpoolDigest . Botan.hashLazy Botan.whirlpool

-- Whirlpool hash

whirlpool :: ByteString -> WhirlpoolDigest
whirlpool = hash

whirlpoolLazy :: Lazy.ByteString -> WhirlpoolDigest
whirlpoolLazy = hashLazy
