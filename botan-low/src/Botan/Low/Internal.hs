{-|
Module      : Botan.Low.Internal
Description : Internal utilities
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.Internal (
    funPtrIgnoreRetCode
  ) where

import           Data.Coerce (Coercible, coerce)
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Ptr
import           Prelude

funPtrIgnoreRetCode :: forall a b. Coercible a (Ptr b) => FunPtr (a -> IO CInt) -> FinalizerPtr b
funPtrIgnoreRetCode = coerce
  where
    _unused = coerce @a @(Ptr b)
