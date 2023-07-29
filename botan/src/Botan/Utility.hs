module Botan.Utility
( constantTimeCompare
-- , scrubMem
, HexEncodingFlags
, pattern Upper
, pattern Lower
, hexEncode
, hexDecode
, base64Encode
, base64Decode
) where

import System.IO.Unsafe

import Botan.Low.Utility (HexEncodingFlags, pattern Upper, pattern Lower)
import qualified Botan.Low.Utility as Low

import Botan.Error
import Botan.Prelude

-- | Returns 0 if x[0..len] == y[0..len], -1 otherwise.
constantTimeCompare :: ByteString -> ByteString -> Int -> Bool
constantTimeCompare x y len = unsafePerformIO $ Low.constantTimeCompare x y len

-- I'm not entirely sure what this should be
-- Rather, this should be used in a `ScrubedBytes` implementation
-- This will require a custom version of allocBytes / mallocByteString that calls scrubmem before freeing
-- See: https://stackoverflow.com/questions/47609959/exporting-importing-via-ffi-vs-using-the-ffi-wrapper
--  Need to mix the wrapper with a closure that also frees the allocated wrapper funptr
--  inside of an allocScrubbed function (or something...)
-- scrubMem :: ForeignPtr a -> Int -> IO ()
-- scrubMem foreignPtr sz = withForeignPtr foreignPtr $ \ ptr -> Low.scrubMem ptr sz
-- Maybe:
-- scrubMemWith :: WithPtr typ ptr -> typ -> Int -> IO ()
-- scrubMemWith withPtr typ sz = withPtr typ $ \ ptr -> Low.scrubMem ptr sz

hexEncode :: ByteString -> HexEncodingFlags -> Text
hexEncode bytes flags = unsafePerformIO $ Low.hexEncode bytes flags

-- | "Hex decode some data"
hexDecode :: Text -> ByteString
hexDecode hex = unsafePerformIO $ Low.hexDecode hex

base64Encode :: ByteString -> Text
base64Encode bytes = unsafePerformIO $ Low.base64Encode bytes

base64Decode :: Text -> ByteString
base64Decode base64 = unsafePerformIO $ Low.base64Decode base64
