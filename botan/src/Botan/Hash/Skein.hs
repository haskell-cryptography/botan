{-# LANGUAGE DataKinds    #-}
{-# LANGUAGE TypeFamilies #-}

module Botan.Hash.Skein (
    Skein512
  , Skein512Digest
  , Skein512'
  , Skein512Digest'
  , skein512
  , skein512Lazy
  ) where

import           GHC.TypeLits

import           Data.Maybe
import           Data.Proxy

import qualified Data.ByteString.Char8 as Char8
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import           Botan.Hash.Class
import           Botan.Prelude

-- Skein type

type Skein512 (n :: Nat) = Skein512' n ""
type Skein512Digest (n :: Nat) = Skein512Digest' n ""

data Skein512' (n :: Nat) (ps :: Symbol)
type Skein512Digest' (n :: Nat) (ps :: Symbol) = Digest (Skein512' n ps)

type SkeinSize (n :: Nat) = (KnownNat n, (1 <=? n) ~ True, Mod n 8 ~ 0, (n <=? 512) ~ True)
type SkeinPersonalizationString (ps :: Symbol) = (KnownSymbol ps)

newtype instance Digest (Skein512' n ps) = SkeinDigest
    { _getSkeinByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

instance Show (Digest (Skein512' n ps)) where
    show :: Digest (Skein512' n ps) -> String
    show (SkeinDigest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance (SkeinSize n, SkeinPersonalizationString ps) => Hash (Skein512' n ps) where
    hash :: ByteString -> Digest (Skein512' n ps)
    hash = SkeinDigest . Botan.hash h where
        n = fromInteger $ natVal $ Proxy @n
        ps = Char8.pack $ symbolVal $ Proxy @ps
        h = fromJust $ Botan.skein512 n ps

instance (SkeinSize n, SkeinPersonalizationString ps) => IncrementalHash (Skein512' n ps) where
    hashLazy :: Lazy.ByteString -> Digest (Skein512' n ps)
    hashLazy = SkeinDigest . Botan.hashLazy h where
        n = fromInteger $ natVal $ Proxy @n
        ps = Char8.pack $ symbolVal $ Proxy @ps
        h = fromJust $ Botan.skein512 n ps

-- Skein hash

skein512 :: (SkeinSize n, SkeinPersonalizationString ps) => ByteString -> Skein512Digest' n ps
skein512 = hash

skein512Lazy :: (SkeinSize n, SkeinPersonalizationString ps) => Lazy.ByteString -> Skein512Digest' n ps
skein512Lazy = hashLazy
