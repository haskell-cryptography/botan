module Botan.Hash.SM3
( SM3(..)
, SM3Digest(..)
, sm3
, sm3Lazy
) where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import           Botan.Hash.Class
import           Botan.Prelude

-- SM3 type

data SM3

newtype instance Digest SM3 = SM3Digest
    { getSM3ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type SM3Digest = Digest SM3

instance Show (Digest SM3) where
    show :: Digest SM3 -> String
    show (SM3Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash SM3 where
    hash :: ByteString -> Digest SM3
    hash = SM3Digest . Botan.hash Botan.sm3

instance IncrementalHash SM3 where
    hashLazy :: Lazy.ByteString -> Digest SM3
    hashLazy = SM3Digest . Botan.hashLazy Botan.sm3

-- SM3 hash

sm3 :: ByteString -> SM3Digest
sm3 = hash

sm3Lazy :: Lazy.ByteString -> SM3Digest
sm3Lazy = hashLazy
