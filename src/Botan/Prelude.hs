module Botan.Prelude where

import Prelude

import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString.Internal as ByteString
import qualified Data.ByteString.Unsafe as ByteString

import Data.Text (Text)
import qualified Data.Text.Encoding as Text

import System.IO

import Foreign.C.String
import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Ptr

-- Because:
--  https://github.com/haskell/text/issues/239
-- Is still an issue
peekCStringText :: CString -> IO Text
peekCStringText cs = do
    bs <- ByteString.unsafePackCString cs
    return $! Text.decodeUtf8 bs

-- A cheap knockoff of ByteArray.withByteArray
-- We'll make this safer in the future
withBytes :: ByteString -> (Ptr p -> IO a) -> IO a 
withBytes bs f = ByteString.unsafeUseAsCString bs (f . castPtr)

-- A cheap knockoff of ByteArray.alloc / allocRet
-- We'll make this safer in the future
-- NOTE: THIS IS NOT LIKE Foriegn.Marshal.Alloc.allocaBytes, though it is close
--  Instead of returning the thing, we always return a bytestring.
--  Also, allocaBytes frees the memory after, but this is a malloc freed on garbage collect.
-- I basically ripped the relevant bits from ByteArray for ease of continuity
allocBytes :: Int -> (Ptr p -> IO ()) -> IO ByteString
allocBytes sz f
    | sz < 0    = allocBytes 0 f
    | otherwise = do
        fptr <- ByteString.mallocByteString sz
        _ <- withForeignPtr fptr (f . castPtr)
        return $ ByteString.PS fptr 0 sz
