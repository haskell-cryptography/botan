module Crypto.Merkle where

import Crypto.Prelude

import Data.Bifunctor
import Data.Bits

import qualified Data.ByteString as ByteString

import qualified Data.List as List

{-
The hash class, redefined here for experimentation
-}

data family Digest a

-- TODO: Replace Crypto.Hash with this one.
class (FiniteBits (Digest a)) => Hash a where

    hash :: ByteString -> Digest a

    -- TODO: Move these out of Hash
    digest :: Digest a -> ByteString
    digestSize :: proxy a -> Int

hashChunks :: (Hash a) => [ByteString] -> Digest a
hashChunks = hash . ByteString.concat

{-
Merkle, a unital magma hash
-}

class (Hash a) => Merkle a where

    -- NOTE: `hash` and `merkleHash` do not have to be equivalent
    merkleHash :: ByteString -> Digest a
    default merkleHash :: (Hash a) => ByteString -> Digest a
    merkleHash = safeMerkleHash

    merkleEmpty :: Digest a
    default merkleEmpty :: (Hash a) => Digest a
    merkleEmpty = safeMerkleEmpty

    merkleAppend :: Digest a -> Digest a -> Digest a
    default merkleAppend :: (Hash a) => Digest a -> Digest a -> Digest a
    merkleAppend = safeMerkleAppend

{-
Safe (attack-resistant) merkle hashing
-}

safeMerkleHash :: (Hash a) => ByteString -> Digest a
safeMerkleHash bs = hashChunks
    [ "#"
    , bs
    , ";"
    ]

safeMerkleEmpty :: (Hash a) => Digest a
safeMerkleEmpty =  hash "" -- Or all zeroes, or Nothing

safeMerkleAppend :: (Hash a) => Digest a -> Digest a -> Digest a
safeMerkleAppend a b | a == safeMerkleEmpty = b
safeMerkleAppend a b | b == safeMerkleEmpty = a
safeMerkleAppend a b = hashChunks
    [ "$"
    , digest a
    , ":"
    , digest b
    , ";"
    ]
