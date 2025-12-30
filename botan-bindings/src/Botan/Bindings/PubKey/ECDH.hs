{-|
Module      : Botan.Bindings.ECDH
Description : Algorithm specific key operations: ECDH
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.ECDH (
    Safe.botan_pubkey_load_ecdh
  , Safe.botan_privkey_load_ecdh
  ) where

import qualified Botan.Bindings.Generated.Safe as Safe
