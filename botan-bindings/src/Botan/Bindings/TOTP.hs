{-|
Module      : Botan.Bindings.TOTP
Description : Time-based one time passwords
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.TOTP (
    Types.Botan_totp_t (..)
  , Types.Botan_totp_struct
  , Safe.botan_totp_destroy
  , botan_totp_destroy_ptr
  , botan_totp_init
  , Safe.botan_totp_generate
  , Safe.botan_totp_check
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.Word (Word8)
import           Foreign.C.Types (CChar, CInt, CSize)
import           Foreign.Ptr (FunPtr, Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_totp_destroy_ptr :: FunPtr (Types.Botan_totp_t -> IO CInt)
botan_totp_destroy_ptr = FunPtr.botan_totp_destroy

botan_totp_init :: Ptr Types.Botan_totp_t -> ConstPtr Word8 -> CSize -> ConstPtr CChar -> CSize -> CSize -> IO CInt
botan_totp_init = Safe.botan_totp_init_wrapper
