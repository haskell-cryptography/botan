{-|
Module      : Botan.Bindings.View
Description : View functions
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

This module is based on the [View
Functions](https://botan.randombit.net/handbook/api_ref/ffi.html#view-functions)
section of the C Botan FFI documentation.
-}

module Botan.Bindings.View (
    Types.Botan_view_ctx (..)
    -- * View binary
  , Types.Botan_view_bin_fn (..)
  , Types.Botan_view_bin_fn_Aux (..)
    -- * View string
  , Types.Botan_view_str_fn (..)
  , Types.Botan_view_str_fn_Aux (..)
  ) where

import qualified Botan.Bindings.Generated as Types
