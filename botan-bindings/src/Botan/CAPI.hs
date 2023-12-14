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

module Botan.CAPI where

import Prelude

import           Botan.Bindings.RNG

import           Data.ByteString (ByteString)
import           Data.Word

#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#endif

import           Foreign.C.Types
import           Foreign.Ptr

#if !(MIN_VERSION_base (4,18,0))
type ConstPtr = Ptr
-- Or
-- newtype ConstPtr = MkConstPtr { runConstPtr :: Ptr }
#endif

foreign import capi "botan/ffi.h botan_bcrypt_generate"
  botan_bcrypt_generate
    :: Ptr Word8      -- ^ out
    -> Ptr CSize      -- ^ out_len
    -> ConstPtr CChar -- ^ password
    -> RNGPtr         -- ^ rng
    -> CSize          -- ^ work_factor
    -> Word32         -- ^ flags
    -> IO CInt

foreign import capi "botan/ffi.h botan_bcrypt_is_valid"
  botan_bcrypt_is_valid
    :: ConstPtr CChar -- ^ pass
    -> ConstPtr CChar -- ^ hash
    -> IO CInt
