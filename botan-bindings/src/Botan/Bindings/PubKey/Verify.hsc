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

module Botan.Bindings.PubKey.Verify
  ( module Botan.Bindings.PubKey.Verify.Types
  , module Botan.Bindings.PubKey.Verify
  ) where

import           Botan.Bindings.PubKey.Types
import           Botan.Bindings.PubKey.Verify.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_pk_op_verify_create"
  botan_pk_op_verify_create
    :: Ptr Botan_pk_op_verify_t -- ^ op
    -> Botan_pubkey_t           -- ^ key
    -> ConstPtr CChar           -- ^ hash_and_padding
    -> Word32                   -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_verify_destroy"
  botan_pk_op_verify_destroy
    :: Botan_pk_op_verify_t -- ^ op
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_verify_update"
  botan_pk_op_verify_update
    :: Botan_pk_op_verify_t -- ^ op
    -> ConstPtr Word8       -- ^ in[]
    -> CSize                -- ^ in_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_verify_finish"
  botan_pk_op_verify_finish
    :: Botan_pk_op_verify_t -- ^ op
    -> ConstPtr Word8       -- ^ sig[]
    -> CSize                -- ^ sig_len
    -> IO CInt
