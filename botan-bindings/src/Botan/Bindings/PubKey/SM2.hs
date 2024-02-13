{-|
Module      : Botan.Bindings.PubKey.SM2
Description : Algorithm specific key operations: SM2
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}


{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.SM2 where

import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

foreign import capi safe "botan/ffi.h botan_pubkey_load_sm2"
    botan_pubkey_load_sm2
        :: Ptr BotanPubKey    -- ^ @key@
        -> BotanMP            -- ^ @public_x@
        -> BotanMP            -- ^ @public_y@
        -> ConstPtr CChar     -- ^ @curve_name@
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_privkey_load_sm2"
    botan_privkey_load_sm2
        :: Ptr BotanPrivKey    -- ^ @key@
        -> BotanMP             -- ^ @scalar@
        -> ConstPtr CChar      -- ^ @curve_name@
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_sm2_compute_za"
    botan_pubkey_sm2_compute_za
        :: Ptr Word8      -- ^ @out[]@
        -> Ptr CSize      -- ^ @out_len@
        -> ConstPtr CChar -- ^ @ident@
        -> ConstPtr CChar -- ^ @hash_algo@
        -> BotanPubKey    -- ^ @key@
        -> IO CInt
