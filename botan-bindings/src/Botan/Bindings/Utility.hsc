{-|
Module      : Botan.Bindings.Utility
Description : Utility functions
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.Utility where

import Botan.Bindings.Prelude

#include <botan/ffi.h>

-- | Returns 0 if x[0..len] == y[0..len], -1 otherwise.
foreign import capi safe "botan/ffi.h botan_constant_time_compare"
    botan_constant_time_compare
        :: ConstPtr Word8  -- ^ __x__
        -> ConstPtr Word8  -- ^ __y__
        -> CSize           -- ^ __len__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_scrub_mem"
    botan_scrub_mem
        :: Ptr a -- ^ __mem__
        -> CSize  -- ^ __bytes__
        -> IO CInt

pattern BOTAN_FFI_HEX_UPPER_CASE    -- ^ NOTE: Not an actual flag
    ,   BOTAN_FFI_HEX_LOWER_CASE
    ::  (Eq a, Num a) => a

pattern BOTAN_FFI_HEX_UPPER_CASE = 0
pattern BOTAN_FFI_HEX_LOWER_CASE = #const BOTAN_FFI_HEX_LOWER_CASE

foreign import capi safe "botan/ffi.h botan_hex_encode"
    botan_hex_encode
        :: ConstPtr Word8  -- ^ __x__
        -> CSize           -- ^ __len__
        -> Ptr CChar       -- ^ __y__
        -> Word32          -- ^ __flags__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_hex_decode"
    botan_hex_decode
        :: ConstPtr CChar -- ^ __hex_str__
        -> CSize          -- ^ __in_len__
        -> Ptr Word8      -- ^ __out__
        -> Ptr CSize      -- ^ __out_len__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_base64_encode"
    botan_base64_encode
        :: ConstPtr Word8  -- ^ __x__
        -> CSize           -- ^ __len__
        -> Ptr CChar       -- ^ __out__
        -> Ptr CSize       -- ^ __out_len__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_base64_decode"
    botan_base64_decode
        :: ConstPtr CChar -- ^ __base64_str__
        -> CSize          -- ^ __in_len__
        -> Ptr Word8      -- ^ __out__
        -> Ptr CSize      -- ^ __out_len__
        -> IO CInt
