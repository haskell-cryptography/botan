module Botan.Bindings.KeyWrap where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

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
    -> CInt         -- Padded
    -> Ptr Word8    -- Key
    -> CSize        -- Key len
    -> Ptr Word8    -- Key-encryption key
    -> CSize        -- Key-encryption key len
    -> Ptr Word8    -- Wrapped key
    -> Ptr CSize    -- Wrapped key len
    -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(3,0)
-- int botan_nist_kw_dec(const char* cipher_algo, int padded,
--                       const uint8_t wrapped_key[], size_t wrapped_key_len,
--                       const uint8_t kek[], size_t kek_len,
--                       uint8_t key[], size_t *key_len);
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
