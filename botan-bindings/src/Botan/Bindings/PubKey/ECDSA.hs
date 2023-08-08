module Botan.Bindings.PubKey.ECDSA where

import Botan.Bindings.Error
import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

{-
ECDSA specific key operations
-}

{-|
@BOTAN_PUBLIC_API(2,2)
int botan_privkey_load_ecdsa(botan_privkey_t* key,
                             const botan_mp_t scalar,
                             const char* curve_name);@
-}
foreign import ccall unsafe botan_privkey_load_ecdsa
    :: Ptr PrivKeyPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,2)
int botan_pubkey_load_ecdsa(botan_pubkey_t* key,
                            const botan_mp_t public_x,
                            const botan_mp_t public_y,
                            const char* curve_name);@
-}
foreign import ccall unsafe botan_pubkey_load_ecdsa
    :: Ptr PubKeyPtr
    -> MPPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode
