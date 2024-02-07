{-|
Module      : Botan.Low.View
Description : View functions
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
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

import Data.Void

import System.IO

import Botan.Bindings.View

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

viewBin :: BotanViewBinFn ctx -> (BotanViewBinCallback ctx -> IO a) -> IO a
viewBin f = bracket (mallocBotanViewBinCallback f) freeBotanViewBinCallback

viewStr :: BotanViewStrFn ctx -> (BotanViewStrCallback ctx -> IO a) -> IO a
viewStr f = bracket (mallocBotanViewStrCallback f) freeBotanViewStrCallback
