{-|
Module      : Botan.Bindings.DSA
Description : Algorithm specific key operations: Diffie Hellman
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
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
        :: Ptr BotanPrivKey    -- ^ __key__: variable populated with key material
        -> BotanMP             -- ^ __p__: prime order of a Z_p group
        -> BotanMP             -- ^ __g__: group generator
        -> BotanMP             -- ^ __x__: private key
        -> IO CInt             -- ^ 0 on success, a negative value on failure

-- | Loads Diffie Hellman public key
foreign import capi safe "botan/ffi.h botan_pubkey_load_dh"
    botan_pubkey_load_dh
        :: Ptr BotanPubKey    -- ^ __key__: variable populated with key material
        -> BotanMP            -- ^ __p__: prime order of a Z_p group
        -> BotanMP            -- ^ __g__: group generator
        -> BotanMP            -- ^ __y__: public key
        -> IO CInt            -- ^ 0 on success, a negative value on failure
