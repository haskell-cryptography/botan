{-|
Module      : Botan.Bindings.DSA
Description : Algorithm specific key operations: DSA
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.DSA where

import Botan.Bindings.Error
import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.RNG

{- |
Generates DSA key pair. Gives to a caller control over key length
and order of a subgroup 'q'.
-}
foreign import capi "botan/ffi.h botan_privkey_create_dsa"
    botan_privkey_create_dsa
        :: Ptr BotanPrivKey    -- ^ key handler to the resulting key
        -> BotanRNG            -- ^ rng initialized PRNG
        -> CSize               -- ^ pbits length of the key in bits. Must be between in range (1024, 3072)
                               --   and multiple of 64. Bit size of the prime 'p'
        -> CSize               -- ^ qbits qbits order of the subgroup. Must be in range (160, 256) and multiple
                               --   of 8
        -> IO CInt             -- ^ BOTAN_FFI_SUCCESS Success, `key' initialized with DSA key
                               --   BOTAN_FFI_ERROR_NULL_POINTER  either `key' or `rng' is NULL
                               --   BOTAN_FFI_ERROR_BAD_PARAMETER unexpected value for either `pbits' or `qbits'
                               --   BOTAN_FFI_ERROR_NOT_IMPLEMENTED functionality not implemented


foreign import capi "botan/ffi.h botan_privkey_load_dsa"
    botan_privkey_load_dsa
        :: Ptr BotanPrivKey    -- ^ key
        -> BotanMP             -- ^ p
        -> BotanMP             -- ^ q
        -> BotanMP             -- ^ g
        -> BotanMP             -- ^ x
        -> IO CInt

foreign import capi "botan/ffi.h botan_pubkey_load_dsa"
    botan_pubkey_load_dsa
        :: Ptr Botan_pubkey_t -- ^ key
        -> BotanMP            -- ^ p
        -> BotanMP            -- ^ q
        -> BotanMP            -- ^ g
        -> BotanMP            -- ^ y
        -> IO CInt
