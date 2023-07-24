module Botan.KeyWrap where

import Prelude

import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString

import Data.Word

import System.IO

import Foreign.C.String
import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Marshal.Array
import Foreign.Ptr
import Foreign.Storable

import Botan.Error
import Botan.Make
import Botan.Prelude

-- NOTE: This module is of questionable veracity.
-- The following functions are taken from the 3.0.0 FFI header,
-- but they are undocumented in the FFI portion of the handbook,
-- and the C++ documentation on keywrapping describes different functions

-- NOTE: "It uses a 128-bit, 192-bit, or 256-bit key to encrypt an input key.
--  AES is always used. The input must be a multiple of 8 bytes; if not an
--  exception is thrown."
-- This does not appear to actually be true - it accepts an algo parameter?

-- NOTE: Untested, I am getting NotImplementedException (-40) for cursory tests.

-- /**
--  * Key wrapping as per RFC 3394
--  */
-- BOTAN_DEPRECATED("Use botan_nist_kw_enc")
-- BOTAN_PUBLIC_API(2,2)
-- int botan_key_wrap3394(const uint8_t key[], size_t key_len,
--                        const uint8_t kek[], size_t kek_len,
--                        uint8_t wrapped_key[], size_t *wrapped_key_len);

-- BOTAN_DEPRECATED("Use botan_nist_kw_dec")
-- BOTAN_PUBLIC_API(2,2)
-- int botan_key_unwrap3394(const uint8_t wrapped_key[], size_t wrapped_key_len,
--                          const uint8_t kek[], size_t kek_len,
--                          uint8_t key[], size_t *key_len);

-- BOTAN_PUBLIC_API(3,0)
-- int botan_nist_kw_enc(const char* cipher_algo, int padded,
--                       const uint8_t key[], size_t key_len,
--                       const uint8_t kek[], size_t kek_len,
--                       uint8_t wrapped_key[], size_t *wrapped_key_len);
foreign import ccall unsafe botan_nist_kw_enc
    :: Ptr CChar    -- Cipher algo
    -> Int          -- Padded
    -> Ptr Word8    -- Key
    -> CSize        -- Key len
    -> Ptr Word8    -- Key-encryption key
    -> CSize        -- Key-encryption key len
    -> Ptr Word8    -- Wrapped key
    -> Ptr CSize    -- Wrapped key len
    -> IO BotanErrorCode

nistKeyWrapEncode :: ByteString -> Int -> ByteString -> ByteString -> IO ByteString
nistKeyWrapEncode algo padded key kek = asCString algo $ \ algoPtr -> do
    asBytesLen key $ \ keyPtr keyLen -> do
        asBytesLen kek $ \ kekPtr kekLen -> do
            allocBytesQuerying $ \ wrappedKeyPtr wrappedKeyLen -> botan_nist_kw_enc
                algoPtr
                (fromIntegral padded)
                keyPtr
                keyLen
                kekPtr
                kekLen
                wrappedKeyPtr
                wrappedKeyLen

-- BOTAN_PUBLIC_API(3,0)
-- int botan_nist_kw_dec(const char* cipher_algo, int padded,
--                       const uint8_t wrapped_key[], size_t wrapped_key_len,
--                       const uint8_t kek[], size_t kek_len,
--                       uint8_t key[], size_t *key_len);
foreign import ccall unsafe botan_nist_kw_dec
    :: Ptr CChar    -- Cipher algo
    -> Int          -- Padded
    -> Ptr Word8    -- Wrapped key
    -> CSize        -- Wrapped key len
    -> Ptr Word8    -- Key-encryption key
    -> CSize        -- Key-encryption key len
    -> Ptr Word8    -- Key
    -> Ptr CSize    -- Key len
    -> IO BotanErrorCode

nistKeyWrapDecode :: ByteString -> Int -> ByteString -> ByteString -> IO ByteString
nistKeyWrapDecode algo padded wrappedKey kek = asCString algo $ \ algoPtr -> do
    asBytesLen wrappedKey $ \ wrappedKeyPtr wrappedKeyLen -> do
        asBytesLen kek $ \ kekPtr kekLen -> do
            allocBytesQuerying $ \ keyPtr keyLen -> botan_nist_kw_dec
                algoPtr
                (fromIntegral padded)
                wrappedKeyPtr
                wrappedKeyLen
                kekPtr
                kekLen
                keyPtr
                keyLen



