{-|
Module      : Botan.Bindings.Version
Description : View Functions
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CPP #-}

module Botan.Bindings.View where

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



type Botan_view_ctx = Ptr ()

type Botan_view_bin_fn = Botan_view_ctx -- ^ view_ctx
                      -> ConstPtr Word8 -- ^ data
                      -> CSize          -- ^ len
                      -> CInt

type Botan_view_str_fn = Botan_view_ctx  -- ^ view_ctx
                      -> ConstPtr CChar  -- ^ str
                      -> CSize           -- ^ len
                      -> CInt
