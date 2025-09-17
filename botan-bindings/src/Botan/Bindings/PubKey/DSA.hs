{-|
Module      : Botan.Bindings.DSA
Description : Algorithm specific key operations: DSA
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.DSA where

import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.RNG

{- |
Generates DSA key pair. Gives to a caller control over key length
and order of a subgroup 'q'.
-}
foreign import capi safe "botan/ffi.h botan_privkey_create_dsa"
    botan_privkey_create_dsa
        :: Ptr BotanPrivKey    -- ^ __key__: handler to the resulting key
        -> BotanRNG            -- ^ __rng__: initialized PRNG
        -> CSize               -- ^ __pbits__: length of the key in bits. Must be between in range (1024, 3072)
                               --   and multiple of 64. Bit size of the prime 'p'
        -> CSize               -- ^ __qbits__: qbits order of the subgroup. Must be in range (160, 256) and multiple
                               --   of 8
        -> IO CInt             -- ^ BOTAN_FFI_SUCCESS Success, `key' initialized with DSA key
                               --   BOTAN_FFI_ERROR_NULL_POINTER  either `key' or `rng' is NULL
                               --   BOTAN_FFI_ERROR_BAD_PARAMETER unexpected value for either `pbits' or `qbits'
                               --   BOTAN_FFI_ERROR_NOT_IMPLEMENTED functionality not implemented

foreign import capi safe "botan/ffi.h botan_privkey_load_dsa"
    botan_privkey_load_dsa
        :: Ptr BotanPrivKey    -- ^ __key__
        -> BotanMP             -- ^ __p__
        -> BotanMP             -- ^ __q__
        -> BotanMP             -- ^ __g__
        -> BotanMP             -- ^ __x__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_load_dsa"
    botan_pubkey_load_dsa
        :: Ptr BotanPubKey    -- ^ __key__
        -> BotanMP            -- ^ __p__
        -> BotanMP            -- ^ __q__
        -> BotanMP            -- ^ __g__
        -> BotanMP            -- ^ __y__
        -> IO CInt
