{-|
Module      : Botan.Bindings.MPI
Description : Multiple Precision Integers
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.MPI where

import Botan.Bindings.Prelude
import Botan.Bindings.RNG

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
        :: Ptr BotanMP -- ^ mp
        -> IO CInt

-- | Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes
foreign import capi safe "botan/ffi.h botan_mp_to_hex"
    botan_mp_to_hex
        :: BotanMP      -- ^ mp
        -> Ptr CChar    -- ^ out
        -> IO CInt

{- |
Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

NOTE: base 16 encoding has an `0x` prefix, base 10 does not.

NOTE: Despite the size ptr, this appears to be returning null-terminated CStrings
-}
foreign import capi safe "botan/ffi.h botan_mp_to_str"
    botan_mp_to_str
        :: BotanMP      -- ^ mp
        -> Word8        -- ^ base
        -> Ptr CChar    -- ^ out
        -> Ptr CSize    -- ^ out_len
        -> IO CInt

-- | Set the MPI to zero
foreign import capi safe "botan/ffi.h botan_mp_clear"
    botan_mp_clear
        :: BotanMP  -- ^ mp
        -> IO CInt

-- | Set the MPI value from an int
foreign import capi safe "botan/ffi.h botan_mp_set_from_int"
    botan_mp_set_from_int
        :: BotanMP  -- ^ mp
        -> CInt     -- ^ initial_value
        -> IO CInt

-- | Set the MPI value from another MP object
foreign import capi safe "botan/ffi.h botan_mp_set_from_mp"
    botan_mp_set_from_mp
        :: BotanMP -- ^ dest
        -> BotanMP -- ^ source
        -> IO CInt

-- | Set the MPI value from a string
foreign import capi safe "botan/ffi.h botan_mp_set_from_str"
    botan_mp_set_from_str
        :: BotanMP          -- ^ dest
        -> ConstPtr CChar   -- ^ str
        -> IO CInt

{- |
Set the MPI value from a string with arbitrary radix.
For arbitrary being 10 or 16.
-}
foreign import capi safe "botan/ffi.h botan_mp_set_from_radix_str"
    botan_mp_set_from_radix_str
        :: BotanMP          -- ^ dest
        -> ConstPtr CChar   -- ^ str
        -> CSize            -- ^ radix
        -> IO CInt

-- | Return the number of significant bits in the MPI
foreign import capi safe "botan/ffi.h botan_mp_num_bits"
    botan_mp_num_bits
        :: BotanMP      -- ^ n
        -> Ptr CSize    -- ^ bits
        -> IO CInt

-- | Return the number of significant bytes in the MPI
foreign import capi safe "botan/ffi.h botan_mp_num_bytes"
    botan_mp_num_bytes
        :: BotanMP      -- ^ n
        -> Ptr CSize    -- ^ bytes
        -> IO CInt

-- | Convert the MPI to a big-endian binary string. Writes botan_mp_num_bytes to vec
foreign import capi safe "botan/ffi.h botan_mp_to_bin"
    botan_mp_to_bin
        :: BotanMP      -- ^ mp
        -> Ptr Word8    -- ^ vec[]
        -> IO CInt

-- | Set an MP to the big-endian binary value
foreign import capi safe "botan/ffi.h botan_mp_from_bin"
    botan_mp_from_bin
        :: BotanMP          -- ^ mp
        -> ConstPtr Word8   -- ^ vec[]
        -> CSize            -- ^ vec_len
        -> IO CInt

-- | Convert the MPI to a uint32_t, if possible. Fails if MPI is negative or too large.
foreign import capi safe "botan/ffi.h botan_mp_to_uint32"
    botan_mp_to_uint32
        :: BotanMP      -- ^ mp
        -> Ptr Word32   -- ^ val
        -> IO CInt

{- |
This function should have been named mp_is_non_negative. Returns 1
iff mp is greater than *or equal to* zero. Use botan_mp_is_negative
to detect negative numbers, botan_mp_is_zero to check for zero.
-}
foreign import capi safe "botan/ffi.h botan_mp_is_positive"
    botan_mp_is_positive
        :: BotanMP -- ^ mp
        -> IO CInt

-- | Return 1 iff mp is less than 0
foreign import capi safe "botan/ffi.h botan_mp_is_negative"
    botan_mp_is_negative
        :: BotanMP -- ^ mp
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_flip_sign"
    botan_mp_flip_sign
        :: BotanMP -- ^ mp
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_is_zero"
    botan_mp_is_zero
        :: BotanMP -- ^ mp
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_add_u32"
    botan_mp_add_u32
        :: BotanMP  -- ^ result
        -> BotanMP  -- ^ x
        -> Word32   -- ^ y
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_sub_u32"
    botan_mp_sub_u32
        :: BotanMP  -- ^ result
        -> BotanMP  -- ^ x
        -> Word32   -- ^ y
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_add"
    botan_mp_add
        :: BotanMP -- ^ result
        -> BotanMP -- ^ x
        -> BotanMP -- ^ y
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_sub"
    botan_mp_sub
        :: BotanMP -- ^ result
        -> BotanMP -- ^ x
        -> BotanMP -- ^ y
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_mul"
    botan_mp_mul
        :: BotanMP -- ^ result
        -> BotanMP -- ^ x
        -> BotanMP -- ^ y
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_div"
    botan_mp_div
        :: BotanMP -- ^ quotient
        -> BotanMP -- ^ remainder
        -> BotanMP -- ^ x
        -> BotanMP -- ^ y
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_mod_mul"
    botan_mp_mod_mul
        :: BotanMP -- ^ result
        -> BotanMP -- ^ x
        -> BotanMP -- ^ y
        -> BotanMP -- ^ mod
        -> IO CInt

{- |
Returns 0 if x != y
Returns 1 if x == y
Returns negative number on error
-}
foreign import capi safe "botan/ffi.h botan_mp_equal"
    botan_mp_equal
        :: BotanMP -- ^ x
        -> BotanMP -- ^ y
        -> IO CInt

{- |
Sets *result to comparison result:
-1 if x < y, 0 if x == y, 1 if x > y
Returns negative number on error or zero on success
-}
foreign import capi safe "botan/ffi.h botan_mp_cmp"
    botan_mp_cmp
        :: Ptr CInt -- ^ result
        -> BotanMP  -- ^ x
        -> BotanMP  -- ^ y
        -> IO CInt

-- | Swap two botan_mp_t
foreign import capi safe "botan/ffi.h botan_mp_swap"
    botan_mp_swap
        :: BotanMP -- ^ x
        -> BotanMP -- ^ y
        -> IO CInt

-- | Return (base^exponent) % modulus 
foreign import capi safe "botan/ffi.h botan_mp_powmod"
    botan_mp_powmod
        :: BotanMP -- ^ result
        -> BotanMP -- ^ base
        -> BotanMP -- ^ exponent
        -> BotanMP -- ^ modulus
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_lshift"
    botan_mp_lshift
        :: BotanMP  -- ^ result
        -> BotanMP  -- ^ n
        -> CSize    -- ^ shift
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_rshift"
    botan_mp_rshift
        :: BotanMP  -- ^ result
        -> BotanMP  -- ^ n
        -> CSize    -- ^ shift
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_mod_inverse"
    botan_mp_mod_inverse
        :: BotanMP -- ^ result
        -> BotanMP -- ^ n
        -> BotanMP -- ^ modulus
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_rand_bits"
    botan_mp_rand_bits
        :: BotanMP  -- ^ rand_out
        -> BotanRNG -- ^ rng
        -> CSize    -- ^ bits
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_rand_range"
    botan_mp_rand_range
        :: BotanMP  -- ^ rand_out
        -> BotanRNG -- ^ rng
        -> BotanMP  -- ^ lower_bound
        -> BotanMP  -- ^ upper_bound
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_mp_gcd"
    botan_mp_gcd
        :: BotanMP -- ^ out
        -> BotanMP -- ^ x
        -> BotanMP -- ^ y
        -> IO CInt

{- |
Returns 0 if n is not prime
Returns 1 if n is prime
Returns negative number on error
-}
foreign import capi safe "botan/ffi.h botan_mp_is_prime"
    botan_mp_is_prime
        :: BotanMP  -- ^ n
        -> BotanRNG -- ^ rng
        -> CSize    -- ^ test_prob
        -> IO CInt

{- |
Returns 0 if specified bit of n is not set
Returns 1 if specified bit of n is set
Returns negative number on error
-}
foreign import capi safe "botan/ffi.h botan_mp_get_bit"
    botan_mp_get_bit
        :: BotanMP  -- ^ n
        -> CSize    -- ^ bit
        -> IO CInt

-- | Set the specified bit
foreign import capi safe "botan/ffi.h botan_mp_set_bit"
    botan_mp_set_bit
        :: BotanMP  -- ^ n
        -> CSize    -- ^ bit
        -> IO CInt

-- | Clear the specified bit
foreign import capi safe "botan/ffi.h botan_mp_clear_bit"
    botan_mp_clear_bit
        :: BotanMP  -- ^ n
        -> CSize    -- ^ bit
        -> IO CInt

-- OLD BEGIN

type MPPtr = BotanMP
