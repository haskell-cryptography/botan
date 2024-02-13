{-|
Module      : Botan.Bindings.RSA
Description : Algorithm specific key operations: RSA
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.RSA where

import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

foreign import capi safe "botan/ffi.h botan_privkey_load_rsa"
    botan_privkey_load_rsa
        :: Ptr BotanPrivKey    -- ^ @key@
        -> BotanMP             -- ^ @p@
        -> BotanMP             -- ^ @q@
        -> BotanMP             -- ^ @e@
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_privkey_load_rsa_pkcs1"
    botan_privkey_load_rsa_pkcs1
        :: Ptr BotanPrivKey    -- ^ @key@
        -> ConstPtr Word8      -- ^ @bits[]@
        -> CSize               -- ^ @len@
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_privkey_rsa_get_privkey"
    botan_privkey_rsa_get_privkey
        :: BotanPrivKey    -- ^ @rsa_key@
        -> Ptr Word8       -- ^ @out[]@
        -> Ptr CSize       -- ^ @out_len@
        -> Word32          -- ^ @flags@
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_load_rsa"
    botan_pubkey_load_rsa
        :: Ptr BotanPubKey    -- ^ @key@
        -> BotanMP            -- ^ @n@
        -> BotanMP            -- ^ @e@
        -> IO CInt
