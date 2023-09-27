module Crypto.Merkle where

import Crypto.Prelude

import Data.Bifunctor
import Data.Bits

import qualified Data.ByteString as ByteString

import qualified Data.List as List

{-
The hash class, redefined here for experimentation - consolidate later!
-}

data family Digest a

-- TODO: Replace Crypto.Hash with this one.
class (FiniteBits (Digest a)) => Hash a where

    hash :: ByteString -> Digest a

hashChunks :: (Hash a) => [ByteString] -> Digest a
hashChunks = hash . ByteString.concat

{-
Merkle, a unital magma hash
-}

class (Hash a) => Merkle a where

    -- NOTE: `hash` and `merkleHash` do not have to be equivalent
    merkleHash :: ByteString -> Digest a

    merkleEmpty :: Digest a

    merkleAppend :: Digest a -> Digest a -> Digest a
