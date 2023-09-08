{-|
Module      : Botan.Bindings.Version
Description : Signature Scheme Utility Functions
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.PKCS where

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_pkcs_hash_id"
  botan_pkcs_hash_id
    :: ConstPtr CChar -- ^ hash_name
    -> Ptr Word8      -- ^ pkcs_id[]
    -> Ptr CSize      -- ^ pkcs_id_len
    -> IO CInt
