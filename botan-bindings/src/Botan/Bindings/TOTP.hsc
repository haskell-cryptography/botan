{-|
Module      : Botan.Bindings.Version
Description : TOTP specific functions
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.TOTP
  ( module Botan.Bindings.TOTP.Types
  , module Botan.Bindings.TOTP
  ) where

import           Botan.Bindings.TOTP.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_totp_init"
  botan_totp_init
    :: Ptr Botan_totp_t -- ^ totp
    -> ConstPtr Word8   -- ^ key[]
    -> CSize            -- ^ key_len
    -> ConstPtr CChar   -- ^ hash_algo
    -> CSize            -- ^ digits
    -> CSize            -- ^ time_step
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_totp_destroy"
  botan_totp_destroy
    :: Botan_totp_t -- ^ totp
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_totp_generate"
  botan_totp_generate
    :: Botan_totp_t -- ^ totp
    -> Ptr Word32   -- ^ totp_code
    -> Word64       -- ^ timestamp
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_totp_check"
  botan_totp_check
    :: Botan_totp_t -- ^ totp
    -> Word32       -- ^ totp_code
    -> Word64       -- ^ timestamp
    -> CSize        -- ^ acceptable_clock_drift
    -> IO CInt
