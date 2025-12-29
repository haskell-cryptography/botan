{-|
Module      : Botan.Bindings.RSA
Description : Algorithm specific key operations: RSA
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.RSA (
    botan_privkey_load_rsa
  , botan_privkey_load_rsa_pkcs1
  , botan_privkey_rsa_get_privkey
  , botan_pubkey_load_rsa
  ) where

import           Botan.Bindings.ConstPtr
import           Botan.Bindings.MPI
import           Botan.Bindings.PubKey
import           Data.Word
import           Foreign.C.Types
import           Foreign.Ptr

foreign import capi safe "botan/ffi.h botan_privkey_load_rsa"
    botan_privkey_load_rsa
        :: Ptr BotanPrivKey    -- ^ __key__
        -> BotanMP             -- ^ __p__
        -> BotanMP             -- ^ __q__
        -> BotanMP             -- ^ __e__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_privkey_load_rsa_pkcs1"
    botan_privkey_load_rsa_pkcs1
        :: Ptr BotanPrivKey    -- ^ __key__
        -> ConstPtr Word8      -- ^ __bits[]__
        -> CSize               -- ^ __len__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_privkey_rsa_get_privkey"
    botan_privkey_rsa_get_privkey
        :: BotanPrivKey    -- ^ __rsa_key__
        -> Ptr Word8       -- ^ __out[]__
        -> Ptr CSize       -- ^ __out_len__
        -> Word32          -- ^ __flags__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_load_rsa"
    botan_pubkey_load_rsa
        :: Ptr BotanPubKey    -- ^ __key__
        -> BotanMP            -- ^ __n__
        -> BotanMP            -- ^ __e__
        -> IO CInt
