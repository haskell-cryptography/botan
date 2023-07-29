module Botan.Bindings.PwdHash where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

-- /*
-- * Derive a key from a passphrase
-- * @param algo PBKDF algorithm, e.g., "PBKDF2(SHA-256)" or "Scrypt"
-- * @param param1 the first PBKDF algorithm parameter
-- * @param param2 the second PBKDF algorithm parameter (may be zero if unneeded)
-- * @param param3 the third PBKDF algorithm parameter (may be zero if unneeded)
-- * @param out buffer to store the derived key, must be of out_len bytes
-- * @param out_len the desired length of the key to produce
-- * @param passphrase the password to derive the key from
-- * @param passphrase_len if > 0, specifies length of password. If len == 0, then
-- *        strlen will be called on passphrase to compute the length.
-- * @param salt a randomly chosen salt
-- * @param salt_len length of salt in bytes
-- * @return 0 on success, a negative value on failure
-- */
-- int BOTAN_PUBLIC_API(2,8) botan_pwdhash(
--    const char* algo,
--    size_t param1,
--    size_t param2,
--    size_t param3,
--    uint8_t out[],
--    size_t out_len,
--    const char* passphrase,
--    size_t passphrase_len,
--    const uint8_t salt[],
--    size_t salt_len);
foreign import ccall unsafe botan_pwdhash
    :: CString      -- algo
    -> CSize        -- param1
    -> CSize        -- param2
    -> CSize        -- param3
    -> Ptr Word8    -- out
    -> CSize        -- out_len
    -> CString      -- passphrase
    -> CSize        -- passphrase_len
    -> Ptr Word8    -- salt
    -> CSize        -- salt_len
    -> IO BotanErrorCode

-- /*
-- * Derive a key from a passphrase
-- * @param pbkdf_algo PBKDF algorithm, e.g., "Scrypt" or "PBKDF2(SHA-256)"
-- * @param msec the desired runtime in milliseconds
-- * @param param1 will be set to the first password hash parameter
-- * @param param2 will be set to the second password hash parameter
-- * @param param3 will be set to the third password hash parameter
-- * @param out buffer to store the derived key, must be of out_len bytes
-- * @param out_len the desired length of the key to produce
-- * @param passphrase the password to derive the key from
-- * @param passphrase_len if > 0, specifies length of password. If len == 0, then
-- *        strlen will be called on passphrase to compute the length.
-- * @param salt a randomly chosen salt
-- * @param salt_len length of salt in bytes
-- * @return 0 on success, a negative value on failure
-- */
-- int BOTAN_PUBLIC_API(2,8) botan_pwdhash_timed(
--    const char* algo,
--    uint32_t msec,
--    size_t* param1,
--    size_t* param2,
--    size_t* param3,
--    uint8_t out[],
--    size_t out_len,
--    const char* passphrase,
--    size_t passphrase_len,
--    const uint8_t salt[],
--    size_t salt_len);
foreign import ccall unsafe botan_pwdhash_timed
    :: CString      -- algo
    -> Word32       -- msec
    -> Ptr CSize    -- param1
    -> Ptr CSize    -- param2
    -> Ptr CSize    -- param3
    -> Ptr Word8    -- out
    -> CSize        -- out_len
    -> CString      -- passphrase
    -> CSize        -- passphrase_len
    -> Ptr Word8    -- salt
    -> CSize        -- salt_len
    -> IO BotanErrorCode
