module Botan.Low.Prelude
( module Prelude
, module Control.Monad
, module Control.Exception
, module Control.DeepSeq
, module Data.ByteString
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
, peekCStringText
, allocBytes
, allocBytesWith
, asCString
, asCStringLen
, asBytes
, unsafeAsBytes
, asBytesLen
, unsafeAsBytesLen
, paddingLength
, paddedLength
, blockCount
, paddingInfo
, padBytes
, asPaddedBytes
, asPaddedBytesLen
, baseLength
, showBytes
) where

-- Re-exported modules

import Prelude

import Control.Monad
import Control.Exception
import Control.DeepSeq

import Data.ByteString (ByteString)
import Data.Text (Text)

import Data.Word

import System.IO

import Foreign.C.String
import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Marshal.Array
import Foreign.Ptr
import Foreign.Storable

import GHC.Stack

-- Other Imports

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Internal as ByteString
import qualified Data.ByteString.Unsafe as ByteString

import qualified Data.ByteString.Char8 as Char8

import qualified Data.Text.Encoding as Text

import Botan.Bindings.Prelude (ConstPtr(..))

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

-- ByteString.create' doesn't exist
-- TODO: Replace allocBytesWith with this
createByteString' :: Int -> (Ptr byte -> IO a) -> IO (ByteString,a)
createByteString' sz action = ByteString.createUptoN' sz $ \ ptr -> do
    a <- action (castPtr ptr)
    return (sz,a)
{-# INLINE createByteString' #-}

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

-- NOTE: Block padding
paddingLength, paddedLength, blockCount  :: Int -> Int -> Int
paddingLength   len bsz =  let (pl,_,_) = paddingInfo len bsz in pl
paddedLength    len bsz =  let (_,pl,_) = paddingInfo len bsz in pl
blockCount      len bsz =  let (_,_,bc) = paddingInfo len bsz in bc

-- NOTE: Block padding
paddingInfo :: Int -> Int -> (Int, Int, Int)
paddingInfo length blockSize = info where
    (d,m) = divMod length blockSize
    info@(padding,_,_) = if m == 0
        then (0,length,d)
        else (blockSize - m, length + padding, d + 1)

-- NOTE: Block padding
padBytes :: ByteString -> Int -> ByteString
padBytes bytes blockSize = paddedBytes where
    (paddingLength,paddedLength,_) = paddingInfo (ByteString.length bytes) blockSize
    paddedBytes = if paddingLength == 0
        then bytes
        else bytes <> ByteString.replicate paddingLength 0

-- Kinda jank, don't use any more - its better to make padding explicit
asPaddedBytes :: ByteString -> Int -> (Ptr byte -> IO a) -> IO a
asPaddedBytes bytes blockSize = asBytes (padBytes bytes blockSize)

-- Kinda jank, don't use any more - its better to make padding explicit
asPaddedBytesLen :: ByteString -> Int -> (Ptr byte -> CSize -> IO a) -> IO a
asPaddedBytesLen bytes blockSize = asBytesLen (padBytes bytes blockSize)

-- Formula for length of an n-digit base-b string encoded into base k is:
--  ceiling $ n * log b / log k
-- hlint suggests the equivalent:
--  ceiling $ n * logBase k b
-- TODO: Important enough to expose in expanded Botan.Utility
baseLength :: Int -> Int -> Int -> Int
baseLength n b k = ceiling $ fromIntegral n * logBase (fromIntegral k) (fromIntegral b)

showBytes :: (Show a) => a -> ByteString
showBytes = Char8.pack . show
