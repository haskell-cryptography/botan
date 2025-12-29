{-|
Module      : Botan.Low.Utility
Description : Utility functions
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

This module is based on the [Utility
Functions](https://botan.randombit.net/handbook/api_ref/ffi.html#utility-functions)
section of the C Botan FFI documentation.
-}

module Botan.Low.Utility (
    constantTimeCompare
  , scrubMem
  , HexEncodingFlags(..)
  , hexEncode
  , hexDecode
  , base64Encode
  , base64Decode
  ) where

import           Botan.Bindings.ConstPtr (ConstPtr (..))
import           Botan.Bindings.Utility
import           Botan.Low.Error.Internal
import           Botan.Low.Make
import           Botan.Low.Prelude
import           Data.ByteString (ByteString)
import           Data.Text
import qualified Data.Text.Encoding as Text
import           Data.Word
import           Foreign.Ptr

-- | Returns 0 if x[0..len] == y[0..len], -1 otherwise.
constantTimeCompare ::
     ByteString   -- ^ __x__
  -> ByteString   -- ^ __y__
  -> Int          -- ^ __len__
  -> IO Bool
constantTimeCompare x y len =
    asBytesLen x $ \ xPtr _xlen ->
    asBytesLen y $ \ yPtr _ylen -> do
      result <- botan_constant_time_compare
        (ConstPtr xPtr)
        (ConstPtr yPtr)
        (fromIntegral len)
      case result of
        0 -> return True
        _ -> return False

scrubMem ::
     Ptr a    -- ^ __mem__
  -> Int      -- ^ __bytes__
  -> IO ()
scrubMem ptr sz = throwBotanIfNegative_ $ botan_scrub_mem (castPtr ptr) (fromIntegral sz)

data HexEncodingFlags =
    HexUpperCase
  | HexLowerCase

hexEncodingFlags :: HexEncodingFlags -> Word32
hexEncodingFlags HexUpperCase = BOTAN_FFI_HEX_UPPER_CASE
hexEncodingFlags HexLowerCase = BOTAN_FFI_HEX_LOWER_CASE

hexEncode ::
     ByteString           -- ^ __x__
  -> HexEncodingFlags     -- ^ __flags__
  -> IO Text              -- ^ __y__
hexEncode bytes flags =
    fmap Text.decodeUtf8 $
    asBytesLen bytes $ \ bytesPtr bytesLen ->
    allocBytes (fromIntegral $ 2 * bytesLen) $ \ hexPtr ->
    throwBotanIfNegative_ $ botan_hex_encode
      (ConstPtr bytesPtr)
      bytesLen
      hexPtr
      (hexEncodingFlags flags)

hexDecode ::
     Text             -- ^ __hex_str__
  -> IO ByteString    -- ^ __out__
hexDecode txt =
    asBytesLen (Text.encodeUtf8 txt) $ \ hexPtr hexLen ->
    allocBytesQuerying $ \ bytesPtr szPtr ->
    botan_hex_decode
      (ConstPtr hexPtr)
      hexLen
      bytesPtr
      szPtr

base64Encode ::
     ByteString   -- ^ __x__
  -> IO Text      -- ^ __out__
base64Encode bytes =
    fmap Text.decodeUtf8 $
    asBytesLen bytes $ \ bytesPtr bytesLen ->
    allocBytesQueryingCString $ \ base64Ptr szPtr ->
    botan_base64_encode
      (ConstPtr bytesPtr)
      bytesLen
      base64Ptr
      szPtr

base64Decode ::
     Text             -- ^ __base64_str__
  -> IO ByteString    -- ^ __out__
base64Decode txt =
    asBytesLen (Text.encodeUtf8 txt) $ \ base64Ptr base64Len ->
    allocBytesQueryingCString $ \ bytesPtr szPtr ->
    botan_base64_decode
      (ConstPtr base64Ptr)
      base64Len
      bytesPtr
      szPtr
