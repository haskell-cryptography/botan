module Botan.Checksum.CRC
( CRC24(..)
, CRC24Digest(..)
, crc24
, crc24Lazy
, CRC32(..)
, CRC32Digest(..)
, crc32
, crc32Lazy
) where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import Botan.Hash.Class
import Botan.Prelude

-- CRC24 type

data CRC24

newtype instance Digest CRC24 = CRC24Digest
    { getCRC24ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type CRC24Digest = Digest CRC24

instance Show (Digest CRC24) where
    show :: Digest CRC24 -> String
    show (CRC24Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash CRC24 where
    hash :: ByteString -> Digest CRC24
    hash = CRC24Digest . Botan.hash Botan.crc24

instance IncrementalHash CRC24 where
    hashLazy :: Lazy.ByteString -> Digest CRC24
    hashLazy = CRC24Digest . Botan.hashLazy Botan.crc24

-- CRC24 hash

crc24 :: ByteString -> CRC24Digest
crc24 = hash

crc24Lazy :: Lazy.ByteString -> CRC24Digest
crc24Lazy = hashLazy

-- CRC32 type

data CRC32

newtype instance Digest CRC32 = CRC32Digest
    { getCRC32ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type CRC32Digest = Digest CRC32

instance Show (Digest CRC32) where
    show :: Digest CRC32 -> String
    show (CRC32Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash CRC32 where
    hash :: ByteString -> Digest CRC32
    hash = CRC32Digest . Botan.hash Botan.crc32

instance IncrementalHash CRC32 where
    hashLazy :: Lazy.ByteString -> Digest CRC32
    hashLazy = CRC32Digest . Botan.hashLazy Botan.crc32

-- CRC32 hash

crc32 :: ByteString -> CRC32Digest
crc32 = hash

crc32Lazy :: Lazy.ByteString -> CRC32Digest
crc32Lazy = hashLazy

