{-|
Module      : Botan.Bindings.Version
Description : Utility Functions
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP
           , PatternSynonyms #-}

module Botan.Bindings.Utility where

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_constant_time_compare"
  botan_constant_time_compare
    :: ConstPtr Word8  -- ^ x
    -> ConstPtr Word8  -- ^ y
    -> CSize           -- ^ len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_scrub_mem"
  botan_scrub_mem
    :: Ptr () -- ^ mem
    -> CSize  -- ^ bytes
    -> IO CInt

pattern BOTAN_FFI_HEX_LOWER_CASE :: (Eq a, Num a) => a
pattern BOTAN_FFI_HEX_LOWER_CASE = #const BOTAN_FFI_HEX_LOWER_CASE

foreign import capi "botan-3/botan/ffi.h botan_hex_encode"
  botan_hex_encode
    :: ConstPtr Word8  -- ^ x
    -> CSize           -- ^ len
    -> Ptr CChar       -- ^ y
    -> Word32          -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_hex_decode"
  botan_hex_decode
    :: ConstPtr CChar -- ^ hex_str
    -> CSize          -- ^ in_len
    -> Ptr Word8      -- ^ out
    -> Ptr CSize      -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_base64_encode"
  botan_base64_encode
    :: ConstPtr Word8  -- ^ hex_str
    -> CSize           -- ^ in_len
    -> Ptr CChar       -- ^ out
    -> Ptr CSize       -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_base64_decode"
  botan_base64_decode
    :: ConstPtr CChar -- ^ base64_str
    -> CSize          -- ^ in_len
    -> Ptr Word8      -- ^ out
    -> Ptr CSize      -- ^ out_len
    -> IO CInt
