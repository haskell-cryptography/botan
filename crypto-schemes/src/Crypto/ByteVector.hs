{-# LANGUAGE InstanceSigs #-}
module Crypto.ByteVector
( ByteVector(..)
, byteVectorMaybe
, byteVector
, unsafeByteVector
, withByteVector
, withByteString
, byteString
, empty
, singleton
, pack
, unpack
, length
, bitLength
, map
, zip
, replicate
) where

import Prelude hiding (length, replicate, map, zip)

import GHC.TypeNats
import GHC.Exts (IsList(..))

import Data.Bits
import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import qualified Data.List as List
import Data.Proxy
import Data.Word

-- Data type

-- NOTE: Taken from Apotheca.Data.ByteString / ByteVector, consult if necessary
-- Is similar to any of the `Vec n Word8` / fixed-size vectors floating around
-- Is not exactly like BigInt because the size remains constant, and there may be leading zeroes

-- TODO: Actually make BitArray / ByteArray classes
-- TODO: ByteArray vs IsByteString
{-
-- class Bits bs where          -- Already in base
-- class FiniteBits bs where    -- Already in base
class Bytes bs where
class (Bytes bs) => FiniteBytes bs where
class (Bits ba) => BitArray ba where
class (Bytes ba) => ByteArray ba where
class (FiniteBits ba, BitArray ba) => FiniteBitArray ba where
class (FiniteBytes ba, ByteArray ba) => FiniteByteArray ba where
-}

-- NOTE: Might move to crypto-utilities, if necessary

newtype ByteVector (n :: Nat) = ByteVector { runByteVector :: ByteString }
    deriving newtype (Show, Eq, Ord)

byteVectorMaybe :: forall n. KnownNat n => ByteString -> Maybe (ByteVector n)
byteVectorMaybe bs
    | ByteString.length bs == n = Just (ByteVector bs)
    | otherwise       = Nothing
    where
        n = fromIntegral (natVal (Proxy @n))

byteVector :: forall n . (KnownNat n) => ByteString -> ByteVector n
byteVector bs = ByteVector $ case compare l n of
        LT -> bs <> ByteString.replicate (n - l) 0
        EQ -> bs
        GT -> ByteString.take n bs
    where
        n = fromIntegral (natVal (Proxy @n))
        l = ByteString.length bs

unsafeByteVector :: ByteString -> ByteVector n
unsafeByteVector = ByteVector

withByteVector :: ByteString -> (forall n. KnownNat n => ByteVector n -> a) -> a
withByteVector v f = case someNatVal (fromIntegral (ByteString.length v)) of
    SomeNat (Proxy :: Proxy n') -> f (ByteVector @n' v)

withByteString :: ByteVector n -> (ByteString -> a) -> a
withByteString (ByteVector bs) f = f bs

byteString :: ByteVector n -> ByteString
byteString = runByteVector

-- Instances

instance (KnownNat n) => IsList (ByteVector n) where
    type Item (ByteVector n) = Word8

    fromList :: [Item (ByteVector n)] -> ByteVector n
    fromList = pack
    
    toList :: ByteVector n -> [Item (ByteVector n)]
    toList = unpack

-- TODO: showBin, showHex

instance (KnownNat n) => Bounded (ByteVector n) where

    minBound :: ByteVector n
    minBound = replicate (minBound :: Word8) -- 0
    maxBound :: ByteVector n
    maxBound = replicate (maxBound :: Word8) -- 255

instance (KnownNat n) => Bits (ByteVector n) where

    (.&.) :: ByteVector n -> ByteVector n -> ByteVector n
    a .&. b = zip (.&.) a b
    
    (.|.) :: ByteVector n -> ByteVector n -> ByteVector n
    a .|. b = zip (.|.) a b
    
    xor :: ByteVector n -> ByteVector n -> ByteVector n
    xor = zip xor
    
    complement :: ByteVector n -> ByteVector n
    complement = map complement
    
    shift :: ByteVector n -> Int -> ByteVector n
    shift xs i | i > 0 = shiftL xs i
    shift xs i | i < 0 = shiftR xs (-i)
    shift xs i = xs

    -- TODO: Make more efficient
    shiftL :: ByteVector n -> Int -> ByteVector n
    shiftL (ByteVector "") _ = ByteVector ""
    shiftL _  i | i < 0      = error "ByteVector.shiftL: index must be positive"
    shiftL (ByteVector xs) i = ByteVector $ (if r == 0 then u else u') <> p
        where
            (q,r) = quotRem i 8
            u = ByteString.drop q xs -- unaligned relevant bytes
            u' = repack (List.tail . go 0) u
            p = ByteString.replicate q 0 -- padding
            go x [] = [shiftL x r]
            go x (y:zs) = (shiftL x r .|. shiftR y (8 - r)) : go y zs

    -- TODO: Make more efficient
    shiftR :: ByteVector n -> Int -> ByteVector n
    shiftR (ByteVector "") _ = ByteVector ""
    shiftR _  i | i < 0      = error "ByteVector.shiftR: index must be positive"
    shiftR (ByteVector xs) i = ByteVector $ p <> (if r == 0 then u else u')
        where
            (q,r) = quotRem i 8
            u = ByteString.take (ByteString.length xs - q) xs -- unaligned relevant bytes
            u' = repack (go 0) u
            p = ByteString.replicate q 0 -- padding
            go _ [] = []
            go x (y:zs) = (shiftL x (8 - r) .|. shiftR y r) : go y zs

    rotate :: ByteVector n -> Int -> ByteVector n
    rotate bs i | i > 0 = rotateL bs i
    rotate bs i | i < 0 = rotateR bs (-i)
    rotate bs i = bs

    rotateL :: ByteVector n -> Int -> ByteVector n
    rotateL (ByteVector "") _   = ByteVector ""
    rotateL _  i | i < 0        = error "ByteString.shiftR: index must be positive"
    rotateL (ByteVector bs) i   = ByteVector $ if r == 0 then u else u'
        where
            (q,r) = quotRem i 8
            u = ByteString.drop q bs <> ByteString.take q bs
            u' = repack (List.tail . go 0) u
            go x [] = [shiftL x r .|. shiftR (ByteString.head u) (8 - r)]
            go x (y:zs) = (shiftL x r .|. shiftR y (8 - r)) : go y zs

    rotateR :: ByteVector n -> Int -> ByteVector n
    rotateR (ByteVector "") _            = ByteVector ""
    rotateR _  i | i < 0    = error "ByteString.shiftR: index must be positive"
    rotateR (ByteVector bs) i            = ByteVector u' -- if r == 0 then u else u'
        where
            (q,r) = quotRem i 8
            u = ByteString.drop (ByteString.length bs - q) bs <> ByteString.take (ByteString.length bs - q) bs -- unaligned relevant bytes
            u' = repack (List.tail . go 0 . (ByteString.last u :)) u
            go _ [] = []
            go x (y:zs) = (shiftL x (8 - r) .|. shiftR y r) : go y zs

    bitSize :: ByteVector n -> Int
    bitSize = finiteBitSize
    
    bitSizeMaybe :: ByteVector n -> Maybe Int
    bitSizeMaybe = Just . finiteBitSize
    
    isSigned :: ByteVector n -> Bool
    isSigned _ = False
    
    testBit :: ByteVector n -> Int -> Bool
    testBit bv@(ByteVector bs) i
            | i < 0     = False
            | i > finiteBitMax bv = False
            | otherwise = testBit byte r
        where
            -- quotRem and divMod cause index range failures on i < 0 and len <= i respectively
            (q,r) = quotRem i 8
            byte = ByteString.index bs $ (ByteString.length bs - 1) - q
            
    -- NOTE: There is probably a more efficient way of doing this
    --  Eg, allocate the buffer and set the single bit manually
    bit :: Int -> ByteVector n
    bit i
        | i < 0 = minBound :: ByteVector n
        | i > finiteBitMax (undefined :: ByteVector n) = minBound :: ByteVector n
        | otherwise = ByteVector $ head <> ByteString.cons byte tail
        where
            (q,r) = quotRem i 8
            head = ByteString.replicate (finiteByteMax (undefined :: ByteVector n) - q) 0
            tail = ByteString.replicate q 0
            byte = bit r

    popCount :: ByteVector n -> Int
    popCount (ByteVector bs) = ByteString.foldl' (\ acc byte -> acc + popCount byte) 0 bs

instance (KnownNat n) => FiniteBits (ByteVector n) where

    finiteBitSize :: ByteVector n -> Int
    finiteBitSize _ = 8 * fromIntegral (natVal (Proxy @n))

-- instance (KnownNat n) => Bytes (ByteVector n) where
-- instance (KnownNat n) => FiniteBytes (ByteVector n) where

-- Constructors

empty :: ByteVector 0
empty = ByteVector ByteString.empty

singleton :: Word8 -> ByteVector 1
singleton = ByteVector . ByteString.singleton

pack :: forall n . (KnownNat n) => [Word8] -> ByteVector n
pack = byteVector . ByteString.pack

unpack :: ByteVector n -> [Word8] 
unpack = ByteString.unpack . runByteVector

-- Basic interface

-- TODO: Actually use n
length :: ByteVector n -> Int
length = ByteString.length . runByteVector

bitLength :: ByteVector n -> Int
bitLength = (8 *) . length

map :: (Word8 -> Word8) -> ByteVector n -> ByteVector n
map f (ByteVector bs) = ByteVector $ ByteString.map f bs

zip :: (Word8 -> Word8 -> Word8) -> ByteVector n -> ByteVector n -> ByteVector n
zip f (ByteVector a) (ByteVector b) = ByteVector . ByteString.pack $ ByteString.zipWith f a b

replicate :: forall n . (KnownNat n) => Word8 -> ByteVector n
replicate w = ByteVector (ByteString.replicate (fromIntegral $ natVal (Proxy :: Proxy n)) w)

-- Helpers

finiteBitMax :: (FiniteBits a) => a -> Int
finiteBitMax a = finiteBitSize a - 1

finiteByteMax :: (FiniteBits a) => a -> Int
finiteByteMax a = finiteByteSize a - 1

finiteByteSize :: FiniteBits a => a -> Int
finiteByteSize = (`quot` 8) . finiteBitSize

-- NOTE: map is insufficient - repack may change the length of the result
-- NOTE: Is there a way to do this more efficiently?
--  It is used in shiftL/R and rotateL/R, and instead of unpacking to a list
--  and chopping it into pieces, we may be able to allocate the properly
--  sized buffer and set the bits according to formula, obviating this function.
--  However, this is more difficult for non-byte-aligned shifts.
--  For now, this suffices.
repack :: ([Word8] -> [Word8]) -> ByteString -> ByteString
repack f = ByteString.pack . f . ByteString.unpack
