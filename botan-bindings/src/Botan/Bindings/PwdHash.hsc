{-|
Module      : Botan.Bindings.Version
Description : PBKDF specific functions
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.PwdHash where

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_pwdhash"
  botan_pwdhash
    :: ConstPtr CChar  -- ^ algo
    -> CSize           -- ^ param1
    -> CSize           -- ^ param2
    -> CSize           -- ^ param3
    -> Ptr Word8       -- ^ out[]
    -> CSize           -- ^ out_len
    -> ConstPtr CChar  -- ^ passphrase
    -> CSize           -- ^ passphrase_len
    -> ConstPtr Word8  -- ^ salt[]
    -> CSize           -- ^ salt_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pwdhash_timed"
  botan_pwdhash_timed
    :: ConstPtr CChar  -- ^ algo
    -> Word32          -- ^ msec
    -> Ptr CSize       -- ^ param1
    -> Ptr CSize       -- ^ param2
    -> Ptr CSize       -- ^ param3
    -> Ptr Word8       -- ^ out[]
    -> CSize           -- ^ out_len
    -> ConstPtr CChar  -- ^ passphrase
    -> CSize           -- ^ passphrase_len
    -> ConstPtr Word8  -- ^ salt[]
    -> CSize           -- ^ salt_len
    -> IO CInt
