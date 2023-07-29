module Botan.Low.Utility
( constantTimeCompare
, scrubMem
, HexEncodingFlags
, pattern Upper
, pattern Lower
, hexEncode
, hexDecode
, base64Encode
, base64Decode
) where

import Data.Bool

import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text

import qualified Data.ByteString as ByteString

import System.IO.Unsafe

import Botan.Bindings.Utility

import Botan.Low.Error
import Botan.Low.Prelude

-- | Returns 0 if x[0..len] == y[0..len], -1 otherwise.
constantTimeCompare :: ByteString -> ByteString -> Int -> IO Bool
constantTimeCompare x y len = do
    asBytesLen x $ \ xPtr xlen -> do
        asBytesLen y $ \ yPtr ylen -> do
            result <- botan_constant_time_compare xPtr yPtr xlen
            case result of
                0 -> return True
                _ -> return False

scrubMem :: Ptr a -> Int -> IO ()
scrubMem ptr sz = throwBotanIfNegative_ $ botan_scrub_mem (castPtr ptr) (fromIntegral sz)

type HexEncodingFlags = BotanHexFlag

-- NOTE: Not actually a botan constant
pattern Upper :: HexEncodingFlags
pattern Upper = BOTAN_FFI_HEX_NONE

pattern Lower :: HexEncodingFlags
pattern Lower = BOTAN_FFI_HEX_LOWER_CASE

-- | Performs hex encoding of binary data in x of size len bytes. The output buffer out must be of at least x*2 bytes in size. If flags contains BOTAN_FFI_HEX_LOWER_CASE, hex encoding will only contain lower-case letters, upper-case letters otherwise. Returns 0 on success, 1 otherwise.
-- DISCUSS: Handling of positive return code / BOTAN_FFI_INVALID_VERIFIER?
-- DISCUSS: Use of Text.decodeUtf8 - bad, partial function! - but safe here?
hexEncode :: ByteString -> HexEncodingFlags -> IO Text
hexEncode bytes flags =  Text.decodeUtf8 <$> do
    asBytesLen bytes $ \ bytesPtr bytesLen -> do
        allocBytes (fromIntegral $ 2 * bytesLen) $ \ hexPtr -> do
            throwBotanIfNegative_ $ botan_hex_encode bytesPtr bytesLen hexPtr flags

-- | "Hex decode some data"
-- DISCUSS: Return value, maybe vs exception
-- DISCUSS: Botan documentation is lacking here
-- WARNING: Does not actually check that len is a multiple of 2
-- Could ByteString.pack . Text.unpack for efficiency, but is unsafe and requires
--  that the Text only include hex chars and is of even length
-- DISCUSS: Ignoring the Ptr CSize that returns the actual decoded length.
--  We need the array (and thus its length) /before/ we call botan_hex_decode :/
hexDecode :: Text -> IO ByteString
hexDecode txt = do
    asBytesLen (Text.encodeUtf8 txt) $ \ hexPtr hexLen -> do
        allocBytes (fromIntegral $ div (hexLen + 1) 2) $ \ bytesPtr -> do
            alloca $ \ szPtr -> do
                throwBotanIfNegative_ $ botan_hex_decode hexPtr hexLen bytesPtr szPtr

-- NOTE: Does not check tht base64Len == peek sizePtr
-- DISCUSS: Ignoring the Ptr CSize that returns the actual decoded length.
base64Encode :: ByteString -> IO Text
base64Encode bytes = Text.decodeUtf8 <$> do
    asBytesLen bytes $ \ bytesPtr bytesLen -> do
        allocBytes (4 * ceiling (fromIntegral bytesLen / 3)) $ \ base64Ptr -> do
            alloca $ \ szPtr -> do
                throwBotanIfNegative_ $ botan_base64_encode bytesPtr bytesLen base64Ptr szPtr

-- | Ditto everything hexDecode
-- NOTE: Since must be
base64Decode :: Text -> IO ByteString
base64Decode txt = do
    asBytesLen (Text.encodeUtf8 txt) $ \ base64Ptr base64Len -> do
        let padLen = fromIntegral $ Text.length $ Text.takeWhileEnd (== '=') txt
        allocBytes (fromIntegral $ (3 * (div base64Len 4)) - padLen) $ \ bytesPtr -> do
            alloca $ \ szPtr -> do
                throwBotanIfNegative_ $ botan_base64_decode base64Ptr base64Len bytesPtr szPtr