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
    -- * View binary
    BotanViewBinFn
  , BotanViewBinCallback
  , viewBin
    -- * View string
  , BotanViewStrFn
  , BotanViewStrCallback
  , viewStr
  ) where

import           Botan.Bindings.View
import           Control.Exception

viewBin :: BotanViewBinFn ctx -> (BotanViewBinCallback ctx -> IO a) -> IO a
viewBin f = bracket (mallocBotanViewBinCallback f) freeBotanViewBinCallback

viewStr :: BotanViewStrFn ctx -> (BotanViewStrCallback ctx -> IO a) -> IO a
viewStr f = bracket (mallocBotanViewStrCallback f) freeBotanViewStrCallback
