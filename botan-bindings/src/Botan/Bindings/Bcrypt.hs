{-|
Module      : Botan.Bindings.Bcrypt
Description : Bcrypt password hashing
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.Bcrypt (
    Safe.botan_bcrypt_generate
  , Safe.botan_bcrypt_is_valid
  ) where

import qualified Botan.Bindings.Generated.Safe as Safe
