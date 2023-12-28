{-|
Module      : Botan.Low.Utility
Description : Utility functions
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.Utility
( constantTimeCompare
, scrubMem
, HexEncodingFlags
, pattern HexUpperCase
, pattern HexLowerCase
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
import Botan.Low.Make (allocBytesQuerying, allocBytesQueryingCString)

-- NOTE: Use of Text is unique here - leave for Text for `botan`

-- | Returns 0 if x[0..len] == y[0..len], -1 otherwise.
constantTimeCompare :: ByteString -> ByteString -> Int -> IO Bool
constantTimeCompare x y len = do
    asBytesLen x $ \ xPtr xlen -> do
        asBytesLen y $ \ yPtr ylen -> do
            result <- botan_constant_time_compare
                (ConstPtr xPtr)
                (ConstPtr yPtr)
                xlen
            case result of
                0 -> return True
                _ -> return False

scrubMem :: Ptr a -> Int -> IO ()
scrubMem ptr sz = throwBotanIfNegative_ $ botan_scrub_mem (castPtr ptr) (fromIntegral sz)

type HexEncodingFlags = Word32

pattern HexUpperCase    -- ^ NOTE: Not an actual flag
    ,   HexLowerCase
    ::  HexEncodingFlags

pattern HexUpperCase = BOTAN_FFI_HEX_UPPER_CASE
pattern HexLowerCase = BOTAN_FFI_HEX_LOWER_CASE

-- | Performs hex encoding of binary data in x of size len bytes. The output buffer out must be of at least x*2 bytes in size. If flags contains BOTAN_FFI_HEX_LOWER_CASE, hex encoding will only contain lower-case letters, upper-case letters otherwise. Returns 0 on success, 1 otherwise.
-- DISCUSS: Handling of positive return code / BOTAN_FFI_INVALID_VERIFIER?
-- DISCUSS: Use of Text.decodeUtf8 - bad, partial function! - but safe here?
hexEncode :: ByteString -> HexEncodingFlags -> IO Text
hexEncode bytes flags =  Text.decodeUtf8 <$> do
    asBytesLen bytes $ \ bytesPtr bytesLen -> do
        allocBytes (fromIntegral $ 2 * bytesLen) $ \ hexPtr -> do
            throwBotanIfNegative_ $ botan_hex_encode
                (ConstPtr bytesPtr)
                bytesLen
                hexPtr
                flags

-- | "Hex decode some data"
-- DISCUSS: Return value, maybe vs exception
-- DISCUSS: Botan documentation is lacking here
-- WARNING: Does not actually check that len is a multiple of 2
hexDecode :: Text -> IO ByteString
hexDecode txt = do
    asBytesLen (Text.encodeUtf8 txt) $ \ hexPtr hexLen -> do
        allocBytesQuerying $ \ bytesPtr szPtr -> do
            botan_hex_decode
                (ConstPtr hexPtr)
                hexLen
                bytesPtr
                szPtr

-- NOTE: Does not check tht base64Len == peek sizePtr
base64Encode :: ByteString -> IO Text
base64Encode bytes = Text.decodeUtf8 <$> do
    asBytesLen bytes $ \ bytesPtr bytesLen -> do
        allocBytesQueryingCString $ \ base64Ptr szPtr -> do
            botan_base64_encode
                (ConstPtr bytesPtr)
                bytesLen
                base64Ptr
                szPtr

-- | Ditto everything hexDecode
base64Decode :: Text -> IO ByteString
base64Decode txt = do
    asBytesLen (Text.encodeUtf8 txt) $ \ base64Ptr base64Len -> do
        allocBytesQueryingCString $ \ bytesPtr szPtr -> do
            botan_base64_decode
                (ConstPtr base64Ptr)
                base64Len
                bytesPtr
                szPtr
