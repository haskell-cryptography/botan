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

module Botan.Bindings.KDF where

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_kdf"
  botan_kdf
    :: ConstPtr CChar  -- ^ kdf_algo,
    -> Ptr Word8       -- ^ out[]
    -> CSize           -- ^ out_len
    -> ConstPtr Word8  -- ^ secret[]
    -> CSize           -- ^ secret_len
    -> ConstPtr Word8  -- ^ salt[]
    -> CSize           -- ^ salt_len
    -> ConstPtr Word8  -- ^ label[]
    -> CSize           -- ^ label_len
    -> IO CInt

