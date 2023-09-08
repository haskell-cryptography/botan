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

module Botan.Bindings.RNG where

import           Botan.Bindings.RNG.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_rng_init"
  botan_rng_init
    :: Ptr Botan_rng_t -- ^ rng
    -> ConstPtr CChar  -- ^ rng_type
    -> IO CInt



type Get_cb = Ptr ()     -- ^ context
           -> Ptr Word8  -- ^ out
           -> CSize      -- ^ out_len
           -> IO CInt

type Add_entropy_cb = Ptr ()          -- ^ context
                   -> ConstPtr Word8  -- ^ input[]
                   -> CSize           -- ^ length
                   -> IO CInt

type Destroy_cb = Ptr () -- ^ context
               -> IO ()

foreign import capi "botan-3/botan/ffi.h botan_rng_init_custom"
  botan_rng_init_custom
    :: Ptr Botan_rng_t       -- ^ rng_out
    -> ConstPtr CChar        -- ^ rng_name
    -> Ptr ()                -- ^ context
    -> FunPtr Get_cb         -- ^ get_cb
    -> FunPtr Add_entropy_cb -- ^ add_entropy_cb
    -> FunPtr Destroy_cb     -- ^ destroy_cb
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_rng_get"
  botan_rng_get
    :: Botan_rng_t -- ^ rng
    -> Ptr Word8   -- ^ out
    -> CSize       -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_system_rng_get"
  botan_system_rng_get
    :: Ptr Word8  -- ^ out
    -> CSize      -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_rng_reseed"
  botan_rng_reseed
    :: Botan_rng_t -- ^ rng
    -> CSize       -- ^ bits
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_rng_reseed_from_rng"
  botan_rng_reseed_from_rng
    :: Botan_rng_t -- ^ rng
    -> Botan_rng_t -- ^ source_rng
    -> CSize       -- ^ bits
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_rng_add_entropy"
  botan_rng_add_entropy
    :: Botan_rng_t     -- ^ rng
    -> ConstPtr Word8  -- ^ entropy
    -> CSize           -- ^ entropy_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_rng_destroy"
  botan_rng_destroy
    :: Botan_rng_t -- ^ rng
    -> IO CInt
