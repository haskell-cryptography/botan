{-|
Module      : Botan.Low.MPI
Description : Multiple Precision Integers
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.MPI where

import qualified Data.ByteString as ByteString

import Botan.Bindings.MPI

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.RNG

-- Yes, the module is named MPI, but the type is MP.
-- I'm probably renaming the module / type to `Botan.Integer` for ergonomics,
--  like I did with `Botan.RNG`.

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

mpInitIO :: IO MP
mpInitIO = mkInit MkMP botan_mp_init botan_mp_destroy

-- NOTE: The actual botan_mp_to_hex is misleading
--  The actual buffer size is 2 + (num_bytes * 2) + 1 bytes in length
--  The leading 2 is `0x` prefix, the trailing 1 is `\0` suffix
mpToHexIO :: MP -> IO ByteString
mpToHexIO mp = withMPPtr mp $ \ mpPtr -> do
    numBytes <- mpNumBytesIO mp
    allocaBytes (2 + (numBytes * 2) + 1) $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_mp_to_hex mpPtr bytesPtr
        ByteString.packCString bytesPtr

mpToStrIO :: MP -> Int -> IO ByteString
mpToStrIO mp base = withMPPtr mp $ \ mpPtr -> do
    -- NOTE: This was causing occasional InsufficientBufferSpaceException
    -- numBits <- mpNumBitsIO mp
    -- let estimatedLength = baseLength numBits 2 base + 2 -- NOTE: +2 for possible prefix
    -- allocaBytes estimatedLength $ \ bytesPtr -> do
    --     alloca $ \ szPtr -> do
    --         throwBotanIfNegative_ $ botan_mp_to_str mpPtr (fromIntegral base) bytesPtr szPtr
    --         ByteString.packCString bytesPtr
    -- We'll see if this solves that:
    allocBytesQueryingCString $ \ bytesPtr szPtr -> 
        botan_mp_to_str mpPtr (fromIntegral base) bytesPtr szPtr

mpClearIO :: MP -> IO ()
mpClearIO = mkAction withMPPtr botan_mp_clear

mpSetFromIntIO :: MP -> Int -> IO ()
mpSetFromIntIO = mkSetCInt withMPPtr botan_mp_set_from_int

mpSetFromMPIO :: MP -> MP -> IO ()
mpSetFromMPIO = mkUnaryOp withMPPtr botan_mp_set_from_mp

-- NOTE: Convenience function
mpCopyIO :: MP -> IO MP
mpCopyIO mp = do
    copy <- mpInitIO
    mpSetFromMPIO copy mp
    return copy

mpSetFromStrIO :: MP -> ByteString -> IO ()
mpSetFromStrIO = mkSetCString withMPPtr botan_mp_set_from_str

-- NOTE: According to unit tests, this function *does not* prepend "0x" to the value
mpSetFromRadixStrIO :: MP -> ByteString -> Int -> IO ()
mpSetFromRadixStrIO = mkSetCString_csize withMPPtr botan_mp_set_from_radix_str

mpNumBitsIO :: MP -> IO Int
mpNumBitsIO = mkGetSize withMPPtr botan_mp_num_bits

mpNumBytesIO :: MP -> IO Int
mpNumBytesIO = mkGetSize withMPPtr botan_mp_num_bytes

mpToBinIO :: MP -> IO ByteString
mpToBinIO mp = withMPPtr mp $ \ mpPtr -> do
    numBytes <- mpNumBytesIO mp
    allocBytes numBytes $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_mp_to_bin mpPtr bytesPtr

-- NOTE: Awkward, more like mpSetFromBin
--  When we wrap it in higher level, fromBin should be :: ByteString -> IO Integer
mpFromBinIO :: MP -> ByteString -> IO ()
mpFromBinIO = mkSetBytesLen withMPPtr botan_mp_from_bin

mpToWord32IO :: MP -> IO Word32
mpToWord32IO mp = withMPPtr mp $ \ mpPtr -> do
    alloca $ \ valPtr -> do
        throwBotanIfNegative_ $ botan_mp_to_uint32 mpPtr valPtr
        peek valPtr

mpIsPositiveIO :: MP -> IO Bool
mpIsPositiveIO = mkGetBoolCode withMPPtr botan_mp_is_positive

mpIsNegativeIO :: MP -> IO Bool
mpIsNegativeIO = mkGetBoolCode withMPPtr botan_mp_is_negative

mpFlipSignIO :: MP -> IO ()
mpFlipSignIO = mkAction withMPPtr botan_mp_flip_sign

mpIsZeroIO :: MP -> IO Bool
mpIsZeroIO = mkGetBoolCode withMPPtr botan_mp_is_zero

mpAddWord32IO :: MP -> MP -> Word32 -> IO ()
mpAddWord32IO result x y = withMPPtr result $ \ resultPtr -> do
    withMPPtr x $ \ xPtr -> do
        throwBotanIfNegative_ $ botan_mp_add_u32 resultPtr xPtr y

mpSubWord32IO :: MP -> MP -> Word32 -> IO ()
mpSubWord32IO result x y = withMPPtr result $ \ resultPtr -> do
    withMPPtr x $ \ xPtr -> do
        throwBotanIfNegative_ $ botan_mp_sub_u32 resultPtr xPtr y

mpAddIO :: MP -> MP -> MP -> IO ()
mpAddIO = mkBinaryOp withMPPtr botan_mp_add

mpSubIO :: MP -> MP -> MP -> IO ()
mpSubIO = mkBinaryOp withMPPtr botan_mp_sub

mpMulIO :: MP -> MP -> MP -> IO ()
mpMulIO = mkBinaryOp withMPPtr botan_mp_mul

mpDivIO :: MP -> MP -> MP -> MP -> IO ()
mpDivIO = mkBinaryDuplexOp withMPPtr botan_mp_div

mpModMulIO :: MP -> MP -> MP -> MP -> IO ()
mpModMulIO = mkTrinaryOp withMPPtr botan_mp_mod_mul

-- NOTE: Cannot use mkGetBoolCode unless
mpEqualIO :: MP -> MP -> IO Bool
mpEqualIO a b = withMPPtr a $ \ aPtr -> do
    withMPPtr b $ \ bPtr -> do
        throwBotanCatchingBool $ botan_mp_equal aPtr bPtr

-- TODO: Convert Int to Ordering in >1:1 low-level bindings
mpCmpIO :: MP -> MP -> IO Int
mpCmpIO a b = withMPPtr a $ \ aPtr -> do
    withMPPtr b $ \ bPtr -> do
        alloca $ \ resultPtr -> do
            throwBotanIfNegative_ $ botan_mp_cmp resultPtr aPtr bPtr
            fromIntegral <$> peek resultPtr

mpSwapIO :: MP -> MP -> IO ()
mpSwapIO a b = withMPPtr a $ \ aPtr -> do
    withMPPtr b $ \ bPtr -> do
        throwBotanIfNegative_ $ botan_mp_swap aPtr bPtr

mpPowModIO :: MP -> MP -> MP -> MP -> IO ()
mpPowModIO = mkTrinaryOp withMPPtr botan_mp_powmod

mpLeftShiftIO :: MP -> MP -> Int -> IO ()
mpLeftShiftIO = mkUnaryOp_csize withMPPtr botan_mp_lshift

mpRightShiftIO :: MP -> MP -> Int -> IO ()
mpRightShiftIO = mkUnaryOp_csize withMPPtr botan_mp_rshift

mpModInverseIO :: MP -> MP -> MP -> IO ()
mpModInverseIO = mkBinaryOp withMPPtr botan_mp_mod_inverse

mpRandBitsIO :: MP -> RNGCtx -> Int -> IO ()
mpRandBitsIO mp rng sz = withMPPtr mp $ \ mpPtr -> do
   withRNGPtr rng $ \ rngPtr -> do
        throwBotanIfNegative_ $ botan_mp_rand_bits mpPtr rngPtr (fromIntegral sz)

-- NOTE: Never includes upper bound
mpRandRangeIO :: MP -> RNGCtx -> MP -> MP -> IO ()
mpRandRangeIO mp rng lower upper = withMPPtr mp $ \ mpPtr -> do
   withRNGPtr rng $ \ rngPtr -> do
        withMPPtr lower $ \ lowerPtr -> do
            withMPPtr upper $ \ upperPtr -> do
                throwBotanIfNegative_ $ botan_mp_rand_range mpPtr rngPtr lowerPtr upperPtr

mpGCDIO :: MP -> MP -> MP -> IO ()
mpGCDIO = mkBinaryOp withMPPtr botan_mp_gcd

-- NOTE: Miller–Rabin primality test
mpIsPrimeIO :: MP -> RNGCtx -> Int -> IO Bool
mpIsPrimeIO mp rng probability = withMPPtr mp $ \ mpPtr -> do
    withRNGPtr rng $ \ rngPtr -> do
        throwBotanCatchingBool $ botan_mp_is_prime mpPtr rngPtr (fromIntegral probability)

mpGetBitIO :: MP -> Int -> IO Bool
mpGetBitIO = mkGetBoolCode_csize withMPPtr botan_mp_get_bit

mpSetBitIO :: MP -> Int -> IO ()
mpSetBitIO = mkSetCSize withMPPtr botan_mp_set_bit

mpClearBitIO :: MP -> Int -> IO ()
mpClearBitIO = mkSetCSize withMPPtr botan_mp_clear_bit

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