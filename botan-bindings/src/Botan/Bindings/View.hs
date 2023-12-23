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

-- NOTE: If the type variable proves problematic, we will revert back to Ptr Void
type BotanViewContext a = Ptr a

type BotanViewBinCallback ctx
    =   BotanViewContext ctx    -- ^ view_ctx some application context
    ->  ConstPtr Word8          -- ^ data the binary data
    ->  CSize                   -- ^ len the length of data in bytes
    ->  CInt

-- NOTE: "Wrapper stubs can't be used with CApiFFI."
foreign import ccall "wrapper"
    mallocBotanViewBinCallbackFunPtr
        :: BotanViewBinCallback ctx
        -> IO (FunPtr (BotanViewBinCallback ctx))

type BotanViewStrCallback ctx
    =   BotanViewContext ctx    -- ^ view_ctx some application context
    ->  ConstPtr CChar          -- ^ str the null terminated string
    ->  CSize                   -- ^ len the length of string *including* the null terminator
    ->  CInt

-- NOTE: "Wrapper stubs can't be used with CApiFFI."
foreign import ccall "wrapper"
    mallocBotanViewStrCallbackFunPtr
        :: BotanViewStrCallback ctx
        -> IO (FunPtr (BotanViewStrCallback ctx))
