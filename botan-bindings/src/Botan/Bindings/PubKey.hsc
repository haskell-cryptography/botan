{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.PubKey
  ( module Botan.Bindings.PubKey.Types
  , module Botan.Bindings.PubKey
  ) where

import           Botan.Bindings.MPI.Types
import           Botan.Bindings.PubKey.Types
import           Botan.Bindings.RNG.Types
import           Botan.Bindings.View

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_pubkey_load"
  botan_pubkey_load
    :: Ptr Botan_pubkey_t  -- ^ key
    -> ConstPtr Word8      -- ^ bits[]
    -> CSize               -- ^ len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_export"
  botan_pubkey_export
    :: Botan_pubkey_t -- ^ key
    -> Ptr Word8      -- ^ out[]
    -> Ptr CSize      -- ^ out_len
    -> Word32         -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_view_der"
  botan_pubkey_view_der
    :: Botan_pubkey_t           -- ^ key
    -> Botan_view_ctx           -- ^ ctx
    -> FunPtr Botan_view_bin_fn -- ^ view
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_view_pem"
  botan_pubkey_view_pem
    :: Botan_pubkey_t           -- ^ key
    -> Botan_view_ctx           -- ^ ctx
    -> FunPtr Botan_view_str_fn -- ^ view
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_algo_name"
  botan_pubkey_algo_name
    :: Botan_pubkey_t -- ^ key
    -> Ptr CChar      -- ^ out[]
    -> Ptr CSize      -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_check_key"
  botan_pubkey_check_key
    :: Botan_pubkey_t -- ^ key
    -> Botan_rng_t    -- ^ rng
    -> Word32         -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_estimated_strength"
  botan_pubkey_estimated_strength
    :: Botan_pubkey_t -- ^ key
    -> Ptr CSize      -- ^ estimate
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_fingerprint"
  botan_pubkey_fingerprint
    :: Botan_pubkey_t -- ^ key
    -> ConstPtr CChar -- ^ hash
    -> Ptr Word8      -- ^ out[]
    -> Ptr CSize      -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_destroy"
  botan_pubkey_destroy
    :: Botan_pubkey_t -- ^ key
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_get_field"
  botan_pubkey_get_field
    :: Botan_mp_t     -- ^ output
    -> Botan_pubkey_t -- ^ key
    -> ConstPtr CChar -- ^ field_name
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_view_ec_public_point"
  botan_pubkey_view_ec_public_point
    :: Botan_pubkey_t           -- ^ key
    -> Botan_view_ctx           -- ^ ctx
    -> FunPtr Botan_view_bin_fn -- ^ view
    -> IO CInt
