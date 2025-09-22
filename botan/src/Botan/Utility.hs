module Botan.Utility
( constantTimeCompare
, scrubMemory
, scrub
, scrubArray
, scrubForeignPtr
, scrubForeignPtrArray
, scrubByteString
, HexCase(..)
, hexEncode
, hexDecode
, base64Encode
, base64Decode
) where

import           System.IO.Unsafe

import           Data.ByteString.Internal as ByteString
import           Data.ByteString.Unsafe as ByteString

import qualified Botan.Bindings.Utility as Bindings
import           Botan.Low.Utility (HexEncodingFlags (..), pattern HexLowerCase,
                     pattern HexUpperCase)
import qualified Botan.Low.Utility as Low

import           Foreign.ForeignPtr
import           Foreign.Ptr
import           Foreign.Storable

import           Botan.Error
import           Botan.Prelude

-- | Returns 0 if x[0..len] == y[0..len], -1 otherwise.
constantTimeCompare :: ByteString -> ByteString -> Int -> Bool
constantTimeCompare = unsafePerformIO3 Low.constantTimeCompare

-- TODO: randomizeMemory and variants?

scrubMemory :: (MonadIO m) => Ptr a -> Int -> m ()
scrubMemory ptr sz = liftIO $ Low.scrubMem ptr sz

scrub :: (MonadIO m, Storable a) => Ptr a -> m ()
scrub ptr = scrubMemory ptr (sizeOf ptr)

scrubArray :: (MonadIO m, Storable a) => Int -> Ptr a -> m ()
scrubArray n ptr  = scrubMemory ptr (n * sizeOf ptr)

scrubForeignPtr :: (MonadIO m, Storable a) => ForeignPtr a -> m ()
scrubForeignPtr fptr = liftIO $ withForeignPtr fptr scrub

scrubForeignPtrArray :: (MonadIO m, Storable a) => Int -> ForeignPtr a -> m ()
scrubForeignPtrArray n fptr = liftIO $ withForeignPtr fptr (scrubArray n)

-- TODO: Rename scrubByteStringImmediately?
scrubByteString :: (MonadIO m) => ByteString -> m ()
scrubByteString bs = liftIO $ ByteString.unsafeUseAsCStringLen bs $ uncurry $ flip scrubArray

-- TODO: Attach a scrubbing finalizer
-- This will require freeing the finalizer funptr from inside itself.
-- SEE: https://mail.haskell.org/pipermail/glasgow-haskell-users/2006-March/009910.html
-- scrubByteStringFinalizer :: (MonadIO m) => ByteString -> m ()
-- scrubByteStringFinalizer bs = liftIO $ addForeignPtrFinalizer _ fptr where
--     (fptr,_,_) = ByteString.toForeignPtr bs

data HexCase = Upper | Lower

hexEncodingFlags :: HexCase -> HexEncodingFlags
hexEncodingFlags Upper = Low.HexUpperCase
hexEncodingFlags Lower = Low.HexLowerCase

-- TODO: Discuss ergonomics of flipping argument order
hexEncode :: ByteString -> HexCase -> Text
hexEncode bs c = unsafePerformIO $ Low.hexEncode bs (hexEncodingFlags c)
{-# NOINLINE hexEncode #-}

-- | "Hex decode some data"
hexDecode :: Text -> ByteString
hexDecode = unsafePerformIO1 Low.hexDecode

base64Encode :: ByteString -> Text
base64Encode = unsafePerformIO1 Low.base64Encode

base64Decode :: Text -> ByteString
base64Decode = unsafePerformIO1 Low.base64Decode
