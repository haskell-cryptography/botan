module Botan.Checksum.Adler
( Adler32(..)
, Adler32Digest(..)
, adler32
, adler32Lazy
) where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import           Botan.Hash.Class
import           Botan.Prelude

-- Adler32 type

data Adler32

newtype instance Digest Adler32 = Adler32Digest
    { getAdler32ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type Adler32Digest = Digest Adler32

instance Show (Digest Adler32) where
    show :: Digest Adler32 -> String
    show (Adler32Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash Adler32 where
    hash :: ByteString -> Digest Adler32
    hash = Adler32Digest . Botan.hash Botan.adler32

instance IncrementalHash Adler32 where
    hashLazy :: Lazy.ByteString -> Digest Adler32
    hashLazy = Adler32Digest . Botan.hashLazy Botan.adler32

-- Adler32 hash

adler32 :: ByteString -> Adler32Digest
adler32 = hash

adler32Lazy :: Lazy.ByteString -> Adler32Digest
adler32Lazy = hashLazy
