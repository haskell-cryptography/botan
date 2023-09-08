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

module Botan.Bindings.MAC
  ( module Botan.Bindings.MAC.Types
  , module Botan.Bindings.MAC
  ) where

import           Botan.Bindings.MAC.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_mac_init"
  botan_mac_init
    :: Ptr Botan_mac_t -- ^ mac
    -> ConstPtr CChar  -- ^ mac_name
    -> Word32          -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mac_output_length"
  botan_mac_output_length
    :: Botan_mac_t -- ^ mac
    -> Ptr CSize   -- ^ output_length
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mac_set_key"
  botan_mac_set_key
    :: Botan_mac_t     -- ^ mac
    -> ConstPtr Word8  -- ^ key
    -> CSize           -- ^ key_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mac_set_nonce"
  botan_mac_set_nonce
    :: Botan_mac_t     -- ^ mac
    -> ConstPtr Word8  -- ^ nonce
    -> CSize           -- ^ nonce_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mac_update"
  botan_mac_update
    :: Botan_mac_t     -- ^ mac
    -> ConstPtr Word8  -- ^ buf
    -> CSize           -- ^ len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mac_final"
  botan_mac_final
    :: Botan_mac_t -- ^ mac
    -> Ptr Word8   -- ^ out[]
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mac_clear"
  botan_mac_clear
    :: Botan_mac_t -- ^ mac
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mac_name"
  botan_mac_name
    :: Botan_mac_t -- ^ mac
    -> Ptr CChar   -- ^ name
    -> Ptr CSize   -- ^ name_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mac_get_keyspec"
  botan_mac_get_keyspec
    :: Botan_mac_t -- ^ mac
    -> Ptr CSize   -- ^ out_minimum_keylength
    -> Ptr CSize   -- ^ out_maximum_keylength
    -> Ptr CSize   -- ^ out_keylength_modulo
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_mac_destroy"
  botan_mac_destroy
    :: Botan_mac_t -- ^ mac
    -> IO CInt
