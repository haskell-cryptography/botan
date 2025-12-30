{-|
Module      : Botan.Bindings.KeyWrap
Description : Bcrypt password hashing
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.KeyWrap (
    botan_nist_kw_enc
  , botan_nist_kw_dec
  ) where

import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.Word (Word8)
import           Foreign.C.Types (CChar, CInt, CSize)
import           Foreign.Ptr (Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_nist_kw_enc :: ConstPtr CChar -> CInt -> ConstPtr Word8 -> CSize -> ConstPtr Word8 -> CSize -> Ptr Word8 -> Ptr CSize -> IO CInt
botan_nist_kw_enc = Safe.botan_nist_kw_enc_wrapper

botan_nist_kw_dec :: ConstPtr CChar -> CInt -> ConstPtr Word8 -> CSize -> ConstPtr Word8 -> CSize -> Ptr Word8 -> Ptr CSize -> IO CInt
botan_nist_kw_dec = Safe.botan_nist_kw_dec_wrapper
