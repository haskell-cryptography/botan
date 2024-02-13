{-|
Module      : Botan.Bindings.X25519
Description : Algorithm specific key operations: X25519
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.X25519 where

import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

foreign import capi safe "botan/ffi.h botan_privkey_load_x25519"
    botan_privkey_load_x25519
        :: Ptr BotanPrivKey    -- ^ __key__
        -> ConstPtr Word8      -- ^ __privkey[32]__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_load_x25519"
    botan_pubkey_load_x25519
        :: Ptr BotanPubKey    -- ^ __key__
        -> ConstPtr Word8     -- ^ __pubkey[32]__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_privkey_x25519_get_privkey"
    botan_privkey_x25519_get_privkey
        :: BotanPrivKey    -- ^ __key__
        -> Ptr Word8       -- ^ __output[32]__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_x25519_get_pubkey"
    botan_pubkey_x25519_get_pubkey
        :: BotanPubKey    -- ^ __key__
        -> Ptr Word8      -- ^ __pubkey[32]__
        -> IO CInt
