{-|
Module      : Botan.Low.View
Description : View functions
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.View
(

  BotanViewBinFn(..)
, BotanViewBinCallback(..)
, viewBin
, BotanViewStrFn(..)
, BotanViewStrCallback(..)
, viewStr

)where

import qualified Data.ByteString as ByteString

import           Data.Void

import           System.IO

import           Botan.Bindings.View

import           Botan.Low.Error
import           Botan.Low.Make
import           Botan.Low.Prelude

viewBin :: BotanViewBinFn ctx -> (BotanViewBinCallback ctx -> IO a) -> IO a
viewBin f = bracket (mallocBotanViewBinCallback f) freeBotanViewBinCallback

viewStr :: BotanViewStrFn ctx -> (BotanViewStrCallback ctx -> IO a) -> IO a
viewStr f = bracket (mallocBotanViewStrCallback f) freeBotanViewStrCallback
