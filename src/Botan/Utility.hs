module Botan.Utility
( constantTimeCompare
, scrubMem
, hexEncode
, hexDecode
, base64Encode
, base64Decode
) where

import Prelude

import Control.Monad

import Data.Bool

import Data.Text (Text)
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text

import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString

import Data.Word

import System.IO
import System.IO.Unsafe

import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Ptr

import Botan.Error
import Botan.Prelude

-- NOTE: I just discovered:
--  https://hackage.haskell.org/package/memory-0.18.0/docs/Data-ByteArray-Encoding.html
-- Where have you been all my life?

-- TODO: Discuss whether it is wise to remove the ccall IO constraint from
--  idempotent crypto functions in order to 'make them pure'.

-- | int botan_constant_time_compare(const uint8_t *x, const uint8_t *y, size_t len)
-- NOTE: Return type is CInt, not BotanErrorCode. Function is explicit about return values.
foreign import ccall unsafe botan_constant_time_compare :: Ptr Word8 -> Ptr Word8 -> CSize -> IO CInt

-- | Returns 0 if x[0..len] == y[0..len], -1 otherwise.
-- NOTE: Here for completeness, because Data.ByteArray.constEq already exists.
-- DISCUSS: Should this be used in favor of Data.ByteArray.constEq?
-- TODO: Expose explicit length? Compare up to length of shorter? Compare up to length of 1st? (Error if len first > second)
constantTimeCompare :: ByteString -> ByteString -> Bool
constantTimeCompare x y = unsafePerformIO $ do
    asBytesLen x $ \ xPtr xlen -> do
        asBytesLen y $ \ yPtr ylen -> do
            if xlen == ylen
            then do
                result <- botan_constant_time_compare xPtr yPtr xlen
                case result of
                    0 -> return True
                    _ -> return False
            else return False

-- | int botan_scrub_mem(void* mem, size_t bytes);
foreign import ccall unsafe botan_scrub_mem :: Ptr () -> CSize -> IO CInt

-- I'm not entirely sure what this should be
-- Rather, this should be used in a `ScrubedBytes` implementation
-- This will require a custom version of allocBytes / mallocByteString that calls scrubmem before freeing
-- See: https://stackoverflow.com/questions/47609959/exporting-importing-via-ffi-vs-using-the-ffi-wrapper
--  Need to mix the wrapper with a closure that also frees the allocated wrapper funptr
--  inside of an allocScrubbed function (or something...)
scrubMem :: ForeignPtr a -> Int -> IO ()
scrubMem foreignPtr sz = withForeignPtr foreignPtr $ \ ptr -> do
    throwBotanIfNegative_ $ botan_scrub_mem (castPtr ptr) (fromIntegral sz)

type BotanHexFlag = Word32

-- NOTE: Not actually a botan constant
pattern BOTAN_FFI_HEX_NONE = 0 :: BotanHexFlag
pattern BOTAN_FFI_HEX_LOWER_CASE = 1 :: BotanHexFlag

-- | int botan_hex_encode(const uint8_t *x, size_t len, char *out, uint32_t flags)
-- NOTE: Return type is CInt, not BotanErrorCode. Function is explicit about return values.
foreign import ccall unsafe botan_hex_encode :: Ptr Word8 -> CSize -> Ptr CChar -> Word32 -> IO CInt

-- | Performs hex encoding of binary data in x of size len bytes. The output buffer out must be of at least x*2 bytes in size. If flags contains BOTAN_FFI_HEX_LOWER_CASE, hex encoding will only contain lower-case letters, upper-case letters otherwise. Returns 0 on success, 1 otherwise.
-- NOTE: Should this be used vs Data.ByteArray.Encoding ?
-- TODO: USE FLAG ARGUMENT?
-- DISCUSS: Handling of positive return code / BOTAN_FFI_INVALID_VERIFIER?
-- DISCUSS: Use of Text.decodeUtf8 - bad, partial function! - but safe here?
hexEncode :: Bool -> ByteString -> Text
hexEncode lower bytes = Text.decodeUtf8 $ unsafePerformIO $ do
    asBytesLen bytes $ \ bytesPtr bytesLen -> do
        allocBytes (fromIntegral $ 2 * bytesLen) $ \ hexPtr -> do
            throwBotanIfNegative_ $ botan_hex_encode bytesPtr bytesLen hexPtr $ if lower
                then BOTAN_FFI_HEX_LOWER_CASE
                else BOTAN_FFI_HEX_NONE



-- | int botan_hex_decode(const char *hex_str, size_t in_len, uint8_t *out, size_t *out_len)
foreign import ccall unsafe botan_hex_decode :: Ptr CChar -> CSize -> Ptr Word8 -> Ptr CSize -> IO BotanErrorCode

-- | "Hex decode some data"
-- NOTE: Should this be used vs Data.ByteArray.Encoding ?
-- DISCUSS: Return value, maybe vs exception
-- DISCUSS: Botan documentation is lacking here
-- WARNING: Does not actually check that len is a multiple of 2
-- Could ByteString.pack . Text.unpack for efficiency, but is unsafe and requires
--  that the Text only include hex chars and is of even length
-- DISCUSS: Ignoring the Ptr CSize that returns the actual decoded length.
--  We need the array (and thus its length) /before/ we call botan_hex_decode :/
hexDecode :: Text -> ByteString
hexDecode txt = unsafePerformIO $ do
    asBytesLen (Text.encodeUtf8 txt) $ \ hexPtr hexLen -> do
        allocBytes (fromIntegral $ div (hexLen + 1) 2) $ \ bytesPtr -> do
            alloca $ \ szPtr -> do
                throwBotanIfNegative_ $ botan_hex_decode hexPtr hexLen bytesPtr szPtr

-- | int botan_base64_encode(const uint8_t* x, size_t len, char* out, size_t* out_len);
foreign import ccall unsafe botan_base64_encode :: Ptr Word8 -> CSize -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

-- NOTE: Does not check tht base64Len == peek sizePtr
-- DISCUSS: Ignoring the Ptr CSize that returns the actual decoded length.
base64Encode :: ByteString -> Text
base64Encode bytes = Text.decodeUtf8 $ unsafePerformIO $ do
    asBytesLen bytes $ \ bytesPtr bytesLen -> do
        allocBytes (4 * ceiling (fromIntegral bytesLen / 3)) $ \ base64Ptr -> do
            alloca $ \ szPtr -> do
                throwBotanIfNegative_ $ botan_base64_encode bytesPtr bytesLen base64Ptr szPtr

-- | int botan_base64_decode(const char* base64_str, size_t in_len, uint8_t* out, size_t* out_len);
foreign import ccall unsafe botan_base64_decode :: Ptr CChar -> CSize -> Ptr Word8 -> Ptr CSize -> IO BotanErrorCode

-- | Ditto everything hexDecode
-- NOTE: Since must be
base64Decode :: Text -> ByteString
base64Decode txt = unsafePerformIO $ do
    asBytesLen (Text.encodeUtf8 txt) $ \ base64Ptr base64Len -> do
        let padLen = fromIntegral $ Text.length $ Text.takeWhileEnd (== '=') txt
        allocBytes (fromIntegral $ (3 * (div base64Len 4)) - padLen) $ \ bytesPtr -> do
            alloca $ \ szPtr -> do
                throwBotanIfNegative_ $ botan_base64_decode base64Ptr base64Len bytesPtr szPtr