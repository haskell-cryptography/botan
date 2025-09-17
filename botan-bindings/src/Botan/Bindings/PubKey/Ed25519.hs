{-|
Module      : Botan.Bindings.Ed25519
Description : Algorithm specific key operations: Ed25519
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.Ed25519 where

import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

foreign import capi safe "botan/ffi.h botan_privkey_load_ed25519"
    botan_privkey_load_ed25519
        :: Ptr BotanPrivKey -- ^ __key__
        -> ConstPtr Word8   -- ^ __privkey[32]__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_load_ed25519"
    botan_pubkey_load_ed25519
        :: Ptr BotanPubKey  -- ^ __key__
        -> ConstPtr Word8   -- ^ __pubkey[32]__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_privkey_ed25519_get_privkey"
    botan_privkey_ed25519_get_privkey
        :: BotanPrivKey     -- ^ __key__
        -> Ptr Word8        -- ^ __output[64]__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_ed25519_get_pubkey"
    botan_pubkey_ed25519_get_pubkey
        :: BotanPubKey      -- ^ __key__
        -> Ptr Word8        -- ^ __pubkey[32]__
        -> IO CInt
