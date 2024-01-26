module Botan.Hash.SHAKE
( SHAKE128(..)
, SHAKE128Digest(..)
, shake128
, shake128Lazy
, SHAKE256(..)
, SHAKE256Digest(..)
, shake256
, shake256Lazy
) where

import GHC.TypeLits

import Data.Maybe
import Data.Proxy

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import Botan.Hash.Class
import Botan.Prelude

-- SHAKE128 type

data SHAKE128 (n :: Nat)

type SHAKE128Size (n :: Nat) = (KnownNat n, (1 <=? n) ~ True, Mod n 8 ~ 0, (n <=? 512) ~ True)

type SHAKE128Digest n = Digest (SHAKE128 n)

newtype instance Digest (SHAKE128 n) = SHAKE128Digest
    { getSHAKE128ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

instance Show (Digest (SHAKE128 n)) where
    show :: Digest (SHAKE128 n) -> String
    show (SHAKE128Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance (SHAKE128Size n) => Hash (SHAKE128 n) where
    hash :: ByteString -> Digest (SHAKE128 n)
    hash = SHAKE128Digest . Botan.hash h where
        n = fromInteger $ natVal $ Proxy @n
        h = fromJust $ Botan.shake128 n

instance (SHAKE128Size n) => IncrementalHash (SHAKE128 n) where
    hashLazy :: Lazy.ByteString -> Digest (SHAKE128 n)
    hashLazy = SHAKE128Digest . Botan.hashLazy h where
        n = fromInteger $ natVal $ Proxy @n
        h = fromJust $ Botan.shake128 n

-- SHAKE128 hash

shake128 :: (SHAKE128Size n) => ByteString -> SHAKE128Digest n
shake128 = hash

shake128Lazy :: (SHAKE128Size n) => Lazy.ByteString -> SHAKE128Digest n
shake128Lazy = hashLazy

-- SHAKE256 type

data SHAKE256 (n :: Nat)

type SHAKE256Size (n :: Nat) = (KnownNat n, (1 <=? n) ~ True, Mod n 8 ~ 0, (n <=? 512) ~ True)

type SHAKE256Digest n = Digest (SHAKE256 n)

newtype instance Digest (SHAKE256 n) = SHAKE256Digest
    { getSHAKE256ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

instance Show (Digest (SHAKE256 n)) where
    show :: Digest (SHAKE256 n) -> String
    show (SHAKE256Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance (SHAKE256Size n) => Hash (SHAKE256 n) where
    hash :: ByteString -> Digest (SHAKE256 n)
    hash = SHAKE256Digest . Botan.hash h where
        n = fromInteger $ natVal $ Proxy @n
        h = fromJust $ Botan.shake256 n

instance (SHAKE256Size n) => IncrementalHash (SHAKE256 n) where
    hashLazy :: Lazy.ByteString -> Digest (SHAKE256 n)
    hashLazy = SHAKE256Digest . Botan.hashLazy h where
        n = fromInteger $ natVal $ Proxy @n
        h = fromJust $ Botan.shake256 n

-- SHAKE256 hash

shake256 :: (SHAKE256Size n) => ByteString -> SHAKE256Digest n
shake256 = hash

shake256Lazy :: (SHAKE256Size n) => Lazy.ByteString -> SHAKE256Digest n
shake256Lazy = hashLazy
