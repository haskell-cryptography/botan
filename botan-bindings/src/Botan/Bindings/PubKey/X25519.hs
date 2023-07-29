module Botan.Bindings.PubKey.X25519 where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

-- /*
-- * Algorithm specific key operations: X25519
-- */

-- BOTAN_PUBLIC_API(2,8) int botan_privkey_load_x25519(botan_privkey_t* key,
--                                                     const uint8_t privkey[32]);
foreign import ccall unsafe botan_privkey_load_x25519 :: Ptr PrivKeyPtr -> Ptr Word8 -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,8) int botan_pubkey_load_x25519(botan_pubkey_t* key,
--                                                    const uint8_t pubkey[32]);
foreign import ccall unsafe botan_pubkey_load_x25519 :: Ptr PubKeyPtr -> Ptr Word8 -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,8) int botan_privkey_x25519_get_privkey(botan_privkey_t key,
--                                                            uint8_t output[32]);
foreign import ccall unsafe botan_privkey_x25519_get_privkey :: PrivKeyPtr -> Ptr Word8 -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,8) int botan_pubkey_x25519_get_pubkey(botan_pubkey_t key,
--                                                          uint8_t pubkey[32]);
foreign import ccall unsafe botan_pubkey_x25519_get_pubkey :: PubKeyPtr -> Ptr Word8 -> IO BotanErrorCode
