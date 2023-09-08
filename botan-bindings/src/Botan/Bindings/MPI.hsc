{-|
Module      : Botan.Bindings.Version
Description : Multiple Precision Integers
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.MPI
  ( module Botan.Bindings.MPI.Types
  , module Botan.Bindings.MPI
  ) where

import           Botan.Bindings.MPI.Types
import           Botan.Bindings.RNG.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_mp_init"
  botan_mp_init
    :: Ptr Botan_mp_t -- ^ mp
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_destroy"
  botan_mp_destroy
    :: Botan_mp_t -- ^ mp
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_to_hex"
  botan_mp_to_hex
    :: Botan_mp_t -- ^ mp
    -> Ptr CChar  -- ^ out
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_to_str"
  botan_mp_to_str
    :: Botan_mp_t -- ^ mp
    -> Word8      -- ^ base
    -> Ptr CChar  -- ^ out
    -> Ptr CSize  -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_clear"
  botan_mp_clear
    :: Botan_mp_t -- ^ mp
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_set_from_int"
  botan_mp_set_from_int
    :: Botan_mp_t -- ^ mp
    -> CInt       -- ^ initial_value
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_set_from_mp"
  botan_mp_set_from_mp
    :: Botan_mp_t -- ^ dest
    -> Botan_mp_t -- ^ source
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_set_from_str"
  botan_mp_set_from_str
    :: Botan_mp_t     -- ^ dest
    -> ConstPtr CChar -- ^ str
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_set_from_radix_str"
  botan_mp_set_from_radix_str
    :: Botan_mp_t     -- ^ dest
    -> ConstPtr CChar -- ^ str
    -> CSize          -- ^ radix
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_num_bits"
  botan_mp_num_bits
    :: Botan_mp_t -- ^ n
    -> Ptr CSize  -- ^ bits
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_num_bytes"
  botan_mp_num_bytes
    :: Botan_mp_t -- ^ n
    -> Ptr CSize  -- ^ bytes
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_to_bin"
  botan_mp_to_bin
    :: Botan_mp_t -- ^ mp
    -> Ptr Word8  -- ^ vec[]
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_from_bin"
  botan_mp_from_bin
    :: Botan_mp_t      -- ^ mp
    -> ConstPtr Word8  -- ^ vec[]
    -> CSize           -- ^ vec_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_to_uint32"
  botan_mp_to_uint32
    :: Botan_mp_t -- ^ mp
    -> Ptr Word32 -- ^ val
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_is_positive"
  botan_mp_is_positive
    :: Botan_mp_t -- ^ mp
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_is_negative"
  botan_mp_is_negative
    :: Botan_mp_t -- ^ mp
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_flip_sign"
  botan_mp_flip_sign
    :: Botan_mp_t -- ^ mp
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_is_zero"
  botan_mp_is_zero
    :: Botan_mp_t -- ^ mp
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_add_u32"
  botan_mp_add_u32
    :: Botan_mp_t -- ^ t
    -> Botan_mp_t -- ^ x
    -> Word32     -- ^ y
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_sub_u32"
  botan_mp_sub_u32
    :: Botan_mp_t -- ^ t
    -> Botan_mp_t -- ^ x
    -> Word32     -- ^ y
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_add"
  botan_mp_add
    :: Botan_mp_t -- ^ t
    -> Botan_mp_t -- ^ x
    -> Botan_mp_t -- ^ y
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_sub"
  botan_mp_sub
    :: Botan_mp_t -- ^ t
    -> Botan_mp_t -- ^ x
    -> Botan_mp_t -- ^ y
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_mul"
  botan_mp_mul
    :: Botan_mp_t -- ^ t
    -> Botan_mp_t -- ^ x
    -> Botan_mp_t -- ^ y
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_div"
  botan_mp_div
    :: Botan_mp_t -- ^ t
    -> Botan_mp_t -- ^ r
    -> Botan_mp_t -- ^ x
    -> Botan_mp_t -- ^ y
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_mod_mul"
  botan_mp_mod_mul
    :: Botan_mp_t -- ^ t
    -> Botan_mp_t -- ^ x
    -> Botan_mp_t -- ^ y
    -> Botan_mp_t -- ^ mod
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_equal"
  botan_mp_equal
    :: Botan_mp_t -- ^ x
    -> Botan_mp_t -- ^ y
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_cmp"
  botan_mp_cmp
    :: Ptr CInt   -- ^ result
    -> Botan_mp_t -- ^ x
    -> Botan_mp_t -- ^ y
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_swap"
  botan_mp_swap
    :: Botan_mp_t -- ^ x
    -> Botan_mp_t -- ^ y
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_powmod"
  botan_mp_powmod
    :: Botan_mp_t -- ^ t
    -> Botan_mp_t -- ^ e
    -> Botan_mp_t -- ^ t
    -> Botan_mp_t -- ^ modulus
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_lshift"
  botan_mp_lshift
    :: Botan_mp_t -- ^ t
    -> Botan_mp_t -- ^ n
    -> CSize      -- ^ shift
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_rshift"
  botan_mp_rshift
    :: Botan_mp_t -- ^ t
    -> Botan_mp_t -- ^ n
    -> CSize      -- ^ shift
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_mod_inverse"
  botan_mp_mod_inverse
    :: Botan_mp_t -- ^ t
    -> Botan_mp_t -- ^ n
    -> Botan_mp_t -- ^ modulus
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_rand_bits"
  botan_mp_rand_bits
    :: Botan_mp_t  -- ^ t
    -> Botan_rng_t -- ^ rng
    -> CSize       -- ^ bits
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_rand_range"
  botan_mp_rand_range
    :: Botan_mp_t  -- ^ t
    -> Botan_rng_t -- ^ rng
    -> Botan_mp_t  -- ^ d
    -> Botan_mp_t  -- ^ upper_bound
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_gcd"
  botan_mp_gcd
    :: Botan_mp_t -- ^ t
    -> Botan_mp_t -- ^ x
    -> Botan_mp_t -- ^ y
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_is_prime"
  botan_mp_is_prime
    :: Botan_mp_t  -- ^ n
    -> Botan_rng_t -- ^ rng
    -> CSize       -- ^ test_prob
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_get_bit"
  botan_mp_get_bit
    :: Botan_mp_t -- ^ n
    -> CSize      -- ^ bit
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_set_bit"
  botan_mp_set_bit
    :: Botan_mp_t -- ^ n
    -> CSize      -- ^ bit
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mp_clear_bit"
  botan_mp_clear_bit
    :: Botan_mp_t -- ^ n
    -> CSize      -- ^ bit
    -> IO CInt
