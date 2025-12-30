{-|
Module      : Botan.Bindings.X25519
Description : Algorithm specific key operations: X25519
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.X25519 (
    botan_privkey_load_x25519
  , botan_pubkey_load_x25519
  , Safe.botan_privkey_x25519_get_privkey
  , Safe.botan_pubkey_x25519_get_pubkey
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.Word (Word8)
import           Foreign.C.Types (CInt)
import           Foreign.Ptr (Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_privkey_load_x25519 :: Ptr Types.Botan_privkey_t -> ConstPtr Word8 -> IO CInt
botan_privkey_load_x25519 = Safe.botan_privkey_load_x25519_wrapper

botan_pubkey_load_x25519 :: Ptr Types.Botan_pubkey_t -> ConstPtr Word8 -> IO CInt
botan_pubkey_load_x25519 = Safe.botan_pubkey_load_x25519_wrapper
