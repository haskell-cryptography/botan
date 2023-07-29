module Botan.Bindings.PubKey.RSA where

import Botan.Bindings.Error
import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

-- /*
-- * Algorithm specific key operations: RSA
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_load_rsa(botan_privkey_t* key,
--                                      botan_mp_t p,
--                                      botan_mp_t q,
--                                      botan_mp_t e);
foreign import ccall unsafe botan_privkey_load_rsa
    :: Ptr PrivKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- q
    -> MPPtr            -- e
    -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,8) int botan_privkey_load_rsa_pkcs1(botan_privkey_t* key,
--                                                        const uint8_t bits[],
--                                                        size_t len);
foreign import ccall unsafe botan_privkey_load_rsa_pkcs1 :: Ptr PrivKeyPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- BOTAN_DEPRECATED("Use botan_privkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_rsa_get_p(botan_mp_t p, botan_privkey_t rsa_key);
-- BOTAN_DEPRECATED("Use botan_privkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_rsa_get_q(botan_mp_t q, botan_privkey_t rsa_key);
-- BOTAN_DEPRECATED("Use botan_privkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_rsa_get_d(botan_mp_t d, botan_privkey_t rsa_key);
-- BOTAN_DEPRECATED("Use botan_privkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_rsa_get_n(botan_mp_t n, botan_privkey_t rsa_key);
-- BOTAN_DEPRECATED("Use botan_privkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_rsa_get_e(botan_mp_t e, botan_privkey_t rsa_key);

-- BOTAN_PUBLIC_API(2,8) int botan_privkey_rsa_get_privkey(botan_privkey_t rsa_key,
--                                                         uint8_t out[], size_t* out_len,
--                                                         uint32_t flags);
-- TODO: Figure out what the flags are here
foreign import ccall unsafe botan_privkey_rsa_get_privkey :: PrivKeyPtr -> Ptr Word8 -> Ptr CSize -> Word32 -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_load_rsa(botan_pubkey_t* key,
--                                                 botan_mp_t n,
--                                                 botan_mp_t e);
foreign import ccall unsafe botan_pubkey_load_rsa
    :: Ptr PubKeyPtr   -- key
    -> MPPtr            -- n
    -> MPPtr            -- e
    -> IO BotanErrorCode

-- BOTAN_DEPRECATED("Use botan_pubkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_pubkey_rsa_get_e(botan_mp_t e, botan_pubkey_t rsa_key);
-- BOTAN_DEPRECATED("Use botan_pubkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_pubkey_rsa_get_n(botan_mp_t n, botan_pubkey_t rsa_key);

