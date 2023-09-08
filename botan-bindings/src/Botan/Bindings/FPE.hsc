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
           , CPP
           , PatternSynonyms #-}

module Botan.Bindings.FPE
  ( module Botan.Bindings.FPE.Types
  , module Botan.Bindings.FPE
  ) where

import           Botan.Bindings.FPE.Types
import           Botan.Bindings.MPI.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



pattern BOTAN_FPE_FLAG_FE1_COMPAT_MODE :: (Eq a, Num a) => a
pattern BOTAN_FPE_FLAG_FE1_COMPAT_MODE = #const BOTAN_FPE_FLAG_FE1_COMPAT_MODE

foreign import capi "botan-3/botan/ffi.h botan_fpe_fe1_init"
  botan_fpe_fe1_init
    :: Ptr Botan_fpe_t -- ^ fpe
    -> Botan_mp_t      -- ^ n
    -> ConstPtr Word8  -- ^ key[]
    -> CSize           -- ^ key_len
    -> CSize           -- ^ rounds
    -> Word32          -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_fpe_destroy"
  botan_fpe_destroy
    :: Botan_fpe_t -- ^ fpe
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_fpe_encrypt"
  botan_fpe_encrypt
    :: Botan_fpe_t    -- ^ fpe
    -> Botan_mp_t     -- ^ x
    -> ConstPtr Word8 -- ^ tweak[]
    -> CSize          -- ^ tweak_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_fpe_decrypt"
  botan_fpe_decrypt
    :: Botan_fpe_t    -- ^ fpe
    -> Botan_mp_t     -- ^ x
    -> ConstPtr Word8 -- ^ tweak[]
    -> CSize          -- ^ tweak_len
    -> IO CInt
