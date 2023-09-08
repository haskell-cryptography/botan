{-|
Module      : Botan.Bindings.Version
Description : Public Key Encryption
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.PubKey.Encrypt
  ( module Botan.Bindings.PubKey.Encrypt.Types
  , module Botan.Bindings.PubKey.Encrypt
  ) where

import           Botan.Bindings.PubKey.Types
import           Botan.Bindings.PubKey.Encrypt.Types
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



foreign import capi "botan-3/botan/ffi.h botan_pk_op_encrypt_create"
  botan_pk_op_encrypt_create
    :: Ptr Botan_pk_op_encrypt_t -- ^ op
    -> Botan_pubkey_t            -- ^ key
    -> ConstPtr CChar            -- ^ padding
    -> Word32                    -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_encrypt_destroy"
  botan_pk_op_encrypt_destroy
    :: Botan_pk_op_encrypt_t -- ^ op
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_encrypt_output_length"
  botan_pk_op_encrypt_output_length
    :: Botan_pk_op_encrypt_t -- ^ op
    -> CSize                 -- ^ ptext_len
    -> Ptr CSize             -- ^ ctext_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_encrypt"
  botan_pk_op_encrypt
    :: Botan_pk_op_encrypt_t -- ^ op
    -> Botan_rng_t           -- ^ rng
    -> Ptr Word8             -- ^ out[]
    -> Ptr CSize             -- ^ out_len
    -> Ptr Word8             -- ^ plaintext[]
    -> CSize                 -- ^ plaintext_len
    -> IO CInt
