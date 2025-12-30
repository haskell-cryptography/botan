{-|
Module      : Botan.Bindings.KeyEncapsulation
Description : Key Encapsulation
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.KeyEncapsulation (
    Types.Botan_pk_op_kem_encrypt_t (..)
  , Types.Botan_pk_op_kem_encrypt_struct
  , Safe.botan_pk_op_kem_encrypt_destroy
  , botan_pk_op_kem_encrypt_destroy_ptr
  , Safe.botan_pk_op_kem_encrypt_create
  , Safe.botan_pk_op_kem_encrypt_shared_key_length
  , Safe.botan_pk_op_kem_encrypt_encapsulated_key_length
  , botan_pk_op_kem_encrypt_create_shared_key
  , Types.Botan_pk_op_kem_decrypt_t (..)
  , Types.Botan_pk_op_kem_decrypt_struct
  , Safe.botan_pk_op_kem_decrypt_destroy
  , botan_pk_op_kem_decrypt_destroy_ptr
  , Safe.botan_pk_op_kem_decrypt_create
  , Safe.botan_pk_op_kem_decrypt_shared_key_length
  , botan_pk_op_kem_decrypt_shared_key
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.Word (Word8)
import           Foreign.C.Types (CInt, CSize)
import           Foreign.Ptr (FunPtr, Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_pk_op_kem_encrypt_destroy_ptr :: FunPtr (Types.Botan_pk_op_kem_encrypt_t -> IO CInt)
botan_pk_op_kem_encrypt_destroy_ptr = FunPtr.botan_pk_op_kem_encrypt_destroy

botan_pk_op_kem_decrypt_destroy_ptr :: FunPtr (Types.Botan_pk_op_kem_decrypt_t -> IO CInt)
botan_pk_op_kem_decrypt_destroy_ptr = FunPtr.botan_pk_op_kem_decrypt_destroy

botan_pk_op_kem_encrypt_create_shared_key :: Types.Botan_pk_op_kem_encrypt_t -> Types.Botan_rng_t -> ConstPtr Word8 -> CSize -> CSize -> Ptr Word8 -> Ptr CSize -> Ptr Word8 -> Ptr CSize -> IO CInt
botan_pk_op_kem_encrypt_create_shared_key = Safe.botan_pk_op_kem_encrypt_create_shared_key_wrapper

botan_pk_op_kem_decrypt_shared_key :: Types.Botan_pk_op_kem_decrypt_t -> ConstPtr Word8 -> CSize -> ConstPtr Word8 -> CSize -> CSize -> Ptr Word8 -> Ptr CSize -> IO CInt
botan_pk_op_kem_decrypt_shared_key = Safe.botan_pk_op_kem_decrypt_shared_key_wrapper
