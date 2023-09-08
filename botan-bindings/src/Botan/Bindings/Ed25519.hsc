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

module Botan.Bindings.Ed25519 where

import           Botan.Bindings.PubKey.Types
import           Botan.Bindings.PrivKey.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_privkey_load_ed25519"
  botan_privkey_load_ed25519
    :: Ptr Botan_privkey_t -- ^ key
    -> ConstPtr Word8      -- ^ privkey[32]
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_load_ed25519"
  botan_pubkey_load_ed25519
    :: Ptr Botan_pubkey_t -- ^ key
    -> ConstPtr Word8     -- ^ pubkey[32]
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_ed25519_get_privkey"
  botan_privkey_ed25519_get_privkey
    :: Botan_privkey_t -- ^ key
    -> Ptr Word8       -- ^ output[64]
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_ed25519_get_pubkey"
  botan_pubkey_ed25519_get_pubkey
    :: Botan_pubkey_t -- ^ key
    -> Ptr Word8      -- ^ pubkey[32]
    -> IO CInt
