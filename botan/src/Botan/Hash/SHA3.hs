module Botan.Hash.SHA3
( SHA3(..)
, SHA3Digest(..)
, sha3
, sha3Lazy
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

-- SHA3 type

data SHA3 (n :: Nat)

type SHA3Size (n :: Nat) = (KnownNat n, (n == 224 || n == 256 || n == 384 || n == 512) ~ True)

type SHA3Digest n = Digest (SHA3 n)

newtype instance Digest (SHA3 n) = SHA3Digest
    { getSHA3ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

instance Show (Digest (SHA3 n)) where
    show :: Digest (SHA3 n) -> String
    show (SHA3Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance (SHA3Size n) => Hash (SHA3 n) where
    hash :: ByteString -> Digest (SHA3 n)
    hash = SHA3Digest . Botan.hash h where
        n = fromInteger $ natVal $ Proxy @n
        h = fromJust $ Botan.sha3 n

instance (SHA3Size n) => IncrementalHash (SHA3 n) where
    hashLazy :: Lazy.ByteString -> Digest (SHA3 n)
    hashLazy = SHA3Digest . Botan.hashLazy h where
        n = fromInteger $ natVal $ Proxy @n
        h = fromJust $ Botan.sha3 n

-- SHA3 hash

sha3 :: (SHA3Size n) => ByteString -> SHA3Digest n
sha3 = hash

sha3Lazy :: (SHA3Size n) => Lazy.ByteString -> SHA3Digest n
sha3Lazy = hashLazy
