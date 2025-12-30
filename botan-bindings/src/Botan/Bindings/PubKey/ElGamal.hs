{-|
Module      : Botan.Bindings.PubKey.ElGamal
Description : Algorithm specific key operations: ElGamal
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.ElGamal (
    Safe.botan_privkey_create_elgamal
  , Safe.botan_pubkey_load_elgamal
  , Safe.botan_privkey_load_elgamal
  ) where

import qualified Botan.Bindings.Generated.Safe as Safe
