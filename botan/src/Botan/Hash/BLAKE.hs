module Botan.Hash.BLAKE
( BLAKE2b(..)
, BLAKE2bDigest(..)
, blake2b
, blake2bLazy
) where

import           GHC.TypeLits

import           Data.Maybe
import           Data.Proxy

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import           Botan.Hash.Class
import           Botan.Prelude

-- BLAKE2b type

data BLAKE2b (n :: Nat)

type BLAKE2bSize (n :: Nat) = (KnownNat n, (1 <=? n) ~ True, Mod n 8 ~ 0, (n <=? 512) ~ True)

type BLAKE2bDigest n = Digest (BLAKE2b n)

newtype instance Digest (BLAKE2b n) = BLAKE2bDigest
    { getBLAKE2bByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

instance Show (Digest (BLAKE2b n)) where
    show :: Digest (BLAKE2b n) -> String
    show (BLAKE2bDigest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance (BLAKE2bSize n) => Hash (BLAKE2b n) where
    hash :: ByteString -> Digest (BLAKE2b n)
    hash = BLAKE2bDigest . Botan.hash h where
        n = fromInteger $ natVal $ Proxy @n
        h = fromJust $ Botan.blake2b n

instance (BLAKE2bSize n) => IncrementalHash (BLAKE2b n) where
    hashLazy :: Lazy.ByteString -> Digest (BLAKE2b n)
    hashLazy = BLAKE2bDigest . Botan.hashLazy h where
        n = fromInteger $ natVal $ Proxy @n
        h = fromJust $ Botan.blake2b n

-- BLAKE2b hash

blake2b :: (BLAKE2bSize n) => ByteString -> BLAKE2bDigest n
blake2b = hash

blake2bLazy :: (BLAKE2bSize n) => Lazy.ByteString -> BLAKE2bDigest n
blake2bLazy = hashLazy
