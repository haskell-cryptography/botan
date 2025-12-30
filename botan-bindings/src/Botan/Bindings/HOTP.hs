{-|
Module      : Botan.Bindings.HOTP
Description : Hash-based one-time passwords
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}


module Botan.Bindings.HOTP (
    Types.Botan_hotp_t (..)
  , Types.Botan_hotp_struct
  , Safe.botan_hotp_destroy
  , botan_hotp_destroy_ptr
  , botan_hotp_init
  , Safe.botan_hotp_generate
  , Safe.botan_hotp_check
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.Word (Word8)
import           Foreign.C.Types (CChar, CInt, CSize)
import           Foreign.Ptr (FunPtr, Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_hotp_destroy_ptr :: FunPtr (Types.Botan_hotp_t -> IO CInt)
botan_hotp_destroy_ptr = FunPtr.botan_hotp_destroy

botan_hotp_init :: Ptr Types.Botan_hotp_t -> ConstPtr Word8 -> CSize -> ConstPtr CChar -> CSize -> IO CInt
botan_hotp_init = Safe.botan_hotp_init_wrapper
