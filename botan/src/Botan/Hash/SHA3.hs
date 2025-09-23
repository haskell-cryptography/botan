{-# LANGUAGE DataKinds    #-}
{-# LANGUAGE TypeFamilies #-}

module Botan.Hash.SHA3 (
    SHA3
  , SHA3Size
  , SHA3Digest
  , sha3
  , sha3Lazy
  , SHA3_224
  , SHA3_224Digest
  , sha3_224
  , sha3_224Lazy
  , SHA3_256
  , SHA3_256Digest
  , sha3_256
  , sha3_256Lazy
  , SHA3_384
  , SHA3_384Digest
  , sha3_384
  , sha3_384Lazy
  , SHA3_512
  , SHA3_512Digest
  , sha3_512
  , sha3_512Lazy
  ) where

import           GHC.TypeLits

import           Data.Maybe
import           Data.Proxy

import           Data.Type.Bool
import           Data.Type.Equality

import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import           Botan.Hash.Class
import           Botan.Prelude

-- SHA3 type

data SHA3 (n :: Nat)

-- NOTE: This produces some nasty errors
type SHA3Size (n :: Nat) = (KnownNat n, (n == 224 || n == 256 || n == 384 || n == 512) ~ True)

type SHA3Digest n = Digest (SHA3 n)

newtype instance Digest (SHA3 n) = SHA3Digest
    { _getSHA3ByteString :: ByteString {- ByteVector n -} }
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

type SHA3_224 = SHA3 224
type SHA3_224Digest = SHA3Digest 224

sha3_224 :: ByteString -> SHA3_224Digest
sha3_224 = sha3 @224

sha3_224Lazy :: Lazy.ByteString -> SHA3_224Digest
sha3_224Lazy = sha3Lazy @224

type SHA3_256 = SHA3 256
type SHA3_256Digest = SHA3Digest 256

sha3_256 :: ByteString -> SHA3_256Digest
sha3_256 = sha3 @256

sha3_256Lazy :: Lazy.ByteString -> SHA3_256Digest
sha3_256Lazy = sha3Lazy @256

type SHA3_384 = SHA3 384
type SHA3_384Digest = SHA3Digest 384

sha3_384 :: ByteString -> SHA3_384Digest
sha3_384 = sha3 @384

sha3_384Lazy :: Lazy.ByteString -> SHA3_384Digest
sha3_384Lazy = sha3Lazy @384

type SHA3_512 = SHA3 512
type SHA3_512Digest = SHA3Digest 512

sha3_512 :: ByteString -> SHA3_512Digest
sha3_512 = sha3 @512

sha3_512Lazy :: Lazy.ByteString -> SHA3_512Digest
sha3_512Lazy = sha3Lazy @512
