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

module Botan.Bindings.SM2 where

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



foreign import capi "botan-3/botan/ffi.h botan_pubkey_load_sm2"
  botan_pubkey_load_sm2
    :: Ptr Botan_pubkey_t -- ^ key
    -> Botan_mp_t         -- ^ public_x
    -> Botan_mp_t         -- ^ public_y
    -> ConstPtr CChar     -- ^ curve_name
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_load_sm2"
  botan_privkey_load_sm2
    :: Ptr Botan_privkey_t -- ^ key
    -> Botan_mp_t          -- ^ scalar
    -> ConstPtr CChar      -- ^ curve_name
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_sm2_compute_za"
  botan_pubkey_sm2_compute_za
    :: Ptr Word8      -- ^ out[]
    -> Ptr CSize      -- ^ out_len
    -> ConstPtr CChar -- ^ ident
    -> ConstPtr CChar -- ^ hash_algo
    -> Botan_pubkey_t -- ^ key
    -> IO CInt
