module Botan.Hash.Keccak
( Keccak1600(..)
, Keccak1600Digest(..)
, keccak1600
, keccak1600Lazy
) where

import GHC.TypeLits

import Data.Maybe
import Data.Proxy

import Data.Type.Bool
import Data.Type.Equality

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import Botan.Hash.Class
import Botan.Prelude

-- Keccak1600 type

data Keccak1600 (n :: Nat)

type Keccak1600Size (n :: Nat) = (KnownNat n, (n == 224 || n == 256 || n == 384 || n == 512) ~ True)

type Keccak1600Digest n = Digest (Keccak1600 n)

newtype instance Digest (Keccak1600 n) = Keccak1600Digest
    { getKeccak1600ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

instance Show (Digest (Keccak1600 n)) where
    show :: Digest (Keccak1600 n) -> String
    show (Keccak1600Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance (Keccak1600Size n) => Hash (Keccak1600 n) where
    hash :: ByteString -> Digest (Keccak1600 n)
    hash = Keccak1600Digest . Botan.hash h where
        n = fromInteger $ natVal $ Proxy @n
        h = fromJust $ Botan.keccak1600 n
instance (Keccak1600Size n) => IncrementalHash (Keccak1600 n) where
    hashLazy :: Lazy.ByteString -> Digest (Keccak1600 n)
    hashLazy = Keccak1600Digest . Botan.hashLazy h where
        n = fromInteger $ natVal $ Proxy @n
        h = fromJust $ Botan.keccak1600 n

-- Keccak1600 hash

keccak1600 :: (Keccak1600Size n) => ByteString -> Keccak1600Digest n
keccak1600 = hash

keccak1600Lazy :: (Keccak1600Size n) => Lazy.ByteString -> Keccak1600Digest n
keccak1600Lazy = hashLazy
