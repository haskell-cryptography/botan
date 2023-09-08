{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.ElGamal where

import           Botan.Bindings.MPI.Types
import           Botan.Bindings.PubKey.Types
import           Botan.Bindings.PrivKey.Types
import           Botan.Bindings.RNG.Types

import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_privkey_create_elgamal"
  botan_privkey_create_elgamal
    :: Ptr Botan_privkey_t -- ^ key
    -> Botan_rng_t         -- ^ rng
    -> CSize               -- ^ pbits
    -> CSize               -- ^ qbits
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pubkey_load_elgamal"
  botan_pubkey_load_elgamal
    :: Ptr Botan_pubkey_t -- ^ key
    -> Botan_mp_t         -- ^ p
    -> Botan_mp_t         -- ^ g
    -> Botan_mp_t         -- ^ y
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_load_elgamal"
  botan_privkey_load_elgamal
    :: Ptr Botan_privkey_t -- ^ key
    -> Botan_mp_t          -- ^ p
    -> Botan_mp_t          -- ^ g
    -> Botan_mp_t          -- ^ x
    -> IO CInt
