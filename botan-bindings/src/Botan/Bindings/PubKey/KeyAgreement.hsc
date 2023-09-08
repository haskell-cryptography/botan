{-|
Module      : Botan.Bindings.Version
Description : Key Agreement
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.PubKey.KeyAgreement
  ( module Botan.Bindings.PubKey.KeyAgreement.Types
  , module Botan.Bindings.PubKey.KeyAgreement
  ) where

import           Botan.Bindings.PrivKey.Types
import           Botan.Bindings.PubKey.KeyAgreement.Types
import           Botan.Bindings.View

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_pk_op_key_agreement_create"
  botan_pk_op_key_agreement_create
    :: Ptr Botan_pk_op_ka_t -- ^ op
    -> Botan_privkey_t      -- ^ key
    -> ConstPtr CChar       -- ^ kdf
    -> Word32               -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_key_agreement_destroy"
  botan_pk_op_key_agreement_destroy
    :: Botan_pk_op_ka_t -- ^ op
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_key_agreement_export_public"
  botan_pk_op_key_agreement_export_public
    :: Botan_privkey_t -- ^ key
    -> Ptr Word8       -- ^ out[]
    -> Ptr CSize       -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_key_agreement_view_public"
  botan_pk_op_key_agreement_view_public
    :: Botan_privkey_t          -- ^ key
    -> Botan_view_ctx           -- ^ ctx
    -> FunPtr Botan_view_bin_fn -- ^ view
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_key_agreement_size"
  botan_pk_op_key_agreement_size
    :: Botan_pk_op_ka_t -- ^ op
    -> Ptr CSize        -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_key_agreement"
  botan_pk_op_key_agreement
    :: Botan_pk_op_ka_t -- ^ op
    -> Ptr Word8        -- ^ out[]
    -> Ptr CSize        -- ^ out_len
    -> ConstPtr Word8   -- ^ other_key[]
    -> CSize            -- ^ other_key_len
    -> ConstPtr Word8   -- ^ salt[]
    -> CSize            -- ^ salt_len
    -> IO CInt
