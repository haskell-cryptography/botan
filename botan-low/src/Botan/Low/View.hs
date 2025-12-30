{-|
Module      : Botan.Low.View
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

module Botan.Low.View (
    Botan_view_ctx (..)
    -- * View binary
  , Botan_view_bin_fn (..)
  , Botan_view_bin_fn_Aux (..)
  , viewBin
    -- * View string
  , Botan_view_str_fn (..)
  , Botan_view_str_fn_Aux (..)
  , viewStr
  ) where

import           Botan.Bindings.View as BB
import           Control.Exception
import           Foreign.Ptr (freeHaskellFunPtr)
import           HsBindgen.Runtime.FunPtr

viewBin :: Botan_view_bin_fn_Aux -> (Botan_view_bin_fn -> IO a) -> IO a
viewBin f =
    bracket
      (BB.Botan_view_bin_fn <$> toFunPtr f)
      (freeHaskellFunPtr . BB.un_Botan_view_bin_fn)

viewStr :: Botan_view_str_fn_Aux -> (Botan_view_str_fn -> IO a) -> IO a
viewStr f =
    bracket
      (BB.Botan_view_str_fn <$> toFunPtr f)
      (freeHaskellFunPtr . BB.un_Botan_view_str_fn)
