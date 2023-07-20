module Botan.View where

import Prelude

import Control.Exception
import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString

import Data.Word

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

-- /*
-- * Cipher modes
-- */
-- typedef void* botan_view_ctx;
type ViewCtx a = Ptr a

-- /**
-- * Viewer function for binary data
-- *
-- * @param view_ctx some application context
-- * @param data the binary data
-- * @param len the length of data in bytes
-- */
-- typedef int (*botan_view_bin_fn)(botan_view_ctx view_ctx, const uint8_t* data, size_t len);
foreign import ccall "wrapper" mallocViewBytesLenFunPtr :: (ViewBytesLen a) -> IO (ViewBytesLenFunPtr a)

freeViewBytesLenFunPtr :: ViewBytesLenFunPtr a -> IO ()
freeViewBytesLenFunPtr = freeHaskellFunPtr

type ViewBytesLen a = Ptr a -> Ptr Word8 -> CSize -> IO BotanErrorCode
type ViewBytesLenFunPtr a = FunPtr (ViewBytesLen a)

viewBytesLen :: ViewBytesLen viewCtx -> (ViewBytesLenFunPtr viewCtx -> IO a) -> IO a
viewBytesLen f = bracket (mallocViewBytesLenFunPtr f) freeViewBytesLenFunPtr

-- /**
-- * Viewer function for string data
-- *
-- * @param view_ctx some application context
-- * @param str the null terminated string
-- * @param len the length of string *including* the null terminator
-- */
-- typedef int (*botan_view_str_fn)(botan_view_ctx view_ctx, const char* str, size_t len);
foreign import ccall "wrapper" mallocViewCStringFunPtr :: (ViewCString a) -> IO (ViewCStringFunPtr a)

freeViewCStringFunPtr :: ViewCStringFunPtr a -> IO ()
freeViewCStringFunPtr = freeHaskellFunPtr

type ViewCString a = Ptr a -> Ptr CChar -> CSize -> IO BotanErrorCode
type ViewCStringFunPtr a = FunPtr (ViewCString a)

viewCString :: ViewCString viewCtx -> (ViewCStringFunPtr viewCtx -> IO a) -> IO a
viewCString f = bracket (mallocViewCStringFunPtr f) freeViewCStringFunPtr

    -- add :: Int -> Int
    -- add = x+y
    
    -- foreign import ccall "wrapper" createAddPtr :: (Int -> Int) -> IO (FunPtr (Int -> Int))
    
    -- main = do
    --     addPtr <- createAddPtr add
    --     -- you can use addPtr like any other FunPtr (e.g. give it to foreign code)
    --     ...
    --     -- you MUST free the FunPtr, otherwise it won't be collected
    --     freeHaskellFunPtr addPtr