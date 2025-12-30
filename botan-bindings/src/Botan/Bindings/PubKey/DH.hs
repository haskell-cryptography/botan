{-|
Module      : Botan.Bindings.DSA
Description : Algorithm specific key operations: Diffie Hellman
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.DH (
    Safe.botan_privkey_load_dh
  , Safe.botan_pubkey_load_dh
  ) where

import qualified Botan.Bindings.Generated.Safe as Safe
