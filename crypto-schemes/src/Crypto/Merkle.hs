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

{-
Operators
-}

-- NOTE: Left-associative to match function application
infixl 5 <#>

(<#>) :: (Merkle a) => Digest a -> Digest a -> Digest a
(<#>) = merkleAppend

{-
Folds - hash lists
-}
    
merkleFoldl :: (Merkle a, Foldable f) => f (Digest a) -> Digest a
merkleFoldl = foldl merkleAppend merkleEmpty

merkleFoldr :: (Merkle a, Foldable f) => f (Digest a) -> Digest a
merkleFoldr = foldr merkleAppend merkleEmpty

{-
(Sparse) Merkle set
-}

-- It is trivial to obtain a sparse merkle set digest using unital magma hashing.
--
-- The conciseness is necessary to illustrate the core recursion, but we can
--  develop a more performant implementation that also does not throw away the
--  tree structure. 
--
-- Note that deduplication is unncessary if the inputs are already unique
--
-- NOTE: merkleSetDigest = fst . merkleSetTree
merkleSetDigest :: forall a . (Merkle a) => [Digest a] -> Digest a
merkleSetDigest = go (digestSize (Proxy :: Proxy a) - 1) where
    go _ [] = merkleEmpty
    go _ [x] = x
    go n (x:x':xs) | x == x' = go n (x:xs) -- Deduplication
    go n xs = uncurry merkleAppend $ both (go (n - 1)) (partitionBit n xs)

-- In this version, we actually return the merkle tree
--
-- Note the return type:
--  (Top digest, [(Parent digest, (Left child digest, Right child digest))])
--
-- By convention, terminal nodes are implicit to the tree, and are not included in
--  the list of nodes since their parent contains them, and they have no children.
--  For example:
--      merkleSetTree [] = (merkleEmpty, [])
--
-- We could construct a Map:
--  hashSetTree :: [Digest a] -> (Digest a, Map (Digest a) (Digest a, Digest a))
merkleSetTree :: forall a . (Merkle a) => [Digest a] -> (Digest a, [(Digest a, (Digest a, Digest a))])
merkleSetTree = go (digestSize (Proxy :: Proxy a) - 1) where
    go _ [] = (merkleEmpty, [])
    go _ [x] = (x, [])
    go n (x:x':xs) | x == x' = go n (x:xs) -- Deduplication
    go n xs = uncurry join $ both (go (n - 1)) (partitionBit n xs)
    join (l,ls) (r,rs) = let top = merkleAppend l r in (top, (top, (l,r)) : (ls ++ rs))

-- NOTE: merkleMapDigest = fst . merkleMapTree
merkleMapDigest :: forall a . (Merkle a) => [(Digest a, Digest a)] -> Digest a
merkleMapDigest = go (digestSize (Proxy :: Proxy a) - 1) where
    go _ [] = merkleEmpty
    go _ [(k,v)] = merkleAppend k v
    go n (x@(k,_):(k',_):xs) | k == k' = go n (x:xs) -- Deduplication on key
    go n xs = uncurry merkleAppend $ both (go (n - 1)) (partitionBitMap n xs)

-- NOTE: Although the return type appears the same as merkleSetTree, it is only
--  by coincidence, and they are made different through their conventions and
--  handling.
--
-- Note that terminal nodes are now included in the list, because their children are
--  their key and value digest
merkleMapTree :: forall a . (Merkle a) => [(Digest a, Digest a)] -> (Digest a, [(Digest a, (Digest a, Digest a))])
merkleMapTree = go (digestSize (Proxy :: Proxy a) - 1) where
    go _ []  = (merkleEmpty, [])
    go _ [x@(k,v)] = let h = merkleAppend k v in (h, [(h,x)])
    go n (x@(k,_):(k',_):xs) | k == k' = go n (x:xs) -- Deduplication on key
    go n xs = uncurry join $ both (go (n - 1)) (partitionBitMap n xs)
    join (l,ls) (r,rs) = let top = merkleAppend l r in (top, (top, (l,r)) : (ls ++ rs))

-- NOTE: An interesting result of this construction is that the equivalence of `Set a` and
--  `Map a Empty` is made obvious.
{-
import Crypto.Merkle
import Crypto.Hash.SHA3
digests = fmap (merkleHash @SHA3) [ "fee","fi","fo","fum"]
t0 = merkleSetDigest digests
(t1,_) = merkleSetTree digests
pairs = fmap (\ dg -> (dg, merkleEmpty @SHA3)) digests
t2 = merkleMapDigest pairs
(t3,_) = merkleMapTree pairs
t0
t1
t2
t3
-}

-- Helpers

partitionBit :: (Bits (Digest a)) => Int -> [Digest a] -> ([Digest a],[Digest a])
partitionBit n = List.partition (not . (`testBit` n))

partitionBitMap :: (Bits (Digest a)) => Int -> [(Digest a,b)] -> ([(Digest a,b)],[(Digest a,b)])
partitionBitMap n = List.partition (\ (k,_) -> not (testBit k n))

both :: (Bifunctor f) => (a -> b) -> f a a -> f b b
both f = bimap f f
