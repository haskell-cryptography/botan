module Botan.Low.MPI where

import qualified Data.ByteString as ByteString

import Botan.Bindings.MPI

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.Random

-- Yes, the module is named MPI, but the type is MP.
-- I'm probably renaming the module / type to `Botan.Integer` for ergonomics,
--  like I did with `Botan.Random`.

-- NOTE: Operations have a different format here, compared to other botan objects.
--  Botan.Make does not apply very well.
--  MPI are rarely mutated, and usually take a destination argument instead.
--  As such, there are some mk- functions specific to MPI, and this module
--  will be greatly improved by idiomatic bindings wrappers

-- NOTE: This whole module is not idiomatic - some methods mutate, some have a destination argument
--  It will need furter wrapping.

-- NOTE: Foreign.C.ConstPtr only available in base-4.18
-- NOTE: Using ConstPtr will require differentiating withPtr and withConstPtr
--  Will require rewrite.
-- TODO: type ConstPtr = Ptr

newtype MP = MkMP { getMPForeignPtr :: ForeignPtr MPStruct }

withMPPtr :: MP -> (MPPtr -> IO a) -> IO a
withMPPtr = withForeignPtr . getMPForeignPtr

mpInit :: IO MP
mpInit = mkInit MkMP botan_mp_init botan_mp_destroy

-- NOTE: The actual botan_mp_to_hex is ill-documented
--  The actual buffer size is 2 + (num_bytes * 2) + 1 bytes in length
--  The leading 2 is `0x` prefix, the trailing 1 is `\0` suffix
mpToHex :: MP -> IO ByteString
mpToHex mp = withMPPtr mp $ \ mpPtr -> do
    numBytes <- mpNumBytes mp
    allocaBytes (2 + (numBytes * 2) + 1) $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_mp_to_hex mpPtr bytesPtr
        ByteString.packCString bytesPtr

mpToStr :: MP -> Int -> IO ByteString
mpToStr mp base = withMPPtr mp $ \ mpPtr -> do
    numBits <- mpNumBits mp
    let estimatedLength = baseLength numBits 2 base + 2 -- NOTE: +2 for possible prefix
    allocaBytes estimatedLength $ \ bytesPtr -> do
        alloca $ \ szPtr -> do
            throwBotanIfNegative_ $ botan_mp_to_str mpPtr (fromIntegral base) bytesPtr szPtr
            ByteString.packCString bytesPtr

mpClear :: MP -> IO ()
mpClear = mkAction withMPPtr botan_mp_clear

mpSetFromInt :: MP -> Int -> IO ()
mpSetFromInt = mkSetCInt withMPPtr botan_mp_set_from_int

mpSetFromMP :: MP -> MP -> IO ()
mpSetFromMP = mkUnaryOp withMPPtr botan_mp_set_from_mp

-- NOTE: Convenience function
mpCopy :: MP -> IO MP
mpCopy mp = do
    copy <- mpInit
    mpSetFromMP copy mp
    return copy

mpSetFromStr :: MP -> ByteString -> IO ()
mpSetFromStr = mkSetCString withMPPtr botan_mp_set_from_str

mpSetFromRadixStr :: MP -> ByteString -> Int -> IO ()
mpSetFromRadixStr = mkSetCString_csize withMPPtr botan_mp_set_from_radix_str

mpNumBits :: MP -> IO Int
mpNumBits = mkGetSize withMPPtr botan_mp_num_bits

mpNumBytes :: MP -> IO Int
mpNumBytes = mkGetSize withMPPtr botan_mp_num_bytes

mpToBin :: MP -> IO ByteString
mpToBin mp = withMPPtr mp $ \ mpPtr -> do
    numBytes <- mpNumBytes mp
    allocBytes numBytes $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_mp_to_bin mpPtr bytesPtr

-- NOTE: Awkward, more like mpSetFromBin
--  When we wrap it in higher level, fromBin should be :: ByteString -> IO Integer
mpFromBin :: MP -> ByteString -> IO ()
mpFromBin = mkSetBytesLen withMPPtr botan_mp_from_bin

mpToWord32 :: MP -> IO Word32
mpToWord32 mp = withMPPtr mp $ \ mpPtr -> do
    alloca $ \ valPtr -> do
        throwBotanIfNegative_ $ botan_mp_to_uint32 mpPtr valPtr
        peek valPtr

mpIsPositive :: MP -> IO Bool
mpIsPositive = mkGetBoolCode withMPPtr botan_mp_is_positive

mpIsNegative :: MP -> IO Bool
mpIsNegative = mkGetBoolCode withMPPtr botan_mp_is_negative

mpFlipSign :: MP -> IO ()
mpFlipSign = mkAction withMPPtr botan_mp_flip_sign

mpIsZero :: MP -> IO Bool
mpIsZero = mkGetBoolCode withMPPtr botan_mp_is_zero

mpAddWord32 :: MP -> MP -> Word32 -> IO ()
mpAddWord32 result x y = withMPPtr result $ \ resultPtr -> do
    withMPPtr x $ \ xPtr -> do
        throwBotanIfNegative_ $ botan_mp_add_u32 resultPtr xPtr y

mpSubWord32 :: MP -> MP -> Word32 -> IO ()
mpSubWord32 result x y = withMPPtr result $ \ resultPtr -> do
    withMPPtr x $ \ xPtr -> do
        throwBotanIfNegative_ $ botan_mp_sub_u32 resultPtr xPtr y

mpAdd :: MP -> MP -> MP -> IO ()
mpAdd = mkBinaryOp withMPPtr botan_mp_add

mpSub :: MP -> MP -> MP -> IO ()
mpSub = mkBinaryOp withMPPtr botan_mp_sub

mpMul :: MP -> MP -> MP -> IO ()
mpMul = mkBinaryOp withMPPtr botan_mp_mul

mpDiv :: MP -> MP -> MP -> MP -> IO ()
mpDiv = mkBinaryDuplexOp withMPPtr botan_mp_div

mpModMul :: MP -> MP -> MP -> MP -> IO ()
mpModMul = mkTrinaryOp withMPPtr botan_mp_mod_mul

mpEqual :: MP -> IO Bool
mpEqual = mkGetBoolCode withMPPtr botan_mp_equal

-- TODO: Convert Int to Ordering in >1:1 low-level bindings
mpCmp :: MP -> MP -> IO Int
mpCmp a b = withMPPtr a $ \ aPtr -> do
    withMPPtr b $ \ bPtr -> do
        alloca $ \ resultPtr -> do
            throwBotanIfNegative_ $ botan_mp_cmp resultPtr aPtr bPtr
            fromIntegral <$> peek resultPtr

mpSwap :: MP -> MP -> IO ()
mpSwap a b = withMPPtr a $ \ aPtr -> do
    withMPPtr b $ \ bPtr -> do
        throwBotanIfNegative_ $ botan_mp_swap aPtr bPtr

mpPowMod :: MP -> MP -> MP -> MP -> IO ()
mpPowMod = mkTrinaryOp withMPPtr botan_mp_powmod

mpLeftShift :: MP -> MP -> Int -> IO ()
mpLeftShift = mkUnaryOp_csize withMPPtr botan_mp_lshift

mpRightShift :: MP -> MP -> Int -> IO ()
mpRightShift = mkUnaryOp_csize withMPPtr botan_mp_rshift

mpModInverse :: MP -> MP -> MP -> IO ()
mpModInverse = mkBinaryOp withMPPtr botan_mp_mod_inverse

mpRandBits :: MP -> Random -> Int -> IO ()
mpRandBits mp random sz = withMPPtr mp $ \ mpPtr -> do
    withRandomPtr random $ \ randomPtr -> do
        throwBotanIfNegative_ $ botan_mp_rand_bits mpPtr randomPtr (fromIntegral sz)

mpRandRange :: MP -> Random -> MP -> MP -> IO ()
mpRandRange mp random lower upper = withMPPtr mp $ \ mpPtr -> do
    withRandomPtr random $ \ randomPtr -> do
        withMPPtr lower $ \ lowerPtr -> do
            withMPPtr upper $ \ upperPtr -> do
                throwBotanIfNegative_ $ botan_mp_rand_range mpPtr randomPtr lowerPtr upperPtr

mpGCD :: MP -> MP -> MP -> IO ()
mpGCD = mkBinaryOp withMPPtr botan_mp_gcd

-- NOTE: Miller–Rabin primality test
mpIsPrime :: MP -> Random -> Int -> IO ()
mpIsPrime mp random probability = withMPPtr mp $ \ mpPtr -> do
    withRandomPtr random $ \ randomPtr -> do
        throwBotanIfNegative_ $ botan_mp_is_prime mpPtr randomPtr (fromIntegral probability)

mpGetBit :: MP -> Int -> IO Bool
mpGetBit = mkGetBoolCode_csize withMPPtr botan_mp_get_bit

mpSetBit :: MP -> Int -> IO ()
mpSetBit = mkSetCSize withMPPtr botan_mp_set_bit

mpClearBit :: MP -> Int -> IO ()
mpClearBit = mkSetCSize withMPPtr botan_mp_set_bit

--
-- Helpers
--

-- int botan_...(botan_mp_t dest, const botan_mp_t source);
type UnaryOp ptr = ptr -> ptr -> IO BotanErrorCode

mkUnaryOp :: WithPtr typ ptr -> UnaryOp ptr -> typ -> typ -> IO ()
mkUnaryOp withPtr unary dest source = withPtr dest $ \ destPtr -> do
    withPtr source $ \ sourcePtr -> do
        throwBotanIfNegative_ $ unary destPtr sourcePtr

-- int botan_...(botan_mp_t dest, const botan_mp_t source, size_t factor);
type UnaryOp_csize ptr = ptr -> ptr -> CSize -> IO BotanErrorCode

mkUnaryOp_csize :: WithPtr typ ptr -> UnaryOp_csize ptr -> typ -> typ -> Int -> IO ()
mkUnaryOp_csize withPtr unary dest source factor  = withPtr dest $ \ destPtr -> do
    withPtr source $ \ sourcePtr -> do
        throwBotanIfNegative_ $ unary destPtr sourcePtr (fromIntegral factor)

-- int botan_...(botan_mp_t dest, const botan_mp_t a, const botan_mp_t b);
type BinaryOp ptr = ptr -> ptr -> ptr -> IO BotanErrorCode

mkBinaryOp :: WithPtr typ ptr -> BinaryOp ptr -> typ -> typ -> typ -> IO ()
mkBinaryOp withPtr binary dest a b = withPtr dest $ \ destPtr -> do
    withPtr a $ \ aPtr -> do
        withPtr b $ \ bPtr -> do
            throwBotanIfNegative_ $ binary destPtr aPtr bPtr

-- int botan_...(botan_mp_t a, botan_mp_t b, const botan_mp_t x, const botan_mp_t y);
type BinaryDuplexOp ptr = ptr -> ptr -> ptr -> ptr -> IO BotanErrorCode

-- NOTE: Do not confuse for mkTrinaryOp
mkBinaryDuplexOp :: WithPtr typ ptr -> BinaryDuplexOp ptr -> typ -> typ -> typ -> typ -> IO ()
mkBinaryDuplexOp withPtr binary a b x y = withPtr a $ \ aPtr -> do
    withPtr b $ \ bPtr -> do
        withPtr x $ \ xPtr -> do
            withPtr y $ \ yPtr -> do
                throwBotanIfNegative_ $ binary aPtr bPtr xPtr yPtr

-- int botan_...(botan_mp_t a, botan_mp_t b, const botan_mp_t x, const botan_mp_t y);
type TrinaryOp ptr = ptr -> ptr -> ptr -> ptr -> IO BotanErrorCode

-- NOTE: Do not confuse for mkBinaryDuplexOp
mkTrinaryOp :: WithPtr typ ptr -> TrinaryOp ptr -> typ -> typ -> typ -> typ -> IO ()
mkTrinaryOp withPtr binary a x y z = withPtr a $ \ aPtr -> do
    withPtr x $ \ xPtr -> do
        withPtr y $ \ yPtr -> do
            withPtr z $ \ zPtr -> do
                throwBotanIfNegative_ $ binary aPtr xPtr yPtr zPtr