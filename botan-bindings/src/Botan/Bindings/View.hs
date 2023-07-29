module Botan.Bindings.View where

import Data.Void

import Botan.Bindings.Error
import Botan.Bindings.Prelude

-- typedef void* botan_view_ctx;
type ViewCtx = Ptr Void

-- /**
-- * Viewer function for binary data
-- *
-- * @param view_ctx some application context
-- * @param data the binary data
-- * @param len the length of data in bytes
-- */
-- typedef int (*botan_view_bin_fn)(botan_view_ctx view_ctx, const uint8_t* data, size_t len);
foreign import ccall "wrapper" mallocViewBinFunPtr
    :: (Ptr a -> Ptr Word8 -> CSize -> IO BotanErrorCode)
    -> IO (FunPtr (Ptr a -> Ptr Word8 -> CSize -> IO BotanErrorCode))

-- /**
-- * Viewer function for string data
-- *
-- * @param view_ctx some application context
-- * @param str the null terminated string
-- * @param len the length of string *including* the null terminator
-- */
-- typedef int (*botan_view_str_fn)(botan_view_ctx view_ctx, const char* str, size_t len);
foreign import ccall "wrapper" mallocViewStrFunPtr
    :: (Ptr a -> Ptr CChar -> CSize -> IO BotanErrorCode)
    -> IO (FunPtr (Ptr a -> Ptr CChar -> CSize -> IO BotanErrorCode))
