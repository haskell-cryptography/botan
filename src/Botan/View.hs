module Botan.View where

import Prelude

import Control.Exception
import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString

import Data.Word
import Data.Void

import System.IO

import Foreign.C.String
import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable

import Botan.Error
import Botan.Make
import Botan.Prelude

-- NOTE: This is *symmetric* ciphers
--  For the 'raw' interface to ECB mode block ciphers, see BlockCipher.hs

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

type ViewBin = ViewCtx -> Ptr Word8 -> CSize -> IO BotanErrorCode
type ViewBinFunPtr = FunPtr (ViewCtx  -> Ptr Word8 -> CSize -> IO BotanErrorCode)

freeViewBinFunPtr :: ViewBinFunPtr -> IO ()
freeViewBinFunPtr = freeHaskellFunPtr

viewBin :: ViewBin -> (ViewBinFunPtr -> IO a) -> IO a
viewBin f = bracket (mallocViewBinFunPtr f) freeViewBinFunPtr

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

type ViewStr = ViewCtx -> Ptr CChar -> CSize -> IO BotanErrorCode
type ViewStrFunPtr = FunPtr (ViewCtx  -> Ptr CChar -> CSize -> IO BotanErrorCode)

freeViewStrFunPtr :: ViewStrFunPtr -> IO ()
freeViewStrFunPtr = freeHaskellFunPtr

viewStr :: ViewStr -> (ViewStrFunPtr -> IO a) -> IO a
viewStr f = bracket (mallocViewStrFunPtr f) freeViewStrFunPtr
