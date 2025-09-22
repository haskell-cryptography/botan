module Botan.Hash.SHA1
( SHA1(..)
, SHA1Digest(..)
, sha1
, sha1Lazy
) where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import           Botan.Hash.Class
import           Botan.Prelude

-- SHA1 type

data SHA1

newtype instance Digest SHA1 = SHA1Digest
    { getSHA1ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type SHA1Digest = Digest SHA1

instance Show (Digest SHA1) where
    show :: Digest SHA1 -> String
    show (SHA1Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash SHA1 where
    hash :: ByteString -> Digest SHA1
    hash = SHA1Digest . Botan.hash Botan.sha1

instance IncrementalHash SHA1 where
    hashLazy :: Lazy.ByteString -> Digest SHA1
    hashLazy = SHA1Digest . Botan.hashLazy Botan.sha1

-- SHA1 hash

sha1 :: ByteString -> SHA1Digest
sha1 = hash

sha1Lazy :: Lazy.ByteString -> SHA1Digest
sha1Lazy = hashLazy
