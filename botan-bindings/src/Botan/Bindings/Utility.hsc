{-|
Module      : Botan.Bindings.Utility
Description : Utility functions
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.Utility where

import Data.Void
import Botan.Bindings.Prelude

#include <botan/ffi.h>

-- | Returns 0 if x[0..len] == y[0..len], -1 otherwise.
foreign import capi safe "botan/ffi.h botan_constant_time_compare"
    botan_constant_time_compare
        :: ConstPtr Word8  -- ^ x
        -> ConstPtr Word8  -- ^ y
        -> CSize           -- ^ len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_scrub_mem"
    botan_scrub_mem
        :: Ptr a -- ^ mem
        -> CSize  -- ^ bytes
        -> IO CInt

-- pattern BOTAN_FFI_HEX_UPPER_CASE    -- ^ NOTE: Not an actual flag
--     ,   BOTAN_FFI_HEX_LOWER_CASE
--     ::  (Eq a, Num a) => a

-- pattern BOTAN_FFI_HEX_UPPER_CASE = 0
-- pattern BOTAN_FFI_HEX_LOWER_CASE = #const BOTAN_FFI_HEX_LOWER_CASE

foreign import capi safe "botan/ffi.h botan_hex_encode"
    botan_hex_encode
        :: ConstPtr Word8  -- ^ x
        -> CSize           -- ^ len
        -> Ptr CChar       -- ^ y
        -> Word32          -- ^ flags
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_hex_decode"
    botan_hex_decode
        :: ConstPtr CChar -- ^ hex_str
        -> CSize          -- ^ in_len
        -> Ptr Word8      -- ^ out
        -> Ptr CSize      -- ^ out_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_base64_encode"
    botan_base64_encode
        :: ConstPtr Word8  -- ^ hex_str
        -> CSize           -- ^ in_len
        -> Ptr CChar       -- ^ out
        -> Ptr CSize       -- ^ out_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_base64_decode"
    botan_base64_decode
        :: ConstPtr CChar -- ^ base64_str
        -> CSize          -- ^ in_len
        -> Ptr Word8      -- ^ out
        -> Ptr CSize      -- ^ out_len
        -> IO CInt
