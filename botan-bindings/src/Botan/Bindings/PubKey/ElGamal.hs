module Botan.Bindings.PubKey.ElGamal where

import Botan.Bindings.Error
import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

-- /*
-- * Algorithm specific key operations: ElGamal
-- */

-- /**
-- * Loads ElGamal private key
-- *
-- * @param key variable populated with key material
-- * @param p prime order of a Z_p group
-- * @param g group generator
-- * @param x private key
-- *
-- * @pre key is NULL on input
-- * @post function allocates memory and assigns to `key'
-- *
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_load_elgamal(botan_privkey_t* key,
--                                          botan_mp_t p,
--                                          botan_mp_t g,
--                                          botan_mp_t x);
foreign import ccall unsafe botan_privkey_load_elgamal
    :: Ptr PrivKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- g
    -> MPPtr            -- x
    -> IO BotanErrorCode

-- /**
-- * Loads ElGamal public key
-- * @param key variable populated with key material
-- * @param p prime order of a Z_p group
-- * @param g group generator
-- * @param y public key
-- *
-- * @pre key is NULL on input
-- * @post function allocates memory and assigns to `key'
-- *
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_load_elgamal(botan_pubkey_t* key,
--                                         botan_mp_t p,
--                                         botan_mp_t g,
--                                         botan_mp_t y);
foreign import ccall unsafe botan_pubkey_load_elgamal
    :: Ptr PubKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- g
    -> MPPtr            -- y
    -> IO BotanErrorCode
