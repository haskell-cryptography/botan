{-|
Module      : Botan.Bindings.Version
Description : RSA specific functions
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.RSA where

import           Botan.Bindings.MPI.Types
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



foreign import capi "botan-3/botan/ffi.h botan_privkey_load_rsa"
  botan_privkey_load_rsa
    :: Ptr Botan_privkey_t -- ^ key
    -> Botan_mp_t          -- ^ p
    -> Botan_mp_t          -- ^ q
    -> Botan_mp_t          -- ^ e
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_load_rsa_pkcs1"
  botan_privkey_load_rsa_pkcs1
    :: Ptr Botan_privkey_t -- ^ key
    -> ConstPtr Word8      -- ^ bits[]
    -> CSize               -- ^ len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_rsa_get_privkey"
  botan_privkey_rsa_get_privkey
    :: Botan_privkey_t -- ^ rsa_key
    -> Ptr Word8       -- ^ out[]
    -> Ptr CSize       -- ^ out_len
    -> Word32          -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_load_rsa"
  botan_pubkey_load_rsa
    :: Ptr Botan_pubkey_t -- ^ key
    -> Botan_mp_t         -- ^ n
    -> Botan_mp_t         -- ^ e
    -> IO CInt
