{-|
Module      : Botan.Low.View
Description : View functions
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.View where

import qualified Data.ByteString as ByteString

import Data.Void

import System.IO

import Botan.Bindings.View

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

-- NOTE: These are not working yet

type ViewBin = ViewCtx -> Ptr Word8 -> CSize -> IO BotanErrorCode
type ViewBinFunPtr = FunPtr (ViewCtx  -> Ptr Word8 -> CSize -> IO BotanErrorCode)

freeViewBinFunPtr :: ViewBinFunPtr -> IO ()
freeViewBinFunPtr = freeHaskellFunPtr

viewBinIO :: ViewBin -> (ViewBinFunPtr -> IO a) -> IO a
viewBinIO f = bracket (mallocViewBinFunPtr f) freeViewBinFunPtr

type ViewStr = ViewCtx -> Ptr CChar -> CSize -> IO BotanErrorCode
type ViewStrFunPtr = FunPtr (ViewCtx  -> Ptr CChar -> CSize -> IO BotanErrorCode)

freeViewStrFunPtr :: ViewStrFunPtr -> IO ()
freeViewStrFunPtr = freeHaskellFunPtr

viewStrIO :: ViewStr -> (ViewStrFunPtr -> IO a) -> IO a
viewStrIO f = bracket (mallocViewStrFunPtr f) freeViewStrFunPtr
