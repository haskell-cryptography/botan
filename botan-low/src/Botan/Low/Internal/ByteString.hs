module Botan.Low.Internal.ByteString (
    peekCString
  , withCString
  , withCBytes
  , withCBytesLen
  , allocBytes
  , allocBytesWith
  , asCString
  , asCStringLen
  , asBytes
  , unsafeAsBytes
  , asBytesLen
  , unsafeAsBytesLen
  , showBytes
  ) where

import           Control.DeepSeq
import           Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Char8 as Char8
import qualified Data.ByteString.Internal as ByteString
import qualified Data.ByteString.Unsafe as ByteString
import           Data.Word
import           Foreign.C.String hiding (peekCString, peekCStringLen,
                     withCString, withCStringLen)
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Ptr

{-
Small rant: CString is a bit of a mess

- CString doesn't work with const
- There is no CBytes
- Doesn't work with ConstPtr
- Different names for different types (peek vs pack, useAs vs with)
    - Data.ByteString
        - packCString :: CString -> IO ByteString
        - useAsCString :: ByteString -> (CString -> IO a) -> IO a
    - Text
    - Foreign.C.String
        - peekCString :: CString -> IO String
        - withCString :: String -> (CString -> IO a) -> IO a
-}

peekCString :: CString -> IO ByteString
peekCString = ByteString.packCString

withCString :: ByteString -> (CString -> IO a) -> IO a
withCString = ByteString.useAsCString

type CBytes = Ptr Word8

withCBytes :: ByteString -> (CBytes -> IO a) -> IO a
withCBytes bs act = ByteString.useAsCStringLen bs (\ (ptr,_) -> act (castPtr ptr))

type CBytesLen = (Ptr Word8, Int)

withCBytesLen :: ByteString -> (CBytesLen -> IO a) -> IO a
withCBytesLen bs act = ByteString.useAsCStringLen bs (\ (ptr,len) -> act (castPtr ptr, len))

-- A cheap knockoff of ByteArray.alloc / allocRet
-- We'll make this safer in the future
-- NOTE: THIS IS NOT LIKE Foriegn.Marshal.Alloc.allocaBytes, though it is close
--  Instead of returning the thing, we always return a bytestring.
--  Also, allocaBytes frees the memory after, but this is a malloc freed on garbage collect.
-- I basically ripped the relevant bits from ByteArray for ease of continuity
allocBytes :: Int -> (Ptr byte -> IO ()) -> IO ByteString
-- allocBytes sz f = snd <$> allocBytesWith sz f
-- NOTE: This is probably better than mallocByteString withForeignPtr
--  Use of mallocByteString without mkDeferredByteString / deferForeignPtrAvailability
--  is possibly a factor in our InsufficientBufferSpaceException issues
-- NOTE: Most of the comments are rendered moot now :) this needs cleanup
allocBytes sz f = ByteString.create sz (f . castPtr)

allocBytesWith :: Int -> (Ptr byte -> IO a) -> IO (a, ByteString)
allocBytesWith sz f
    | sz < 0    = allocBytesWith 0 f
    | otherwise = do
        fptr <- ByteString.mallocByteString sz
        a <- withForeignPtr fptr (f . castPtr)
        -- return (a, ByteString.PS fptr 0 sz)
        -- NOTE: The safety of this function is suspect, may require deepseq
        let bs = ByteString.PS fptr 0 sz
            in bs `deepseq` return (a,bs)

asCString :: ByteString -> (Ptr CChar -> IO a) -> IO a
asCString = ByteString.useAsCString

asCStringLen :: ByteString -> (Ptr CChar -> CSize -> IO a) -> IO a
asCStringLen bs f = ByteString.useAsCStringLen bs (\ (ptr,len) -> f ptr (fromIntegral len))

asBytes :: ByteString -> (Ptr byte -> IO a) -> IO a
asBytes bs f = asBytesLen bs (\ ptr _ -> f ptr)

unsafeAsBytes :: ByteString -> (Ptr byte -> IO a) -> IO a
unsafeAsBytes bs f = unsafeAsBytesLen bs (\ ptr _ -> f ptr)

-- WARNING: This should not be using `useAsCStringLen`
asBytesLen :: ByteString -> (Ptr byte -> CSize -> IO a) -> IO a
asBytesLen bs f = ByteString.useAsCStringLen bs (\ (ptr,len) -> f (castPtr ptr) (fromIntegral len))

unsafeAsBytesLen :: ByteString -> (Ptr byte -> CSize -> IO a) -> IO a
unsafeAsBytesLen bs f = ByteString.unsafeUseAsCStringLen bs (\ (ptr,len) -> f (castPtr ptr) (fromIntegral len))

showBytes :: (Show a) => a -> ByteString
showBytes = Char8.pack . show
