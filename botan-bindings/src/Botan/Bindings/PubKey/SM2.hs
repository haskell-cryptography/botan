{-|
Module      : Botan.Bindings.PubKey.SM2
Description : Algorithm specific key operations: SM2
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}


{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.SM2 (
    botan_pubkey_load_sm2
  , botan_privkey_load_sm2
  , botan_pubkey_sm2_compute_za
  ) where

import           Botan.Bindings.ConstPtr
import           Botan.Bindings.MPI
import           Botan.Bindings.PubKey
import           Data.Word
import           Foreign.C.Types
import           Foreign.Ptr

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
