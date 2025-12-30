{-|
Module      : Botan.Bindings.ECDSA
Description : Algorithm specific key operations: ECDSA
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.ECDSA (
    Safe.botan_privkey_load_ecdsa
  , Safe.botan_pubkey_load_ecdsa
  ) where

import qualified Botan.Bindings.Generated.Safe as Safe
