module Botan.Bindings.Bcrypt where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.Random

-- /* Bcrypt password hashing */

-- /**
-- * Create a password hash using Bcrypt
-- * @param out buffer holding the password hash, should be of length 64 bytes
-- * @param out_len the desired output length in bytes
-- * @param password the password
-- * @param rng a random number generator
-- * @param work_factor how much work to do to slow down guessing attacks
-- * @param flags should be 0 in current API revision, all other uses are reserved
-- *       and return BOTAN_FFI_ERROR_BAD_FLAG
-- * @return 0 on success, a negative value on failure

-- * Output is formatted bcrypt $2a$...
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_bcrypt_generate(uint8_t* out, size_t* out_len,
--                                     const char* password,
--                                     botan_rng_t rng,
--                                     size_t work_factor,
--                                     uint32_t flags);
foreign import ccall unsafe botan_bcrypt_generate :: Ptr Word8 -> Ptr CSize -> Ptr CChar -> RandomPtr -> CSize -> Word32 -> IO BotanErrorCode

-- /**
-- * Check a previously created password hash
-- * @param pass the password to check against
-- * @param hash the stored hash to check against
-- * @return 0 if if this password/hash combination is valid,
-- *       1 if the combination is not valid (but otherwise well formed),
-- *       negative on error
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_bcrypt_is_valid(const char* pass, const char* hash);
foreign import ccall unsafe botan_bcrypt_is_valid :: Ptr CChar -> Ptr CChar -> IO BotanErrorCode
