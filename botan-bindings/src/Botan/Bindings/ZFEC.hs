{-|
Module      : Botan.Bindings.ZFEC
Description : ZFEC Forward Error Correction
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.ZFEC (
    Safe.botan_zfec_encode
  , Safe.botan_zfec_decode
  ) where

import qualified Botan.Bindings.Generated.Safe as Safe
