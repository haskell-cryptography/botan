{-|
Module      : Botan.Bindings.Version
Description : Key wrapping as per RFC 3394
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.KeyWrap where

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_nist_kw_enc"
  botan_nist_kw_enc
    :: ConstPtr CChar -- ^ cipher_algo
    -> CInt           -- ^ padded
    -> ConstPtr Word8 -- ^ key[]
    -> CSize          -- ^ key_len
    -> ConstPtr Word8 -- ^ kek[]
    -> CSize          -- ^ kek_len
    -> Ptr Word8      -- ^ wrapped_key[]
    -> Ptr CSize      -- ^ wrapped_key_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_nist_kw_dec"
  botan_nist_kw_dec
    :: ConstPtr CChar -- ^ cipher_algo
    -> CInt           -- ^ padded
    -> ConstPtr Word8 -- ^ wrapped_key[]
    -> CSize          -- ^ wrapped_key_len
    -> ConstPtr Word8 -- ^ kek[]
    -> CSize          -- ^ kek_len
    -> Ptr Word8      -- ^ key[]
    -> Ptr CSize      -- ^ key_len
    -> IO CInt
