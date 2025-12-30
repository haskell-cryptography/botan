{-|
Module      : Botan.Bindings.KeyAgreement
Description : Key Agreement
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.KeyAgreement (
    Types.Botan_pk_op_ka_t (..)
  , Types.Botan_pk_op_ka_struct
  , Safe.botan_pk_op_key_agreement_destroy
  , botan_pk_op_key_agreement_destroy_ptr
  , Safe.botan_pk_op_key_agreement_create
  , Safe.botan_pk_op_key_agreement_export_public
  , Safe.botan_pk_op_key_agreement_view_public
  , Safe.botan_pk_op_key_agreement_size
  , botan_pk_op_key_agreement
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.Word (Word8)
import           Foreign.C.Types (CInt, CSize)
import           Foreign.Ptr (FunPtr, Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_pk_op_key_agreement_destroy_ptr :: FunPtr (Types.Botan_pk_op_ka_t -> IO CInt)
botan_pk_op_key_agreement_destroy_ptr = FunPtr.botan_pk_op_key_agreement_destroy

botan_pk_op_key_agreement :: Types.Botan_pk_op_ka_t -> Ptr Word8 -> Ptr CSize -> ConstPtr Word8 -> CSize -> ConstPtr Word8 -> CSize -> IO CInt
botan_pk_op_key_agreement = Safe.botan_pk_op_key_agreement_wrapper
