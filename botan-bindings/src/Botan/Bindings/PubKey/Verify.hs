{-|
Module      : Botan.Bindings.Verify
Description : Signature Verification
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.Verify (
    Types.Botan_pk_op_verify_t (..)
  , Types.Botan_pk_op_verify_struct
  , Safe.botan_pk_op_verify_destroy
  , botan_pk_op_verify_destroy_ptr
  , Safe.botan_pk_op_verify_create
  , botan_pk_op_verify_update
  , botan_pk_op_verify_finish
  , Types.bOTAN_PUBKEY_DER_FORMAT_SIGNATURE
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.Word (Word8)
import           Foreign.C.Types (CInt, CSize)
import           Foreign.Ptr (FunPtr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_pk_op_verify_destroy_ptr :: FunPtr (Types.Botan_pk_op_verify_t -> IO CInt)
botan_pk_op_verify_destroy_ptr = FunPtr.botan_pk_op_verify_destroy

botan_pk_op_verify_update :: Types.Botan_pk_op_verify_t -> ConstPtr Word8 -> CSize -> IO CInt
botan_pk_op_verify_update = Safe.botan_pk_op_verify_update_wrapper

botan_pk_op_verify_finish :: Types.Botan_pk_op_verify_t -> ConstPtr Word8 -> CSize -> IO CInt
botan_pk_op_verify_finish = Safe.botan_pk_op_verify_finish_wrapper
