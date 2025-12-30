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

module Botan.Bindings.MPI (
    Types.Botan_mp_t (..)
  , Types.Botan_mp_struct
  , Safe.botan_mp_destroy
  , botan_mp_destroy_ptr
  , Safe.botan_mp_init
  , Safe.botan_mp_to_hex
  , Safe.botan_mp_to_str
  , Safe.botan_mp_clear
  , Safe.botan_mp_set_from_int
  , Safe.botan_mp_set_from_mp
  , Safe.botan_mp_set_from_str
  , Safe.botan_mp_set_from_radix_str
  , Safe.botan_mp_num_bits
  , Safe.botan_mp_num_bytes
  , Safe.botan_mp_to_bin
  , botan_mp_from_bin
  , Safe.botan_mp_to_uint32
  , Safe.botan_mp_is_positive
  , Safe.botan_mp_is_negative
  , Safe.botan_mp_flip_sign
  , Safe.botan_mp_is_zero
  , Safe.botan_mp_add_u32
  , Safe.botan_mp_sub_u32
  , Safe.botan_mp_add
  , Safe.botan_mp_sub
  , Safe.botan_mp_mul
  , Safe.botan_mp_div
  , Safe.botan_mp_mod_mul
  , Safe.botan_mp_equal
  , Safe.botan_mp_cmp
  , Safe.botan_mp_swap
  , Safe.botan_mp_powmod
  , Safe.botan_mp_lshift
  , Safe.botan_mp_rshift
  , Safe.botan_mp_mod_inverse
  , Safe.botan_mp_rand_bits
  , Safe.botan_mp_rand_range
  , Safe.botan_mp_gcd
  , Safe.botan_mp_is_prime
  , Safe.botan_mp_get_bit
  , Safe.botan_mp_set_bit
  , Safe.botan_mp_clear_bit
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.Word (Word8)
import           Foreign.C.Types (CInt, CSize)
import           Foreign.Ptr (FunPtr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_mp_destroy_ptr :: FunPtr (Types.Botan_mp_t -> IO CInt)
botan_mp_destroy_ptr = FunPtr.botan_mp_destroy

botan_mp_from_bin :: Types.Botan_mp_t -> ConstPtr Word8 -> CSize -> IO CInt
botan_mp_from_bin = Safe.botan_mp_from_bin_wrapper
