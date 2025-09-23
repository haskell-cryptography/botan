module Botan.Padding (
    Padding (..)
  , Pad (..)
  , EME
  , EMSA
  , pad
  , padBitPadding
  , padBytePadding
  , padANSI_X9_23
  , padISO_10126
  , padPKCS_7
  , padISO_IEC_7816_4
  , padZeroPadding
  , padTo
  , padMul
  , padBlockMul
  , padBy
  , padCount
  , padLength
  , Padded
  , BytePadding (..)
  , BitPadding (..)
  ) where

-- NOTE: Botan does not expose padding functions directly
--  We will implement them here as a utility
-- Helpful sources for documenting various padding functions
-- https://en.wikipedia.org/wiki/Padding_(cryptography)
-- https://stackoverflow.com/questions/24183109/what-is-sha-256-padding
-- https://crypto.stackexchange.com/questions/40405/padding-in-hash-functions
-- https://www.crypto-it.net/eng/theory/padding.html

-- NOTE: May move to crypto-schemes.

-- TODO: Bring in,vmaybe combine + move to crypto-schemes?
--  botanium.Utils.alignMod / floorMod / ceilMod
--  Botan.Low.Prelude.paddingInfo

import           Botan.Hash
import           Botan.Prelude hiding (length)

data Padding
    = Pad Pad
    | EME EME
    | EMSA EMSA

data Pad
    = BitPadding        -- ISO/IEC 9797-1 Padding Method 2, | (...)1 0000 0000 |
    | TBC               -- Trailing Bit Complement, | (...1) 0000 | or | (...0) 1111 |
    | BytePadding       --  | (...) FF 00 00 |
    | ANSI_X9_23        -- ANSI X9.23, see also CBCPadding.X9_23 / EME.X9_23
    | ISO_10126         -- ISO 10126 (withdrawn) pad with random bytes, set last byte to padding byte count.
    | PKCS_7            -- PKCS#7, see also CBCPadding.PKCS7 / EME.PKCS7
    | ISO_IEC_7816_4    -- ISO/IEC 7816-4, | (...) 80 00 00 |, equivalent to BitPadding for bytes
    | ZeroPadding       -- | (...) 00 00 00 |
    | HashPadding Hash  -- | (a) + take padCount (hashWith h a) + (padCount + 1)

data EME    -- ...
data EMSA   -- ...

pad :: Pad -> Int -> ByteString -> ByteString
pad BitPadding i bs = undefined $ padBitPadding i (undefined bs)
pad _ _ _           = undefined

padBitPadding :: Int -> [Bool] -> [Bool]
padBitPadding = undefined

padBytePadding :: Int -> ByteString -> ByteString
padBytePadding = undefined

padANSI_X9_23 :: Int -> ByteString -> ByteString
padANSI_X9_23 = undefined

padISO_10126 :: Int -> ByteString -> ByteString
padISO_10126 = undefined

padPKCS_7 :: Int -> ByteString -> ByteString
padPKCS_7 = undefined

padISO_IEC_7816_4 :: Int -> ByteString -> ByteString
padISO_IEC_7816_4 = undefined

padZeroPadding :: Int -> ByteString -> ByteString
padZeroPadding _i = undefined

-- NOTE: (padCount,finalLength)
padTo :: Int -> Int -> (Int,Int)
padTo from to = (count, length) where
    count = to - from
    length = to

padMul :: Int -> Int -> (Int,Int)
padMul from mul = (count, length) where
    (count,length,_) = padBlockMul from mul

padBlockMul :: Int -> Int -> (Int, Int, Int)
padBlockMul from blockSz = (count,length,blocks) where
    (d,m) = divMod from blockSz
    (count,length,blocks) = if m == 0
        then (0,from,d)
        else (blockSz - m, from + count, d + 1)

padBy :: Int -> Int -> (Int,Int)
padBy from by = (count, length) where
    count = by
    length = from + by

padCount :: (Int,Int) -> Int
padCount = fst

padLength :: (Int,Int) -> Int
padLength = snd

-- TODO: Encapsulate Botan.Low.Prelude padding functions

data Padded p

class BytePadding p where
    padBytes :: Int -> ByteString -> Padded p

class BytePadding p => BitPadding p where
    padBits :: Int -> [Bool] -> Padded p

{-

-- NOTE: Block padding
paddingLength, paddedLength, blockCount  :: Int -> Int -> Int
paddingLength   len bsz =  let (pl,_,_) = paddingInfo len bsz in pl
paddedLength    len bsz =  let (_,pl,_) = paddingInfo len bsz in pl
blockCount      len bsz =  let (_,_,bc) = paddingInfo len bsz in bc

-- NOTE: Block padding
paddingInfo :: Int -> Int -> (Int, Int, Int)
paddingInfo length blockSize = info where
    (d,m) = divMod length blockSize
    info@(padding,_,_) = if m == 0
        then (0,length,d)
        else (blockSize - m, length + padding, d + 1)

-- NOTE: Block padding
padBytes :: ByteString -> Int -> ByteString
padBytes bytes blockSize = paddedBytes where
    (paddingLength,paddedLength,_) = paddingInfo (ByteString.length bytes) blockSize
    paddedBytes = if paddingLength == 0
        then bytes
        else bytes <> ByteString.replicate paddingLength 0

-- Kinda jank, don't use any more - its better to make padding explicit
asPaddedBytes :: ByteString -> Int -> (Ptr byte -> IO a) -> IO a
asPaddedBytes bytes blockSize = asBytes (padBytes bytes blockSize)

-- Kinda jank, don't use any more - its better to make padding explicit
asPaddedBytesLen :: ByteString -> Int -> (Ptr byte -> CSize -> IO a) -> IO a
asPaddedBytesLen bytes blockSize = asBytesLen (padBytes bytes blockSize)
-}
