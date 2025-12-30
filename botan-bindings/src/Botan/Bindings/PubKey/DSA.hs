{-|
Module      : Botan.Bindings.DSA
Description : Algorithm specific key operations: DSA
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.DSA (
    Safe.botan_privkey_create_dsa
  , Safe.botan_privkey_load_dsa
  , Safe.botan_pubkey_load_dsa
  ) where

import qualified Botan.Bindings.Generated.Safe as Safe
