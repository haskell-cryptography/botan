{-|
Module      : Botan.Bindings.PubKey.SM2
Description : Algorithm specific key operations: SM2
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.SM2 (
    Safe.botan_pubkey_load_sm2
  , Safe.botan_privkey_load_sm2
  , Safe.botan_pubkey_sm2_compute_za
  ) where

import qualified Botan.Bindings.Generated.Safe as Safe
