{-|
Module      : Botan.Bindings.MPI
Description : Multiple Precision Integers
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.MPI (
    BotanMPStruct
  , BotanMP (..)
  , botan_mp_destroy
  , botan_mp_init
  , botan_mp_to_hex
  , botan_mp_to_str
  , botan_mp_clear
  , botan_mp_set_from_int
  , botan_mp_set_from_mp
  , botan_mp_set_from_str
  , botan_mp_set_from_radix_str
  , botan_mp_num_bits
  , botan_mp_num_bytes
  , botan_mp_to_bin
  , botan_mp_from_bin
  , botan_mp_to_uint32
  , botan_mp_is_positive
  , botan_mp_is_negative
  , botan_mp_flip_sign
  , botan_mp_is_zero
  , botan_mp_add_u32
  , botan_mp_sub_u32
  , botan_mp_add
  , botan_mp_sub
  , botan_mp_mul
  , botan_mp_div
  , botan_mp_mod_mul
  , botan_mp_equal
  , botan_mp_cmp
  , botan_mp_swap
  , botan_mp_powmod
  , botan_mp_lshift
  , botan_mp_rshift
  , botan_mp_mod_inverse
  , botan_mp_rand_bits
  , botan_mp_rand_range
  , botan_mp_gcd
  , botan_mp_is_prime
  , botan_mp_get_bit
  , botan_mp_set_bit
  , botan_mp_clear_bit
  ) where

import           Botan.Bindings.Prelude
import           Botan.Bindings.RNG

-- | Opaque MP struct
data {-# CTYPE "botan/ffi.h" "struct botan_mp_struct" #-} BotanMPStruct

-- | Botan MP object
newtype {-# CTYPE "botan/ffi.h" "botan_mp_t" #-} BotanMP
    = MkBotanMP { runBotanMP :: Ptr BotanMPStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy (deallocate) an MPI
foreign import capi safe "botan/ffi.h &botan_mp_destroy"
    botan_mp_destroy
        :: FinalizerPtr BotanMPStruct

-- | Initialize an MPI
foreign import capi safe "botan/ffi.h botan_mp_init"
    botan_mp_init
        :: Ptr BotanMP -- ^ __mp__
        -> IO CInt

-- | Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes
foreign import capi safe "botan/ffi.h botan_mp_to_hex"
    botan_mp_to_hex
        :: BotanMP      -- ^ __mp__
        -> Ptr CChar    -- ^ __out__
        -> IO CInt

{- |
Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

NOTE: base 16 encoding has an `0x` prefix, base 10 does not.

NOTE: Despite the size ptr, this appears to be returning null-terminated CStrings
-}
foreign import capi safe "botan/ffi.h botan_mp_to_str"
    botan_mp_to_str
        :: BotanMP      -- ^ __mp__
        -> Word8        -- ^ __base__
        -> Ptr CChar    -- ^ __out__
        -> Ptr CSize    -- ^ __out_len__
        -> IO CInt

-- | Set the MPI to zero
foreign import capi safe "botan/ffi.h botan_mp_clear"
    botan_mp_clear
        :: BotanMP  -- ^ __mp__
        -> IO CInt

-- | Set the MPI value from an int
foreign import capi safe "botan/ffi.h botan_mp_set_from_int"
    botan_mp_set_from_int
        :: BotanMP  -- ^ __mp__
        -> CInt     -- ^ __initial_value__
        -> IO CInt

-- | Set the MPI value from another MP object
foreign import capi safe "botan/ffi.h botan_mp_set_from_mp"
    botan_mp_set_from_mp
        :: BotanMP -- ^ __dest__
        -> BotanMP -- ^ __source__
        -> IO CInt

-- | Set the MPI value from a string
foreign import capi safe "botan/ffi.h botan_mp_set_from_str"
    botan_mp_set_from_str
        :: BotanMP          -- ^ __dest__
        -> ConstPtr CChar   -- ^ __str__
        -> IO CInt

{- |
Set the MPI value from a string with arbitrary radix.
For arbitrary being 10 or 16.
-}
foreign import capi safe "botan/ffi.h botan_mp_set_from_radix_str"
    botan_mp_set_from_radix_str
        :: BotanMP          -- ^ __dest__
        -> ConstPtr CChar   -- ^ __str__
        -> CSize            -- ^ __radix__
        -> IO CInt

-- | Return the number of significant bits in the MPI
foreign import capi safe "botan/ffi.h botan_mp_num_bits"
    botan_mp_num_bits
        :: BotanMP      -- ^ __n__
        -> Ptr CSize    -- ^ __bits__
        -> IO CInt

-- | Return the number of significant bytes in the MPI
foreign import capi safe "botan/ffi.h botan_mp_num_bytes"
    botan_mp_num_bytes
        :: BotanMP      -- ^ __n__
        -> Ptr CSize    -- ^ __bytes__
        -> IO CInt

-- | Convert the MPI to a big-endian binary string. Writes botan_mp_num_bytes to vec
foreign import capi safe "botan/ffi.h botan_mp_to_bin"
    botan_mp_to_bin
        :: BotanMP      -- ^ __mp__
        -> Ptr Word8    -- ^ __vec[]__
        -> IO CInt

-- | Set an MP to the big-endian binary value
foreign import capi safe "botan/ffi.h botan_mp_from_bin"
    botan_mp_from_bin
        :: BotanMP          -- ^ __mp__
        -> ConstPtr Word8   -- ^ __vec[]__
        -> CSize            -- ^ __vec_len__
        -> IO CInt

-- | Convert the MPI to a uint32_t, if possible. Fails if MPI is negative or too large.
foreign import capi safe "botan/ffi.h botan_mp_to_uint32"
    botan_mp_to_uint32
        :: BotanMP      -- ^ __mp__
        -> Ptr Word32   -- ^ __val__
        -> IO CInt

{- |
This function should have been named mp_is_non_negative. Returns 1
iff mp is greater than *or equal to* zero. Use botan_mp_is_negative
to detect negative numbers, botan_mp_is_zero to check for zero.
-}
foreign import capi safe "botan/ffi.h botan_mp_is_positive"
    botan_mp_is_positive
        :: BotanMP -- ^ __mp__
        -> IO CInt

-- | Return 1 iff mp is less than 0
foreign import capi safe "botan/ffi.h botan_mp_is_negative"
    botan_mp_is_negative
        :: BotanMP -- ^ __mp__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_flip_sign"
    botan_mp_flip_sign
        :: BotanMP -- ^ __mp__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_is_zero"
    botan_mp_is_zero
        :: BotanMP -- ^ __mp__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_add_u32"
    botan_mp_add_u32
        :: BotanMP  -- ^ __result__
        -> BotanMP  -- ^ __x__
        -> Word32   -- ^ __y__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_sub_u32"
    botan_mp_sub_u32
        :: BotanMP  -- ^ __result__
        -> BotanMP  -- ^ __x__
        -> Word32   -- ^ __y__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_add"
    botan_mp_add
        :: BotanMP -- ^ __result__
        -> BotanMP -- ^ __x__
        -> BotanMP -- ^ __y__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_sub"
    botan_mp_sub
        :: BotanMP -- ^ __result__
        -> BotanMP -- ^ __x__
        -> BotanMP -- ^ __y__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_mul"
    botan_mp_mul
        :: BotanMP -- ^ __result__
        -> BotanMP -- ^ __x__
        -> BotanMP -- ^ __y__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_div"
    botan_mp_div
        :: BotanMP -- ^ __quotient__
        -> BotanMP -- ^ __remainder__
        -> BotanMP -- ^ __x__
        -> BotanMP -- ^ __y__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_mod_mul"
    botan_mp_mod_mul
        :: BotanMP -- ^ __result__
        -> BotanMP -- ^ __x__
        -> BotanMP -- ^ __y__
        -> BotanMP -- ^ __mod__
        -> IO CInt

{- |
Returns 0 if x != y
Returns 1 if x == y
Returns negative number on error
-}
foreign import capi safe "botan/ffi.h botan_mp_equal"
    botan_mp_equal
        :: BotanMP -- ^ __x__
        -> BotanMP -- ^ __y__
        -> IO CInt

{- |
Sets *result to comparison result:
-1 if x < y, 0 if x == y, 1 if x > y
Returns negative number on error or zero on success
-}
foreign import capi safe "botan/ffi.h botan_mp_cmp"
    botan_mp_cmp
        :: Ptr CInt -- ^ __result__
        -> BotanMP  -- ^ __x__
        -> BotanMP  -- ^ __y__
        -> IO CInt

-- | Swap two botan_mp_t
foreign import capi safe "botan/ffi.h botan_mp_swap"
    botan_mp_swap
        :: BotanMP -- ^ __x__
        -> BotanMP -- ^ __y__
        -> IO CInt

-- | Return (base^exponent) % modulus
foreign import capi safe "botan/ffi.h botan_mp_powmod"
    botan_mp_powmod
        :: BotanMP -- ^ __result__
        -> BotanMP -- ^ __base__
        -> BotanMP -- ^ __exponent__
        -> BotanMP -- ^ __modulus__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_lshift"
    botan_mp_lshift
        :: BotanMP  -- ^ __result__
        -> BotanMP  -- ^ __n__
        -> CSize    -- ^ __shift__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_rshift"
    botan_mp_rshift
        :: BotanMP  -- ^ __result__
        -> BotanMP  -- ^ __n__
        -> CSize    -- ^ __shift__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_mod_inverse"
    botan_mp_mod_inverse
        :: BotanMP -- ^ __result__
        -> BotanMP -- ^ __n__
        -> BotanMP -- ^ __modulus__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_rand_bits"
    botan_mp_rand_bits
        :: BotanMP  -- ^ __rand_out__
        -> BotanRNG -- ^ __rng__
        -> CSize    -- ^ __bits__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_rand_range"
    botan_mp_rand_range
        :: BotanMP  -- ^ __rand_out__
        -> BotanRNG -- ^ __rng__
        -> BotanMP  -- ^ __lower_bound__
        -> BotanMP  -- ^ __upper_bound__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_gcd"
    botan_mp_gcd
        :: BotanMP -- ^ __out__
        -> BotanMP -- ^ __x__
        -> BotanMP -- ^ __y__
        -> IO CInt

{- |
Returns 0 if n is not prime
Returns 1 if n is prime
Returns negative number on error
-}
foreign import capi safe "botan/ffi.h botan_mp_is_prime"
    botan_mp_is_prime
        :: BotanMP  -- ^ __n__
        -> BotanRNG -- ^ __rng__
        -> CSize    -- ^ __test_prob__
        -> IO CInt

{- |
Returns 0 if specified bit of n is not set
Returns 1 if specified bit of n is set
Returns negative number on error
-}
foreign import capi safe "botan/ffi.h botan_mp_get_bit"
    botan_mp_get_bit
        :: BotanMP  -- ^ __n__
        -> CSize    -- ^ __bit__
        -> IO CInt

-- | Set the specified bit
foreign import capi safe "botan/ffi.h botan_mp_set_bit"
    botan_mp_set_bit
        :: BotanMP  -- ^ __n__
        -> CSize    -- ^ __bit__
        -> IO CInt

-- | Clear the specified bit
foreign import capi safe "botan/ffi.h botan_mp_clear_bit"
    botan_mp_clear_bit
        :: BotanMP  -- ^ __n__
        -> CSize    -- ^ __bit__
        -> IO CInt
