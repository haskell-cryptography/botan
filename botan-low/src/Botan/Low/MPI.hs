{-|
Module      : Botan.Low.MPI
Description : Multiple Precision Integers
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.MPI (

    MP(..)
  , withMP
  , mpInit
  , mpDestroy
  , mpToHex
  , mpToStr
  , mpClear
  , mpSetFromInt
  , mpSetFromMP
  , mpCopy
  , mpSetFromStr
  , mpSetFromRadixStr
  , mpNumBits
  , mpNumBytes
  , mpToBin
  , mpFromBin
  , mpToWord32
  , mpIsPositive
  , mpIsNegative
  , mpFlipSign
  , mpIsZero
  , mpAddWord32
  , mpSubWord32
  , mpAdd
  , mpSub
  , mpMul
  , mpDiv
  , mpModMul
  , mpEqual
  , mpCmp
  , mpSwap
  , mpPowMod
  , mpLeftShift
  , mpRightShift
  , mpModInverse
  , mpRandBits
  , mpRandRange
  , mpGCD
  , mpIsPrime
  , mpGetBit
  , mpSetBit
  , mpClearBit

  ) where

import           Botan.Bindings.MPI
import           Botan.Low.Error.Internal
import qualified Botan.Low.Internal as Internal
import           Botan.Low.Internal.ByteString
import           Botan.Low.Make
import           Botan.Low.Remake
import           Botan.Low.RNG
import           Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import           Data.Word
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Marshal.Alloc
import           Foreign.Ptr
import           Foreign.Storable
import           HsBindgen.Runtime.ConstPtr (ConstPtr (..))

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

newtype MP = MkMP { getMPForeignPtr :: ForeignPtr Botan_mp_struct }

withMP     :: MP -> (Botan_mp_t -> IO a) -> IO a
mpDestroy  :: MP -> IO ()
createMP   :: (Ptr Botan_mp_t -> IO CInt) -> IO MP
(withMP, mpDestroy, createMP)
    = mkBindings
        Botan_mp_t (.un_Botan_mp_t)
        MkMP (.getMPForeignPtr)
        (Internal.funPtrIgnoreRetCode botan_mp_destroy_ptr)

mpInit :: IO MP
-- mpInit = mkInit MkMP botan_mp_init botan_mp_destroy
mpInit = createMP botan_mp_init

-- NOTE: The actual botan_mp_to_hex is misleading
--  The actual buffer size is 2 + (num_bytes * 2) + 1 bytes in length
--  The leading 2 is `0x` prefix, the trailing 1 is `\0` suffix
mpToHex :: MP -> IO ByteString
mpToHex mp = withMP mp $ \ mpPtr -> do
    numBytes <- mpNumBytes mp
    allocaBytes (2 + (numBytes * 2) + 1) $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_mp_to_hex mpPtr bytesPtr
        ByteString.packCString bytesPtr

mpToStr :: MP -> Int -> IO ByteString
mpToStr mp base = withMP mp $ \ mpPtr -> do
    allocBytesQueryingCString $ \ bytesPtr szPtr ->
        botan_mp_to_str mpPtr (fromIntegral base) bytesPtr szPtr

mpClear :: MP -> IO ()
mpClear = mkAction withMP botan_mp_clear

mpSetFromInt :: MP -> Int -> IO ()
mpSetFromInt = mkSetCInt withMP botan_mp_set_from_int

mpSetFromMP :: MP -> MP -> IO ()
mpSetFromMP = mkUnaryOp withMP botan_mp_set_from_mp

-- NOTE: Convenience function
mpCopy :: MP -> IO MP
mpCopy mp = do
    copy <- mpInit
    mpSetFromMP copy mp
    return copy

mpSetFromStr :: MP -> ByteString -> IO ()
mpSetFromStr = mkSetCString withMP (\ mp cstr -> botan_mp_set_from_str mp (ConstPtr cstr))

-- NOTE: According to unit tests, this function *does not* prepend "0x" to the value
mpSetFromRadixStr :: MP -> ByteString -> Int -> IO ()
mpSetFromRadixStr = mkSetCString_csize withMP (\ mp cstr radix -> botan_mp_set_from_radix_str mp (ConstPtr cstr) radix)

mpNumBits :: MP -> IO Int
mpNumBits = mkGetSize withMP botan_mp_num_bits

mpNumBytes :: MP -> IO Int
mpNumBytes = mkGetSize withMP botan_mp_num_bytes

mpToBin :: MP -> IO ByteString
mpToBin mp = withMP mp $ \ mpPtr -> do
    numBytes <- mpNumBytes mp
    allocBytes numBytes $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_mp_to_bin mpPtr bytesPtr

-- NOTE: Awkward, more like mpSetFromBin
--  When we wrap it in higher level, fromBin should be :: ByteString -> IO Integer
mpFromBin :: MP -> ByteString -> IO ()
mpFromBin = mkSetBytesLen withMP (\ mp cbytes len -> botan_mp_from_bin mp (ConstPtr cbytes) len)

mpToWord32 :: MP -> IO Word32
mpToWord32 mp = withMP mp $ \ mpPtr -> do
    alloca $ \ valPtr -> do
        throwBotanIfNegative_ $ botan_mp_to_uint32 mpPtr valPtr
        peek valPtr

mpIsPositive :: MP -> IO Bool
mpIsPositive = mkGetBoolCode withMP botan_mp_is_positive

mpIsNegative :: MP -> IO Bool
mpIsNegative = mkGetBoolCode withMP botan_mp_is_negative

mpFlipSign :: MP -> IO ()
mpFlipSign = mkAction withMP botan_mp_flip_sign

mpIsZero :: MP -> IO Bool
mpIsZero = mkGetBoolCode withMP botan_mp_is_zero

mpAddWord32 :: MP -> MP -> Word32 -> IO ()
mpAddWord32 result x y = withMP result $ \ resultPtr -> do
    withMP x $ \ xPtr -> do
        throwBotanIfNegative_ $ botan_mp_add_u32 resultPtr xPtr y

mpSubWord32 :: MP -> MP -> Word32 -> IO ()
mpSubWord32 result x y = withMP result $ \ resultPtr -> do
    withMP x $ \ xPtr -> do
        throwBotanIfNegative_ $ botan_mp_sub_u32 resultPtr xPtr y

mpAdd :: MP -> MP -> MP -> IO ()
mpAdd = mkBinaryOp withMP botan_mp_add

mpSub :: MP -> MP -> MP -> IO ()
mpSub = mkBinaryOp withMP botan_mp_sub

mpMul :: MP -> MP -> MP -> IO ()
mpMul = mkBinaryOp withMP botan_mp_mul

mpDiv :: MP -> MP -> MP -> MP -> IO ()
mpDiv = mkBinaryDuplexOp withMP botan_mp_div

mpModMul :: MP -> MP -> MP -> MP -> IO ()
mpModMul = mkTrinaryOp withMP botan_mp_mod_mul

-- NOTE: Cannot use mkGetBoolCode unless
mpEqual :: MP -> MP -> IO Bool
mpEqual a b = withMP a $ \ aPtr -> do
    withMP b $ \ bPtr -> do
        throwBotanCatchingBool $ botan_mp_equal aPtr bPtr

-- TODO: Convert Int to Ordering in >1:1 low-level bindings
mpCmp :: MP -> MP -> IO Int
mpCmp a b = withMP a $ \ aPtr -> do
    withMP b $ \ bPtr -> do
        alloca $ \ resultPtr -> do
            throwBotanIfNegative_ $ botan_mp_cmp resultPtr aPtr bPtr
            fromIntegral <$> peek resultPtr

mpSwap :: MP -> MP -> IO ()
mpSwap a b = withMP a $ \ aPtr -> do
    withMP b $ \ bPtr -> do
        throwBotanIfNegative_ $ botan_mp_swap aPtr bPtr

mpPowMod :: MP -> MP -> MP -> MP -> IO ()
mpPowMod = mkTrinaryOp withMP botan_mp_powmod

mpLeftShift :: MP -> MP -> Int -> IO ()
mpLeftShift = mkUnaryOp_csize withMP botan_mp_lshift

mpRightShift :: MP -> MP -> Int -> IO ()
mpRightShift = mkUnaryOp_csize withMP botan_mp_rshift

mpModInverse :: MP -> MP -> MP -> IO ()
mpModInverse = mkBinaryOp withMP botan_mp_mod_inverse

mpRandBits :: MP -> RNG -> Int -> IO ()
mpRandBits mp rng sz = withMP mp $ \ mpPtr -> do
   withRNG rng $ \ botanRNG -> do
        throwBotanIfNegative_ $ botan_mp_rand_bits mpPtr botanRNG (fromIntegral sz)

-- NOTE: Never includes upper bound
mpRandRange :: MP -> RNG -> MP -> MP -> IO ()
mpRandRange mp rng lower upper = withMP mp $ \ mpPtr -> do
   withRNG rng $ \ botanRNG -> do
        withMP lower $ \ lowerPtr -> do
            withMP upper $ \ upperPtr -> do
                throwBotanIfNegative_ $ botan_mp_rand_range mpPtr botanRNG lowerPtr upperPtr

mpGCD :: MP -> MP -> MP -> IO ()
mpGCD = mkBinaryOp withMP botan_mp_gcd

-- NOTE: Miller–Rabin primality test
mpIsPrime :: MP -> RNG -> Int -> IO Bool
mpIsPrime mp rng probability = withMP mp $ \ mpPtr -> do
    withRNG rng $ \ botanRNG -> do
        throwBotanCatchingBool $ botan_mp_is_prime mpPtr botanRNG (fromIntegral probability)

mpGetBit :: MP -> Int -> IO Bool
mpGetBit = mkGetBoolCode_csize withMP botan_mp_get_bit

mpSetBit :: MP -> Int -> IO ()
mpSetBit = mkSetCSize withMP botan_mp_set_bit

mpClearBit :: MP -> Int -> IO ()
mpClearBit = mkSetCSize withMP botan_mp_clear_bit

--
-- Helpers
--

-- int botan_...(botan_mp_t dest, const botan_mp_t source);
type UnaryOp ptr = ptr -> ptr -> IO CInt

mkUnaryOp :: WithPtr typ ptr -> UnaryOp ptr -> typ -> typ -> IO ()
mkUnaryOp withPtr unary dest source = withPtr dest $ \ destPtr -> do
    withPtr source $ \ sourcePtr -> do
        throwBotanIfNegative_ $ unary destPtr sourcePtr

-- int botan_...(botan_mp_t dest, const botan_mp_t source, size_t factor);
type UnaryOp_csize ptr = ptr -> ptr -> CSize -> IO CInt

mkUnaryOp_csize :: WithPtr typ ptr -> UnaryOp_csize ptr -> typ -> typ -> Int -> IO ()
mkUnaryOp_csize withPtr unary dest source factor  = withPtr dest $ \ destPtr -> do
    withPtr source $ \ sourcePtr -> do
        throwBotanIfNegative_ $ unary destPtr sourcePtr (fromIntegral factor)

-- int botan_...(botan_mp_t dest, const botan_mp_t a, const botan_mp_t b);
type BinaryOp ptr = ptr -> ptr -> ptr -> IO CInt

mkBinaryOp :: WithPtr typ ptr -> BinaryOp ptr -> typ -> typ -> typ -> IO ()
mkBinaryOp withPtr binary dest a b = withPtr dest $ \ destPtr -> do
    withPtr a $ \ aPtr -> do
        withPtr b $ \ bPtr -> do
            throwBotanIfNegative_ $ binary destPtr aPtr bPtr

-- int botan_...(botan_mp_t a, botan_mp_t b, const botan_mp_t x, const botan_mp_t y);
type BinaryDuplexOp ptr = ptr -> ptr -> ptr -> ptr -> IO CInt

-- NOTE: Do not confuse for mkTrinaryOp
mkBinaryDuplexOp :: WithPtr typ ptr -> BinaryDuplexOp ptr -> typ -> typ -> typ -> typ -> IO ()
mkBinaryDuplexOp withPtr binary a b x y = withPtr a $ \ aPtr -> do
    withPtr b $ \ bPtr -> do
        withPtr x $ \ xPtr -> do
            withPtr y $ \ yPtr -> do
                throwBotanIfNegative_ $ binary aPtr bPtr xPtr yPtr

-- int botan_...(botan_mp_t a, botan_mp_t b, const botan_mp_t x, const botan_mp_t y);
type TrinaryOp ptr = ptr -> ptr -> ptr -> ptr -> IO CInt

-- NOTE: Do not confuse for mkBinaryDuplexOp
mkTrinaryOp :: WithPtr typ ptr -> TrinaryOp ptr -> typ -> typ -> typ -> typ -> IO ()
mkTrinaryOp withPtr binary a x y z = withPtr a $ \ aPtr -> do
    withPtr x $ \ xPtr -> do
        withPtr y $ \ yPtr -> do
            withPtr z $ \ zPtr -> do
                throwBotanIfNegative_ $ binary aPtr xPtr yPtr zPtr
