module Botan.Bindings.PubKey.ECDH where

import Botan.Bindings.Error
import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

{-
ECDH specific key operations
-}

{-|
@BOTAN_PUBLIC_API(2,2)
int botan_privkey_load_ecdh(botan_privkey_t* key,
                            const botan_mp_t scalar,
                            const char* curve_name);@
-}
foreign import ccall unsafe botan_privkey_load_ecdh
    :: Ptr PrivKeyPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,2)
int botan_pubkey_load_ecdh(botan_pubkey_t* key,
                           const botan_mp_t public_x,
                           const botan_mp_t public_y,
                           const char* curve_name);@
-}
foreign import ccall unsafe botan_pubkey_load_ecdh
    :: Ptr PubKeyPtr
    -> MPPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode
