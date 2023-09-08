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
           , CPP
           , PatternSynonyms #-}

module Botan.Bindings.PubKey.Sign
  ( module Botan.Bindings.PubKey.Sign.Types
  , module Botan.Bindings.PubKey.Sign
  ) where

import           Botan.Bindings.PrivKey.Types
import           Botan.Bindings.PubKey.Sign.Types
import           Botan.Bindings.RNG.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



pattern BOTAN_PUBKEY_DER_FORMAT_SIGNATURE :: (Eq a, Num a) => a
pattern BOTAN_PUBKEY_DER_FORMAT_SIGNATURE = #const BOTAN_PUBKEY_DER_FORMAT_SIGNATURE

foreign import capi "botan-3/botan/ffi.h botan_pk_op_sign_create"
  botan_pk_op_sign_create
    :: Ptr Botan_pk_op_sign_t -- ^ op
    -> Botan_privkey_t        -- ^ key
    -> ConstPtr CChar         -- ^ hash_and_padding
    -> Word32                 -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_sign_destroy"
  botan_pk_op_sign_destroy
    :: Botan_pk_op_sign_t -- ^ op
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_sign_output_length"
  botan_pk_op_sign_output_length
    :: Botan_pk_op_sign_t -- ^ op
    -> Ptr CSize          -- ^ olen
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_sign_update"
  botan_pk_op_sign_update
    :: Botan_pk_op_sign_t -- ^ op
    -> ConstPtr Word8     -- ^ in[]
    -> CSize              -- ^ in_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_sign_finish"
  botan_pk_op_sign_finish
    :: Botan_pk_op_sign_t -- ^ op
    -> Botan_rng_t        -- ^ rng
    -> Ptr Word8          -- ^ sig[]
    -> Ptr CSize          -- ^ sig_len
    -> IO CInt
