{-|
Module      : Botan.Bindings.ECDH
Description : Algorithm specific key operations: ECDH
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.ECDH where

import           Botan.Bindings.MPI
import           Botan.Bindings.Prelude
import           Botan.Bindings.PubKey

foreign import capi safe "botan/ffi.h botan_pubkey_load_ecdh"
    botan_pubkey_load_ecdh
        :: Ptr BotanPubKey    -- ^ __key__
        -> BotanMP            -- ^ __public_x__
        -> BotanMP            -- ^ __public_y__
        -> ConstPtr CChar     -- ^ __curve_name__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_privkey_load_ecdh"
    botan_privkey_load_ecdh
        :: Ptr BotanPrivKey    -- ^ __key__
        -> BotanMP             -- ^ __scalar__
        -> ConstPtr CChar      -- ^ __curve_name__
        -> IO CInt
