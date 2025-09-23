{-|
Module      : Botan.Bindings.View
Description : View functions
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.View (
    BotanViewContext
  , BotanViewBinFn
  , BotanViewBinCallback
  , mallocBotanViewBinCallback
  , freeBotanViewBinCallback
  , BotanViewStrFn
  , BotanViewStrCallback
  , mallocBotanViewStrCallback
  , freeBotanViewStrCallback
  ) where

import           Botan.Bindings.Prelude

-- View context

-- NOTE: If the type variable proves problematic, we will revert back to Ptr Void
type BotanViewContext a = Ptr a

-- View binary

type BotanViewBinFn ctx
    =   BotanViewContext ctx    -- ^ __view_ctx__: some application context
    ->  ConstPtr Word8          -- ^ __data__: the binary data
    ->  CSize                   -- ^ __len__: the length of data in bytes
    ->  CInt

type BotanViewBinCallback ctx = FunPtr (BotanViewBinFn ctx)

-- NOTE: "Wrapper stubs can't be used with CApiFFI."
foreign import ccall "wrapper"
    mallocBotanViewBinCallback
        :: BotanViewBinFn ctx
        -> IO (BotanViewBinCallback ctx)

freeBotanViewBinCallback :: BotanViewBinCallback ctx -> IO ()
freeBotanViewBinCallback = freeHaskellFunPtr

-- View string

type BotanViewStrFn ctx
    =   BotanViewContext ctx    -- ^ __view_ctx__: some application context
    ->  ConstPtr CChar          -- ^ __str__: the null terminated string
    ->  CSize                   -- ^ __len__: the length of string *including* the null terminator
    ->  CInt

type BotanViewStrCallback ctx = FunPtr (BotanViewStrFn ctx)

-- NOTE: "Wrapper stubs can't be used with CApiFFI."
foreign import ccall "wrapper"
    mallocBotanViewStrCallback
        :: BotanViewStrFn ctx
        -> IO (BotanViewStrCallback ctx)

freeBotanViewStrCallback :: BotanViewStrCallback ctx -> IO ()
freeBotanViewStrCallback = freeHaskellFunPtr
