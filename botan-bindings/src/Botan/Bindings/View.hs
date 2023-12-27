{-|
Module      : Botan.Bindings.View
Description : View functions
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.View where

import Botan.Bindings.Prelude

-- View context

-- NOTE: If the type variable proves problematic, we will revert back to Ptr Void
type BotanViewContext a = Ptr a

-- View binary

type BotanViewBinFn ctx
    =   BotanViewContext ctx    -- ^ view_ctx some application context
    ->  ConstPtr Word8          -- ^ data the binary data
    ->  CSize                   -- ^ len the length of data in bytes
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
    =   BotanViewContext ctx    -- ^ view_ctx some application context
    ->  ConstPtr CChar          -- ^ str the null terminated string
    ->  CSize                   -- ^ len the length of string *including* the null terminator
    ->  CInt

type BotanViewStrCallback ctx = FunPtr (BotanViewStrFn ctx)

-- NOTE: "Wrapper stubs can't be used with CApiFFI."
foreign import ccall "wrapper"
    mallocBotanViewStrCallback
        :: BotanViewStrFn ctx
        -> IO (BotanViewStrCallback ctx)

freeBotanViewStrCallback :: BotanViewStrCallback ctx -> IO ()
freeBotanViewStrCallback = freeHaskellFunPtr
