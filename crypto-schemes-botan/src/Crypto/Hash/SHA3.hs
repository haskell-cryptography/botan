{-# LANGUAGE DataKinds #-}
module Crypto.Hash.SHA3
( SHA3(..)
, SHA3Digest(..)
, sha3
, sha3MerkleSetDigest
, sha3MerkleSetTree
, sha3MerkleMapDigest
, sha3MerkleMapTree
) where

import qualified Data.ByteString as ByteString
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import Crypto.Merkle
import Crypto.Prelude

import Crypto.ByteVector

import Data.Bits

-- SHA3 type

data SHA3

newtype instance Digest SHA3 = SHA3Digest
    { getSHA3ByteVector :: ByteVector 64 }
    deriving newtype (Eq, Ord, Bits, FiniteBits)

getSHA3ByteString :: Digest SHA3 -> ByteString
getSHA3ByteString = runByteVector . getSHA3ByteVector

type SHA3Digest = Digest SHA3

-- SHA3 instances

instance Show (Digest SHA3) where
    
    show :: Digest SHA3 -> String
    show (SHA3Digest (ByteVector bytes)) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

-- NOTE: THIS IS NOT CRYPTO.HASH, IT IS CRYPTO.MERKLE.HASH
instance Hash SHA3 where

    hash :: ByteString -> Digest SHA3
    hash bytes = SHA3Digest $ ByteVector $ Botan.hashWithHash (Botan.SHA3 Botan.SHA3_512) bytes

    digest :: Digest SHA3 -> ByteString
    digest = getSHA3ByteString

    digestSize :: proxy SHA3 -> Int
    digestSize _ = 64

instance Merkle SHA3 where

-- SHA3 hash

sha3 :: ByteString -> SHA3Digest
sha3 = hash

sha3MerkleSetDigest :: [Digest SHA3] -> Digest SHA3
sha3MerkleSetDigest = merkleSetDigest @SHA3

sha3MerkleSetTree :: [Digest SHA3] -> (Digest SHA3, [(Digest SHA3, (Digest SHA3, Digest SHA3))])
sha3MerkleSetTree = merkleSetTree @SHA3

sha3MerkleMapDigest :: [(Digest SHA3, Digest SHA3)] -> Digest SHA3
sha3MerkleMapDigest = merkleMapDigest @SHA3

sha3MerkleMapTree :: [(Digest SHA3, Digest SHA3)] -> (Digest SHA3, [(Digest SHA3, (Digest SHA3, Digest SHA3))])
sha3MerkleMapTree = merkleMapTree @SHA3
