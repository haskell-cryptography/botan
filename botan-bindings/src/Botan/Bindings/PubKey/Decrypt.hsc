{-|
Module      : Botan.Bindings.Version
Description : Public Key Decryption
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.PubKey.Decrypt
  ( module Botan.Bindings.PubKey.Decrypt.Types
  , module Botan.Bindings.PubKey.Decrypt
  ) where

import           Botan.Bindings.PrivKey.Types
import           Botan.Bindings.PubKey.Decrypt.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_pk_op_decrypt_create"
  botan_pk_op_decrypt_create
    :: Ptr Botan_pk_op_decrypt_t -- ^ op
    -> Botan_privkey_t           -- ^ key
    -> Ptr CChar                 -- ^ padding
    -> Word32                    -- ^ flags
    -> IO CInt


foreign import capi "botan-3/botan/ffi.h botan_pk_op_decrypt_destroy"
  botan_pk_op_decrypt_destroy
    :: Botan_pk_op_decrypt_t -- ^ op
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_decrypt_output_length"
  botan_pk_op_decrypt_output_length
    :: Botan_pk_op_decrypt_t -- ^ op
    -> CSize                 -- ^ ctext_len
    -> Ptr CSize             -- ^ ptext_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_decrypt"
  botan_pk_op_decrypt
    :: Botan_pk_op_decrypt_t -- ^ op
    -> Ptr Word8             -- ^ out[]
    -> Ptr CSize             -- ^ out_len
    -> ConstPtr Word8        -- ^ ciphertext
    -> CSize                 -- ^ ciphertext_len
    -> IO CInt
