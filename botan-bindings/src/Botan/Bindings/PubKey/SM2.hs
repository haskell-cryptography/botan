module Botan.Bindings.PubKey.SM2 where

import Botan.Bindings.Error
import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

{-
SM2 specific key operations
-}

-- TODO: Move to Bodan.Bindings.PK.SM2
{-|
@BOTAN_PUBLIC_API(2,2)
int botan_privkey_load_sm2(botan_privkey_t* key,
                           const botan_mp_t scalar,
                           const char* curve_name);@
-}
foreign import ccall unsafe botan_privkey_load_sm2
    :: Ptr PrivKeyPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

-- TODO: Move to Bodan.Bindings.PK.SM2
{-|
@BOTAN_PUBLIC_API(2,2)
int botan_pubkey_load_sm2(botan_pubkey_t* key,
                          const botan_mp_t public_x,
                          const botan_mp_t public_y,
                          const char* curve_name);@
-}
foreign import ccall unsafe botan_pubkey_load_sm2
    :: Ptr PubKeyPtr
    -> MPPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

-- BOTAN_DEPRECATED("Use botan_privkey_load_sm2") BOTAN_PUBLIC_API(2,2)
-- int botan_privkey_load_sm2_enc(botan_privkey_t* key,
--                                const botan_mp_t scalar,
--                                const char* curve_name);

-- BOTAN_DEPRECATED("Use botan_pubkey_load_sm2") BOTAN_PUBLIC_API(2,2)
-- int botan_pubkey_load_sm2_enc(botan_pubkey_t* key,
--                               const botan_mp_t public_x,
--                               const botan_mp_t public_y,
--                               const char* curve_name);

-- BOTAN_PUBLIC_API(2,3)
-- int botan_pubkey_sm2_compute_za(uint8_t out[],
--                                 size_t* out_len,
--                                 const char* ident,
--                                 const char* hash_algo,
--                                 const botan_pubkey_t key);
-- TODO: Figure out what this is
