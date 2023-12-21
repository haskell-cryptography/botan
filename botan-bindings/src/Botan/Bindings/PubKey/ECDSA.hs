{-|
Module      : Botan.Bindings.ECDSA
Description : Algorithm specific key operations: ECDSA
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.ECDSA where

import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

foreign import capi safe "botan/ffi.h botan_privkey_load_ecdsa"
    botan_privkey_load_ecdsa
        :: Ptr BotanPrivKey    -- ^ key
        -> BotanMP             -- ^ scalar
        -> ConstPtr CChar      -- ^ curve_name
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_load_ecdsa"
    botan_pubkey_load_ecdsa
        :: Ptr BotanPubKey    -- ^ key
        -> BotanMP            -- ^ public_x
        -> BotanMP            -- ^ public_y
        -> ConstPtr CChar     -- ^ curve_name
        -> IO CInt
