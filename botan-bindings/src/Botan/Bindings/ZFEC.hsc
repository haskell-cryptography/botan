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

module Botan.Bindings.ZFEC where

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_zfec_encode"
  botan_zfec_encode
    :: CSize           -- ^ K
    -> CSize           -- ^ N
    -> ConstPtr Word8  -- ^ input
    -> CSize           -- ^ size
    -> Ptr (Ptr Word8) -- ^ outputs
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_zfec_decode"
  botan_zfec_decode
    :: CSize                     -- ^ K
    -> CSize                     -- ^ N
    -> ConstPtr CSize            -- ^ indexes
    -> ConstPtr (ConstPtr Word8) -- ^ inputs
    -> CSize                     -- ^ shareSize
    -> Ptr (Ptr Word8)           -- ^ outputs
    -> IO CInt
