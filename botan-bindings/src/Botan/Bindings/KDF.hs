module Botan.Bindings.KDF where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

-- /**
-- * Derive a key
-- * @param kdf_algo KDF algorithm, e.g., "SP800-56C"
-- * @param out buffer holding the derived key, must be of length out_len
-- * @param out_len the desired output length in bytes
-- * @param secret the secret input
-- * @param secret_len size of secret in bytes
-- * @param salt a diversifier
-- * @param salt_len size of salt in bytes
-- * @param label purpose for the derived keying material
-- * @param label_len size of label in bytes
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_kdf(const char* kdf_algo,
--                         uint8_t out[], size_t out_len,
--                         const uint8_t secret[], size_t secret_len,
--                         const uint8_t salt[], size_t salt_len,
--                         const uint8_t label[], size_t label_len);
foreign import ccall unsafe botan_kdf :: CString -> Ptr Word8 -> CSize -> Ptr Word8 -> CSize -> Ptr Word8 -> CSize -> Ptr Word8 -> CSize -> IO BotanErrorCode
