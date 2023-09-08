{-|
Module      : Botan.Bindings.Version
Description : HOTP specific functions
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.HOTP
  ( module Botan.Bindings.HOTP.Types
  , module Botan.Bindings.HOTP
  ) where

import           Botan.Bindings.HOTP.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_hotp_init"
  botan_hotp_init
    :: Ptr Botan_hotp_t -- ^ hotp
    -> ConstPtr Word8   -- ^ key[]
    -> CSize            -- ^ key_len
    -> Ptr CChar        -- ^ hash_algo
    -> CSize            -- ^ digits
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_hotp_destroy"
  botan_hotp_destroy
    :: Botan_hotp_t -- ^ hotp
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_hotp_generate"
  botan_hotp_generate
    :: Botan_hotp_t -- ^ hotp
    -> Ptr Word32   -- ^ hotp_code
    -> Word64       -- ^ hotp_counter
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_hotp_check"
  botan_hotp_check
    :: Botan_hotp_t -- ^ hotp
    -> Ptr Word64   -- ^ next_hotp_counter
    -> Word32       -- ^ hotp_code
    -> Word64       -- ^ hotp_counter
    -> CSize        -- ^ resync_range);
    -> IO CInt
