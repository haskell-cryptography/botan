module Botan.Hash.SHA2
( SHA2(..)
, SHA2Digest(..)
, sha2
, sha2Lazy
, SHA2_512_256(..)
, SHA2_512_256Digest(..)
, sha2_512_256
, sha2_512_256Lazy
) where

import           GHC.TypeLits

import           Data.Maybe
import           Data.Proxy

import           Data.Type.Bool
import           Data.Type.Equality

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import           Botan.Hash.Class
import           Botan.Prelude

-- SHA2 type

data SHA2 (n :: Nat)

type SHA2Size (n :: Nat) = (KnownNat n, (n == 224 || n == 256 || n == 384 || n == 512) ~ True)

type SHA2Digest n = Digest (SHA2 n)

newtype instance Digest (SHA2 n) = SHA2Digest
    { getSHA2ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

instance Show (Digest (SHA2 n)) where
    show :: Digest (SHA2 n) -> String
    show (SHA2Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance (SHA2Size n) => Hash (SHA2 n) where
    hash :: ByteString -> Digest (SHA2 n)
    hash = SHA2Digest . Botan.hash h where
        n = fromInteger $ natVal $ Proxy @n
        h = fromJust $ Botan.sha2 n

instance (SHA2Size n) => IncrementalHash (SHA2 n) where
    hashLazy :: Lazy.ByteString -> Digest (SHA2 n)
    hashLazy = SHA2Digest . Botan.hashLazy h where
        n = fromInteger $ natVal $ Proxy @n
        h = fromJust $ Botan.sha2 n

-- SHA2 hash

sha2 :: (SHA2Size n) => ByteString -> SHA2Digest n
sha2 = hash

sha2Lazy :: (SHA2Size n) => Lazy.ByteString -> SHA2Digest n
sha2Lazy = hashLazy

-- SHA2_512_256 type

data SHA2_512_256

newtype instance Digest SHA2_512_256 = SHA2_512_256Digest
    { getSHA2_512_256ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type SHA2_512_256Digest = Digest SHA2_512_256

instance Show (Digest SHA2_512_256) where
    show :: Digest SHA2_512_256 -> String
    show (SHA2_512_256Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash SHA2_512_256 where
    hash :: ByteString -> Digest SHA2_512_256
    hash = SHA2_512_256Digest . Botan.hash Botan.sha2_512_256

instance IncrementalHash SHA2_512_256 where
    hashLazy :: Lazy.ByteString -> Digest SHA2_512_256
    hashLazy = SHA2_512_256Digest . Botan.hashLazy Botan.sha2_512_256

-- SHA2_512_256 hash

sha2_512_256 :: ByteString -> SHA2_512_256Digest
sha2_512_256 = hash

sha2_512_256Lazy :: Lazy.ByteString -> SHA2_512_256Digest
sha2_512_256Lazy = hashLazy
