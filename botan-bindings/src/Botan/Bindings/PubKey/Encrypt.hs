{-|
Module      : Botan.Bindings.Encrypt
Description : Public Key Encryption
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.Encrypt (
    Types.Botan_pk_op_encrypt_t (..)
  , Types.Botan_pk_op_encrypt_struct
  , Safe.botan_pk_op_encrypt_destroy
  , botan_pk_op_encrypt_destroy_ptr
  , Safe.botan_pk_op_encrypt_create
  , Safe.botan_pk_op_encrypt_output_length
  , botan_pk_op_encrypt
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.Word (Word8)
import           Foreign.C.Types (CInt, CSize)
import           Foreign.Ptr (FunPtr, Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_pk_op_encrypt_destroy_ptr :: FunPtr (Types.Botan_pk_op_encrypt_t -> IO CInt)
botan_pk_op_encrypt_destroy_ptr = FunPtr.botan_pk_op_encrypt_destroy

botan_pk_op_encrypt :: Types.Botan_pk_op_encrypt_t -> Types.Botan_rng_t -> Ptr Word8 -> Ptr CSize -> ConstPtr Word8 -> CSize -> IO CInt
botan_pk_op_encrypt = Safe.botan_pk_op_encrypt_wrapper
