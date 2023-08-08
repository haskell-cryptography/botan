{-|
Module      : Botan.Bindings.DSA
Description : Algorithm specific key operations: DSA
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.DSA where

import Botan.Bindings.Error
import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.RNG

{-
Algorithm specific key operations: DSA
-}

{-|
Generates DSA key pair. Gives to a caller control over key length
and order of a subgroup 'q'.

- @param   key   handler to the resulting key
- @param   rng   initialized PRNG
- @param   pbits length of the key in bits. Must be between in range (1024, 3072)
         and multiple of 64. Bit size of the prime 'p'
- @param   qbits order of the subgroup. Must be in range (160, 256) and multiple
         of 8

- @returns BOTAN_FFI_SUCCESS Success, `key' initialized with DSA key
- @returns BOTAN_FFI_ERROR_NULL_POINTER  either `key' or `rng' is NULL
- @returns BOTAN_FFI_ERROR_BAD_PARAMETER unexpected value for either `pbits' or
         `qbits'
- @returns BOTAN_FFI_ERROR_NOT_IMPLEMENTED functionality not implemented


@BOTAN_PUBLIC_API(2,5) int botan_privkey_create_dsa(
                                botan_privkey_t* key,
                                botan_rng_t rng,
                                size_t pbits,
                                size_t qbits);@
-}
foreign import ccall unsafe botan_privkey_create_dsa
    :: Ptr PrivKeyPtr   -- key
    -> RNGPtr        -- rng
    -> CSize            -- pbits
    -> CSize            -- qbits
    -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,0) int botan_privkey_load_dsa(botan_privkey_t* key,
                                     botan_mp_t p,
                                     botan_mp_t q,
                                     botan_mp_t g,
                                     botan_mp_t x);@
-}
foreign import ccall unsafe botan_privkey_load_dsa
    :: Ptr PrivKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- q
    -> MPPtr            -- g
    -> MPPtr            -- x
    -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,0) int botan_pubkey_load_dsa(botan_pubkey_t* key,
                                    botan_mp_t p,
                                    botan_mp_t q,
                                    botan_mp_t g,
                                    botan_mp_t y);@
-}
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
