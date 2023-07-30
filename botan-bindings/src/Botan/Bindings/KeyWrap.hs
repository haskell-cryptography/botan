{-|
Module      : Botan.Bindings.KeyWrap
Description : Bcrypt password hashing
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

NIST specifies two mechanisms for wrapping (encrypting) symmetric keys
using another key. The first (and older, more widely supported) method
requires the input be a multiple of 8 bytes long. The other allows any
length input, though only up to 2**32 bytes.

These algorithms are described in NIST SP 800-38F, and RFCs 3394 and 5649.

These functions take an arbitrary 128-bit block cipher. NIST only allows
these functions with AES, but any 128-bit cipher will do and some other
implementations (such as in OpenSSL) do also allow other ciphers.

Use AES for best interop.
-}

module Botan.Bindings.KeyWrap where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

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

{-|
@BOTAN_PUBLIC_API(3,0)
int botan_nist_kw_enc(const char* cipher_algo, int padded,
                      const uint8_t key[], size_t key_len,
                      const uint8_t kek[], size_t kek_len,
                      uint8_t wrapped_key[], size_t *wrapped_key_len);@
-}
foreign import ccall unsafe botan_nist_kw_enc
    :: Ptr CChar    -- Cipher algo
    -> CInt         -- Padded
    -> Ptr Word8    -- Key
    -> CSize        -- Key len
    -> Ptr Word8    -- Key-encryption key
    -> CSize        -- Key-encryption key len
    -> Ptr Word8    -- Wrapped key
    -> Ptr CSize    -- Wrapped key len
    -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(3,0)
int botan_nist_kw_dec(const char* cipher_algo, int padded,
                      const uint8_t wrapped_key[], size_t wrapped_key_len,
                      const uint8_t kek[], size_t kek_len,
                      uint8_t key[], size_t *key_len);@
-}
foreign import ccall unsafe botan_nist_kw_dec
    :: Ptr CChar    -- Cipher algo
    -> CInt         -- Padded
    -> Ptr Word8    -- Wrapped key
    -> CSize        -- Wrapped key len
    -> Ptr Word8    -- Key-encryption key
    -> CSize        -- Key-encryption key len
    -> Ptr Word8    -- Key
    -> Ptr CSize    -- Key len
    -> IO BotanErrorCode
