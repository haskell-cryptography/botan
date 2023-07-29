module Botan.Bindings.PubKey.DSA where

import Botan.Bindings.Error
import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

-- /*
-- * Algorithm specific key operations: DSA
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_load_dsa(botan_privkey_t* key,
--                                      botan_mp_t p,
--                                      botan_mp_t q,
--                                      botan_mp_t g,
--                                      botan_mp_t x);
foreign import ccall unsafe botan_privkey_load_dsa
    :: Ptr PrivKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- q
    -> MPPtr            -- g
    -> MPPtr            -- x
    -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_load_dsa(botan_pubkey_t* key,
--                                     botan_mp_t p,
--                                     botan_mp_t q,
--                                     botan_mp_t g,
--                                     botan_mp_t y);
foreign import ccall unsafe botan_pubkey_load_dsa
    :: Ptr PubKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- q
    -> MPPtr            -- g
    -> MPPtr            -- y
    -> IO BotanErrorCode

-- BOTAN_DEPRECATED("Use botan_privkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_dsa_get_x(botan_mp_t n, botan_privkey_t key);

-- BOTAN_DEPRECATED("Use botan_pubkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_pubkey_dsa_get_p(botan_mp_t p, botan_pubkey_t key);
-- BOTAN_DEPRECATED("Use botan_pubkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_pubkey_dsa_get_q(botan_mp_t q, botan_pubkey_t key);
-- BOTAN_DEPRECATED("Use botan_pubkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_pubkey_dsa_get_g(botan_mp_t d, botan_pubkey_t key);
-- BOTAN_DEPRECATED("Use botan_pubkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_pubkey_dsa_get_y(botan_mp_t y, botan_pubkey_t key);
