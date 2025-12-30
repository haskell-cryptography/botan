{-|
Module      : Botan.Bindings.Sign
Description : Signature Generation
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.Sign (
    Types.Botan_pk_op_sign_t (..)
  , Types.Botan_pk_op_sign_struct
  , Safe.botan_pk_op_sign_destroy
  , botan_pk_op_sign_destroy_ptr
  , Safe.botan_pk_op_sign_create
  , Safe.botan_pk_op_sign_output_length
  , botan_pk_op_sign_update
  , Safe.botan_pk_op_sign_finish
  , Types.bOTAN_PUBKEY_DER_FORMAT_SIGNATURE
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.Word (Word8)
import           Foreign.C.Types (CInt, CSize)
import           Foreign.Ptr (FunPtr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_pk_op_sign_destroy_ptr :: FunPtr (Types.Botan_pk_op_sign_t -> IO CInt)
botan_pk_op_sign_destroy_ptr = FunPtr.botan_pk_op_sign_destroy

botan_pk_op_sign_update :: Types.Botan_pk_op_sign_t -> ConstPtr Word8 -> CSize -> IO CInt
botan_pk_op_sign_update = Safe.botan_pk_op_sign_update_wrapper
