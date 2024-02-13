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
        :: Ptr BotanPubKey    -- ^ __key__
        -> BotanMP            -- ^ __public_x__
        -> BotanMP            -- ^ __public_y__
        -> ConstPtr CChar     -- ^ __curve_name__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_privkey_load_sm2"
    botan_privkey_load_sm2
        :: Ptr BotanPrivKey    -- ^ __key__
        -> BotanMP             -- ^ __scalar__
        -> ConstPtr CChar      -- ^ __curve_name__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_sm2_compute_za"
    botan_pubkey_sm2_compute_za
        :: Ptr Word8      -- ^ __out[]__
        -> Ptr CSize      -- ^ __out_len__
        -> ConstPtr CChar -- ^ __ident__
        -> ConstPtr CChar -- ^ __hash_algo__
        -> BotanPubKey    -- ^ __key__
        -> IO CInt
