{-|
Module      : Botan.Bindings.DSA
Description : Algorithm specific key operations: Diffie Hellman
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.DH where

import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

-- | Loads Diffie Hellman private key
foreign import capi safe "botan/ffi.h botan_privkey_load_dh"
    botan_privkey_load_dh
        :: Ptr BotanPrivKey    -- ^ key variable populated with key material
        -> BotanMP             -- ^ p prime order of a Z_p group
        -> BotanMP             -- ^ g group generator
        -> BotanMP             -- ^ x private key
        -> IO CInt             -- ^ 0 on success, a negative value on failure

-- | Loads Diffie Hellman public key
foreign import capi safe "botan/ffi.h botan_pubkey_load_dh"
    botan_pubkey_load_dh
        :: Ptr BotanPubKey    -- ^ key variable populated with key material
        -> BotanMP            -- ^ p prime order of a Z_p group
        -> BotanMP            -- ^ g group generator
        -> BotanMP            -- ^ y public key
        -> IO CInt            -- ^ 0 on success, a negative value on failure
