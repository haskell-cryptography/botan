{-|
Module      : Botan.Bindings.FPE
Description : Format Preserving Encryption
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.FPE (
    Types.Botan_fpe_t (..)
  , Types.Botan_fpe_struct
  , Safe.botan_fpe_destroy
  , botan_fpe_destroy_ptr
  , Types.bOTAN_FPE_FLAG_FE1_COMPAT_MODE
  , botan_fpe_fe1_init
  , botan_fpe_encrypt
  , botan_fpe_decrypt
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.Word (Word32, Word8)
import           Foreign.C.Types (CInt, CSize)
import           Foreign.Ptr (FunPtr, Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_fpe_destroy_ptr :: FunPtr (Types.Botan_fpe_t -> IO CInt)
botan_fpe_destroy_ptr = FunPtr.botan_fpe_destroy

botan_fpe_fe1_init :: Ptr Types.Botan_fpe_t -> Types.Botan_mp_t -> ConstPtr Word8 -> CSize -> CSize -> Word32 -> IO CInt
botan_fpe_fe1_init = Safe.botan_fpe_fe1_init_wrapper

botan_fpe_encrypt :: Types.Botan_fpe_t -> Types.Botan_mp_t -> ConstPtr Word8 -> CSize -> IO CInt
botan_fpe_encrypt = Safe.botan_fpe_encrypt_wrapper

botan_fpe_decrypt :: Types.Botan_fpe_t -> Types.Botan_mp_t -> ConstPtr Word8 -> CSize -> IO CInt
botan_fpe_decrypt = Safe.botan_fpe_decrypt_wrapper
