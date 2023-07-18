module Botan.MPI where

import Prelude

import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString

import Data.Word

import System.IO

import Foreign.C.String
import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable

import Botan.Error
import Botan.Make
import Botan.Prelude
import Botan.Random

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

-- /*
-- * Multiple precision integers (MPI)
-- */
-- typedef struct botan_mp_struct* botan_mp_t;
data MPStruct
type MPPtr = Ptr MPStruct

newtype MP = MkMP { getMPForeignPtr :: ForeignPtr MPStruct }

withMPPtr :: MP -> (MPPtr -> IO a) -> IO a
withMPPtr = withForeignPtr . getMPForeignPtr

-- /**
-- * Initialize an MPI
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_init(botan_mp_t* mp);
foreign import ccall unsafe botan_mp_init :: Ptr MPPtr -> IO BotanErrorCode

-- /**
-- * Destroy (deallocate) an MPI
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_destroy(botan_mp_t mp);
foreign import ccall unsafe "&botan_mp_destroy" botan_mp_destroy :: FinalizerPtr MPStruct

mpInit :: IO MP
mpInit = mkInit MkMP botan_mp_init botan_mp_destroy

-- /**
-- * Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_to_hex(const botan_mp_t mp, char* out);
foreign import ccall unsafe botan_mp_to_hex :: MPPtr -> Ptr CChar -> IO BotanErrorCode

-- NOTE: The actual botan_mp_to_hex is ill-documented
--  The actual buffer size is 2 + (num_bytes * 2) + 1 bytes in length
--  The leading 2 is `0x` prefix, the trailing 1 is `\0` suffix
mpToHex :: MP -> IO ByteString
mpToHex mp = withMPPtr mp $ \ mpPtr -> do
    numBytes <- mpNumBytes mp
    allocaBytes (2 + (numBytes * 2) + 1) $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_mp_to_hex mpPtr bytesPtr
        ByteString.packCString bytesPtr

-- /**
-- * Convert the MPI to a string. Currently base == 10 and base == 16 are supported.
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_to_str(const botan_mp_t mp, uint8_t base, char* out, size_t* out_len);
-- NOTE: Despite the size ptr, this appears to be returning null-terminated CStrings
-- NOTE: base 16 encoding has an `0x` prefix, base 10 does not.
-- FRAGILE / AWKWARD FUNCTION
foreign import ccall unsafe botan_mp_to_str :: MPPtr -> Word8 -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

mpToStr :: MP -> Int -> IO ByteString
mpToStr mp base = withMPPtr mp $ \ mpPtr -> do
    numBits <- mpNumBits mp
    let estimatedLength = baseLength numBits 2 base + 2 -- NOTE: +2 for possible prefix
    allocaBytes estimatedLength $ \ bytesPtr -> do
        alloca $ \ szPtr -> do
            throwBotanIfNegative_ $ botan_mp_to_str mpPtr (fromIntegral base) bytesPtr szPtr
            ByteString.packCString bytesPtr

-- /**
-- * Set the MPI to zero
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_clear(botan_mp_t mp);
foreign import ccall unsafe botan_mp_clear :: MPPtr -> IO BotanErrorCode

mpClear :: MP -> IO ()
mpClear = mkAction withMPPtr botan_mp_clear

-- /**
-- * Set the MPI value from an int
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_set_from_int(botan_mp_t mp, int initial_value);
foreign import ccall unsafe botan_mp_set_from_int :: MPPtr -> CInt -> IO BotanErrorCode

mpSetFromInt :: MP -> Int -> IO ()
mpSetFromInt = mkSetCInt withMPPtr botan_mp_set_from_int

-- /**
-- * Set the MPI value from another MP object
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_set_from_mp(botan_mp_t dest, const botan_mp_t source);
foreign import ccall unsafe botan_mp_set_from_mp :: MPPtr -> MPPtr -> IO BotanErrorCode

mpSetFromMP :: MP -> MP -> IO ()
mpSetFromMP = mkUnaryOp withMPPtr botan_mp_set_from_mp

-- NOTE: Convenience function
mpCopy :: MP -> IO MP
mpCopy mp = do
    copy <- mpInit
    mpSetFromMP copy mp
    return copy

-- /**
-- * Set the MPI value from a string
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_set_from_str(botan_mp_t dest, const char* str);
foreign import ccall unsafe botan_mp_set_from_str :: MPPtr -> CString -> IO BotanErrorCode

mpSetFromStr :: MP -> ByteString -> IO ()
mpSetFromStr = mkSetCString withMPPtr botan_mp_set_from_str

-- /**
-- * Set the MPI value from a string with arbitrary radix.
-- * For arbitrary being 10 or 16.
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_set_from_radix_str(botan_mp_t dest, const char* str, size_t radix);
foreign import ccall unsafe botan_mp_set_from_radix_str :: MPPtr -> CString -> CSize -> IO BotanErrorCode

mpSetFromRadixStr :: MP -> ByteString -> Int -> IO ()
mpSetFromRadixStr = mkSetCString_csize withMPPtr botan_mp_set_from_radix_str

-- /**
-- * Return the number of significant bits in the MPI
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_num_bits(const botan_mp_t n, size_t* bits);
foreign import ccall unsafe botan_mp_num_bits :: MPPtr -> Ptr CSize -> IO BotanErrorCode

mpNumBits :: MP -> IO Int
mpNumBits = mkGetSize withMPPtr botan_mp_num_bits

-- /**
-- * Return the number of significant bytes in the MPI
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_num_bytes(const botan_mp_t n, size_t* bytes);
foreign import ccall unsafe botan_mp_num_bytes :: MPPtr -> Ptr CSize -> IO BotanErrorCode

mpNumBytes :: MP -> IO Int
mpNumBytes = mkGetSize withMPPtr botan_mp_num_bytes

-- /*
-- * Convert the MPI to a big-endian binary string. Writes botan_mp_num_bytes to vec
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_to_bin(const botan_mp_t mp, uint8_t vec[]);
foreign import ccall unsafe botan_mp_to_bin :: MPPtr -> Ptr Word8 -> IO BotanErrorCode

mpToBin :: MP -> IO ByteString
mpToBin mp = withMPPtr mp $ \ mpPtr -> do
    numBytes <- mpNumBytes mp
    allocBytes numBytes $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_mp_to_bin mpPtr bytesPtr

-- /*
-- * Set an MP to the big-endian binary value
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_from_bin(const botan_mp_t mp, const uint8_t vec[], size_t vec_len);
foreign import ccall unsafe botan_mp_from_bin :: MPPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- NOTE: Awkward, more like mpSetFromBin
--  When we wrap it in higher level, fromBin should be :: ByteString -> IO Integer
mpFromBin :: MP -> ByteString -> IO ()
mpFromBin = mkSetBytesLen withMPPtr botan_mp_from_bin

-- /*
-- * Convert the MPI to a uint32_t, if possible. Fails if MPI is negative or too large.
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_to_uint32(const botan_mp_t mp, uint32_t* val);
foreign import ccall unsafe botan_mp_to_uint32 :: MPPtr -> Ptr Word32 -> IO BotanErrorCode

mpToWord32 :: MP -> IO Word32
mpToWord32 mp = withMPPtr mp $ \ mpPtr -> do
    alloca $ \ valPtr -> do
        throwBotanIfNegative_ $ botan_mp_to_uint32 mpPtr valPtr
        peek valPtr

-- /**
-- * This function should have been named mp_is_non_negative. Returns 1
-- * iff mp is greater than *or equal to* zero. Use botan_mp_is_negative
-- * to detect negative numbers, botan_mp_is_zero to check for zero.
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_is_positive(const botan_mp_t mp);
foreign import ccall unsafe botan_mp_is_positive :: MPPtr -> IO BotanErrorCode

mpIsPositive :: MP -> IO Bool
mpIsPositive = mkGetBoolCode withMPPtr botan_mp_is_positive

-- /**
-- * Return 1 iff mp is less than 0
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_is_negative(const botan_mp_t mp);
foreign import ccall unsafe botan_mp_is_negative :: MPPtr -> IO BotanErrorCode

mpIsNegative :: MP -> IO Bool
mpIsNegative = mkGetBoolCode withMPPtr botan_mp_is_negative

-- BOTAN_PUBLIC_API(2,1) int botan_mp_flip_sign(botan_mp_t mp);
foreign import ccall unsafe botan_mp_flip_sign :: MPPtr -> IO BotanErrorCode

mpFlipSign :: MP -> IO ()
mpFlipSign = mkAction withMPPtr botan_mp_flip_sign

-- BOTAN_PUBLIC_API(2,1) int botan_mp_is_zero(const botan_mp_t mp);
foreign import ccall unsafe botan_mp_is_zero :: MPPtr -> IO BotanErrorCode

mpIsZero :: MP -> IO Bool
mpIsZero = mkGetBoolCode withMPPtr botan_mp_is_zero

-- BOTAN_DEPRECATED("Use botan_mp_get_bit(0)") BOTAN_PUBLIC_API(2,1)
-- int botan_mp_is_odd(const botan_mp_t mp);
-- BOTAN_DEPRECATED("Use botan_mp_get_bit(0)") BOTAN_PUBLIC_API(2,1)
-- int botan_mp_is_even(const botan_mp_t mp);

-- NOTE: *specifically* Word32 / UInt32 - not CInt, not CSize
-- BOTAN_PUBLIC_API(2,8) int botan_mp_add_u32(botan_mp_t result, const botan_mp_t x, uint32_t y);
-- BOTAN_PUBLIC_API(2,8) int botan_mp_sub_u32(botan_mp_t result, const botan_mp_t x, uint32_t y);
foreign import ccall unsafe botan_mp_add_u32 :: MPPtr -> MPPtr -> Word32 -> IO BotanErrorCode
foreign import ccall unsafe botan_mp_sub_u32 :: MPPtr -> MPPtr -> Word32 -> IO BotanErrorCode

mpAddWord32 :: MP -> MP -> Word32 -> IO ()
mpAddWord32 result x y = withMPPtr result $ \ resultPtr -> do
    withMPPtr x $ \ xPtr -> do
        throwBotanIfNegative_ $ botan_mp_add_u32 resultPtr xPtr y

mpSubWord32 :: MP -> MP -> Word32 -> IO ()
mpSubWord32 result x y = withMPPtr result $ \ resultPtr -> do
    withMPPtr x $ \ xPtr -> do
        throwBotanIfNegative_ $ botan_mp_sub_u32 resultPtr xPtr y

-- BOTAN_PUBLIC_API(2,1) int botan_mp_add(botan_mp_t result, const botan_mp_t x, const botan_mp_t y);
-- BOTAN_PUBLIC_API(2,1) int botan_mp_sub(botan_mp_t result, const botan_mp_t x, const botan_mp_t y);
-- BOTAN_PUBLIC_API(2,1) int botan_mp_mul(botan_mp_t result, const botan_mp_t x, const botan_mp_t y);
foreign import ccall unsafe botan_mp_add :: MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode
foreign import ccall unsafe botan_mp_sub :: MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode
foreign import ccall unsafe botan_mp_mul :: MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode

mpAdd :: MP -> MP -> MP -> IO ()
mpAdd = mkBinaryOp withMPPtr botan_mp_add

mpSub :: MP -> MP -> MP -> IO ()
mpSub = mkBinaryOp withMPPtr botan_mp_sub

mpMul :: MP -> MP -> MP -> IO ()
mpMul = mkBinaryOp withMPPtr botan_mp_mul

-- BOTAN_PUBLIC_API(2,1) int botan_mp_div(botan_mp_t quotient,
--                                        botan_mp_t remainder,
--                                        const botan_mp_t x, const botan_mp_t y);
foreign import ccall unsafe botan_mp_div :: MPPtr -> MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode

mpDiv :: MP -> MP -> MP -> MP -> IO ()
mpDiv = mkBinaryDuplexOp withMPPtr botan_mp_div

-- BOTAN_PUBLIC_API(2,1) int botan_mp_mod_mul(botan_mp_t result, const botan_mp_t x,
--                                            const botan_mp_t y, const botan_mp_t mod);
foreign import ccall unsafe botan_mp_mod_mul :: MPPtr -> MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode

mpModMul :: MP -> MP -> MP -> MP -> IO ()
mpModMul = mkTrinaryOp withMPPtr botan_mp_mod_mul

-- /*
-- * Returns 0 if x != y
-- * Returns 1 if x == y
-- * Returns negative number on error
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_equal(const botan_mp_t x, const botan_mp_t y);
foreign import ccall unsafe botan_mp_equal :: MPPtr -> IO BotanErrorCode

mpEqual :: MP -> IO Bool
mpEqual = mkGetBoolCode withMPPtr botan_mp_equal

-- /*
-- * Sets *result to comparison result:
-- * -1 if x < y, 0 if x == y, 1 if x > y
-- * Returns negative number on error or zero on success
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_cmp(int* result, const botan_mp_t x, const botan_mp_t y);
foreign import ccall unsafe botan_mp_cmp :: Ptr Int -> MPPtr -> MPPtr -> IO BotanErrorCode

-- TODO: Convert Int to Ordering in >1:1 low-level bindings
mpCmp :: MP -> MP -> IO Int
mpCmp a b = withMPPtr a $ \ aPtr -> do
    withMPPtr b $ \ bPtr -> do
        alloca $ \ resultPtr -> do
            throwBotanIfNegative_ $ botan_mp_cmp resultPtr aPtr bPtr
            peek resultPtr

-- /*
-- * Swap two botan_mp_t
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_swap(botan_mp_t x, botan_mp_t y);
foreign import ccall unsafe botan_mp_swap :: MPPtr -> MPPtr -> IO BotanErrorCode

mpSwap :: MP -> MP -> IO ()
mpSwap a b = withMPPtr a $ \ aPtr -> do
    withMPPtr b $ \ bPtr -> do
        throwBotanIfNegative_ $ botan_mp_swap aPtr bPtr

-- /* Return (base^exponent) % modulus */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_powmod(botan_mp_t out, const botan_mp_t base, const botan_mp_t exponent, const botan_mp_t modulus);
foreign import ccall unsafe botan_mp_powmod :: MPPtr -> MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode

mpPowMod :: MP -> MP -> MP -> MP -> IO ()
mpPowMod = mkTrinaryOp withMPPtr botan_mp_powmod

-- BOTAN_PUBLIC_API(2,1) int botan_mp_lshift(botan_mp_t out, const botan_mp_t in, size_t shift);
foreign import ccall unsafe botan_mp_lshift :: MPPtr -> MPPtr -> CSize -> IO BotanErrorCode

mpLeftShift :: MP -> MP -> Int -> IO ()
mpLeftShift = mkUnaryOp_csize withMPPtr botan_mp_lshift

-- BOTAN_PUBLIC_API(2,1) int botan_mp_rshift(botan_mp_t out, const botan_mp_t in, size_t shift);
foreign import ccall unsafe botan_mp_rshift :: MPPtr -> MPPtr -> CSize -> IO BotanErrorCode

mpRightShift :: MP -> MP -> Int -> IO ()
mpRightShift = mkUnaryOp_csize withMPPtr botan_mp_rshift

-- BOTAN_PUBLIC_API(2,1) int botan_mp_mod_inverse(botan_mp_t out, const botan_mp_t in, const botan_mp_t modulus);
foreign import ccall unsafe botan_mp_mod_inverse :: MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode

mpModInverse :: MP -> MP -> MP -> IO ()
mpModInverse = mkBinaryOp withMPPtr botan_mp_mod_inverse

-- BOTAN_PUBLIC_API(2,1) int botan_mp_rand_bits(botan_mp_t rand_out, botan_rng_t rng, size_t bits);
foreign import ccall unsafe botan_mp_rand_bits :: MPPtr -> RandomPtr -> CSize -> IO BotanErrorCode

mpRandBits :: MP -> Random -> Int -> IO ()
mpRandBits mp random sz = withMPPtr mp $ \ mpPtr -> do
    withRandomPtr random $ \ randomPtr -> do
        throwBotanIfNegative_ $ botan_mp_rand_bits mpPtr randomPtr (fromIntegral sz)

-- BOTAN_PUBLIC_API(2,1) int botan_mp_rand_range(botan_mp_t rand_out, botan_rng_t rng,
--                                   const botan_mp_t lower_bound, const botan_mp_t upper_bound);
foreign import ccall unsafe botan_mp_rand_range :: MPPtr -> RandomPtr -> MPPtr -> MPPtr -> IO BotanErrorCode

mpRandRange :: MP -> Random -> MP -> MP -> IO ()
mpRandRange mp random lower upper = withMPPtr mp $ \ mpPtr -> do
    withRandomPtr random $ \ randomPtr -> do
        withMPPtr lower $ \ lowerPtr -> do
            withMPPtr upper $ \ upperPtr -> do
                throwBotanIfNegative_ $ botan_mp_rand_range mpPtr randomPtr lowerPtr upperPtr

-- BOTAN_PUBLIC_API(2,1) int botan_mp_gcd(botan_mp_t out, const botan_mp_t x, const botan_mp_t y);
foreign import ccall unsafe botan_mp_gcd :: MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode

mpGCD :: MP -> MP -> MP -> IO ()
mpGCD = mkBinaryOp withMPPtr botan_mp_gcd

-- /**
-- * Returns 0 if n is not prime
-- * Returns 1 if n is prime
-- * Returns negative number on error
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_is_prime(const botan_mp_t n, botan_rng_t rng, size_t test_prob);
foreign import ccall unsafe botan_mp_is_prime :: MPPtr -> RandomPtr -> CSize -> IO BotanErrorCode

-- NOTE: Miller–Rabin primality test
mpIsPrime :: MP -> Random -> Int -> IO ()
mpIsPrime mp random probability = withMPPtr mp $ \ mpPtr -> do
    withRandomPtr random $ \ randomPtr -> do
        throwBotanIfNegative_ $ botan_mp_is_prime mpPtr randomPtr (fromIntegral probability)

-- /**
-- * Returns 0 if specified bit of n is not set
-- * Returns 1 if specified bit of n is set
-- * Returns negative number on error
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_get_bit(const botan_mp_t n, size_t bit);
foreign import ccall unsafe botan_mp_get_bit :: MPPtr -> CSize -> IO BotanErrorCode

mpGetBit :: MP -> Int -> IO Bool
mpGetBit = mkGetBoolCode_csize withMPPtr botan_mp_get_bit

-- /**
-- * Set the specified bit
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_set_bit(botan_mp_t n, size_t bit);
foreign import ccall unsafe botan_mp_set_bit :: MPPtr -> CSize -> IO BotanErrorCode

mpSetBit :: MP -> Int -> IO ()
mpSetBit = mkSetCSize withMPPtr botan_mp_set_bit

-- /**
-- * Clear the specified bit
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_clear_bit(botan_mp_t n, size_t bit);
foreign import ccall unsafe botan_mp_clear_bit :: MPPtr -> CSize -> IO BotanErrorCode

mpClearBit :: MP -> Int -> IO ()
mpClearBit = mkSetCSize withMPPtr botan_mp_set_bit
