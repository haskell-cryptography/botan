module Botan.Low.Prelude (
    module Prelude
  , module Control.Monad
  , module Control.Exception
  , module Control.DeepSeq
  , module Data.ByteString
  , module Data.String
  , module Data.Text
  , module Data.Word
  , module System.IO
  , module Foreign.C.String
  , module Foreign.C.Types
  , module Foreign.ForeignPtr
  , module Foreign.Marshal.Alloc
  , module Foreign.Marshal.Array
  , module Foreign.Ptr
  , module Foreign.Storable
  , module GHC.Stack
  , ConstPtr(..)
  , peekCString
  , withCString
  , withCBytes
  , withCBytesLen
  , withConstCString
  , withMany
  -- Old
  , peekCStringText
  , allocBytes
  , allocBytesWith
  , asCString
  , asCStringLen
  , asBytes
  , unsafeAsBytes
  , asBytesLen
  , unsafeAsBytesLen
  -- Helpers
  , (//)
  , (/$)
  , showBytes
  ) where

-- Re-exported modules

import           Prelude

import           Control.DeepSeq
import           Control.Exception
import           Control.Monad

import           Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Char8 as Char8
import qualified Data.ByteString.Internal as ByteString
import qualified Data.ByteString.Unsafe as ByteString
import           Data.String (IsString (..))
import           Data.Text (Text)
import qualified Data.Text.Encoding as Text
import           Data.Word

import           System.IO

import           Foreign.C.String hiding (peekCString, peekCStringLen,
                     withCString, withCStringLen)
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Marshal.Alloc
import           Foreign.Marshal.Array
import           Foreign.Ptr
import           Foreign.Storable

import           GHC.Stack

import           Botan.Bindings.Prelude (ConstPtr (..))

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

{-
BETTER VERSIONS
-}

-- Types

-- Safe functions that make a temporary copy
-- Only care about ByteString, leave Text for higher-level botan

-- type CString = Ptr CChar

peekCString :: CString -> IO ByteString
peekCString = ByteString.packCString

-- Replaces 'asCString'
withCString :: ByteString -> (CString -> IO a) -> IO a
withCString = ByteString.useAsCString

-- type CStringLen = (Ptr CChar, Int)

type CBytes = Ptr Word8

-- peekCBytes :: CBytes -> Int -> IO ByteString
-- peekCBytes = undefined

withCBytes :: ByteString -> (CBytes -> IO a) -> IO a
withCBytes bs act = ByteString.useAsCStringLen bs (\ (ptr,_) -> act (castPtr ptr))

type CBytesLen = (Ptr Word8, Int)

-- Replaces 'asBytesLen'
withCBytesLen :: ByteString -> (CBytesLen -> IO a) -> IO a
withCBytesLen bs act = ByteString.useAsCStringLen bs (\ (ptr,len) -> act (castPtr ptr, len))

-- QUESTION: Is it worth it to have extra types for ConstPtr versions?

{-
type ConstCString       = ConstPtr CChar
type ConstCStringLen    = (ConstPtr CChar, Int)

type ConstCBytes    = ConstPtr Word8
type ConstCBytesLen = (ConstPtr Word8, Int)
-}

-- TODO: Replace
--      withCString str $ \ cstr -> ... (ConstPtr cstr) ...
--  with
--      withConstCString str $ \ cstr -> ... cstr ...
withConstCString :: ByteString -> (ConstPtr CChar -> IO a) -> IO a
withConstCString bs act = ByteString.useAsCString bs (act . ConstPtr)

{-
Misc
-}

withMany
    :: (forall a . object -> (cobject -> IO a) -> IO a)
    -> [object]
    -> ([cobject] -> IO b)
    -> IO b
withMany _withObject []         act = act []
withMany withObject  (obj:objs) act = withObject obj $ \ cobj -> withMany withObject objs (act . (cobj:))

{-
OLD
-}


-- Because:
--  https://github.com/haskell/text/issues/239
-- Is still an issue
peekCStringText :: CString -> IO Text
peekCStringText cs = do
    bs <- ByteString.unsafePackCString cs
    return $! Text.decodeUtf8 bs

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

--

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

-- Helpers used in a few name constructors

infixr 6 //
(//) :: (IsString a, Semigroup a) => a -> a -> a
a // b = a <> "/" <> b

infixr 0 /$
(/$) :: (IsString a, Semigroup a) => a -> a -> a
a /$ b = a <> "(" <> b <> ")"

showBytes :: (Show a) => a -> ByteString
showBytes = Char8.pack . show
