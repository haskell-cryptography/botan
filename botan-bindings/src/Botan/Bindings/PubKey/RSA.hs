{-|
Module      : Botan.Bindings.RSA
Description : Algorithm specific key operations: RSA
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.RSA (
    Safe.botan_privkey_load_rsa
  , botan_privkey_load_rsa_pkcs1
  , Safe.botan_privkey_rsa_get_privkey
  , Safe.botan_pubkey_load_rsa
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.Word (Word8)
import           Foreign.C.Types (CInt, CSize)
import           Foreign.Ptr (Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_privkey_load_rsa_pkcs1 :: Ptr Types.Botan_privkey_t -> ConstPtr Word8 -> CSize -> IO CInt
botan_privkey_load_rsa_pkcs1 = Safe.botan_privkey_load_rsa_pkcs1_wrapper
