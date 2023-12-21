module Botan.Bindings.PubKey.ECDSA where

{-# LANGUAGE CApiFFI #-}

import Botan.Bindings.Error
import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey


foreign import capi "botan/ffi.h botan_privkey_load_ecdsa"
    botan_privkey_load_ecdsa
        :: Ptr BotanPrivKey    -- ^ key
        -> BotanMP             -- ^ scalar
        -> ConstPtr CChar      -- ^ curve_name
        -> IO CInt

foreign import capi "botan/ffi.h botan_pubkey_load_ecdsa"
    botan_pubkey_load_ecdsa
        :: Ptr BotanPubKey    -- ^ key
        -> BotanMP            -- ^ public_x
        -> BotanMP            -- ^ public_y
        -> ConstPtr CChar     -- ^ curve_name
        -> IO CInt
