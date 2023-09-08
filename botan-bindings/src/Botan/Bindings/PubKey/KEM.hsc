{-|
Module      : Botan.Bindings.Version
Description : Public Key Encapsulation
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.PubKey.KEM
  ( module Botan.Bindings.PubKey.KEM.Types
  , module Botan.Bindings.PubKey.KEM
  ) where

import           Botan.Bindings.PrivKey.Types
import           Botan.Bindings.PubKey.Types
import           Botan.Bindings.PubKey.KEM.Types
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



foreign import capi "botan-3/botan/ffi.h botan_pk_op_kem_encrypt_create"
  botan_pk_op_kem_encrypt_create
    :: Ptr Botan_pk_op_kem_encrypt_t -- ^ op
    -> Botan_pubkey_t                -- ^ key
    -> ConstPtr CChar                -- ^ kdf
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_kem_encrypt_destroy"
  botan_pk_op_kem_encrypt_destroy
    :: Botan_pk_op_kem_encrypt_t -- ^ op
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_kem_encrypt_shared_key_length"
  botan_pk_op_kem_encrypt_shared_key_length
    :: Botan_pk_op_kem_encrypt_t -- ^ op
    -> CSize                     -- ^ desired_shared_key_length
    -> Ptr CSize                 -- ^ output_shared_key_length
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_kem_encrypt_encapsulated_key_length"
  botan_pk_op_kem_encrypt_encapsulated_key_length
    :: Botan_pk_op_kem_encrypt_t -- ^ op
    -> Ptr CSize                 -- ^ output_encapsulated_key_length
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_kem_encrypt_create_shared_key"
  botan_pk_op_kem_encrypt_create_shared_key
    :: Botan_pk_op_kem_encrypt_t -- ^ op
    -> Botan_rng_t               -- ^ rng
    -> ConstPtr Word8            -- ^ salt[]
    -> CSize                     -- ^ salt_len
    -> CSize                     -- ^ desired_shared_key_len
    -> Ptr Word8                 -- ^ shared_key[]
    -> Ptr CSize                 -- ^ shared_key_len
    -> Ptr Word8                 -- ^ encapsulated_key[]
    -> Ptr CSize                 -- ^ encapsulated_key_len
    -> IO CInt



foreign import capi "botan-3/botan/ffi.h botan_pk_op_kem_decrypt_create"
  botan_pk_op_kem_decrypt_create
    :: Ptr Botan_pk_op_kem_decrypt_t -- ^ op
    -> Botan_privkey_t               -- ^ key
    -> ConstPtr CChar                -- ^ kdf
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_kem_decrypt_destroy"
  botan_pk_op_kem_decrypt_destroy
    :: Botan_pk_op_kem_decrypt_t -- ^ op
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_kem_decrypt_shared_key_length"
  botan_pk_op_kem_decrypt_shared_key_length
    :: Botan_pk_op_kem_decrypt_t -- ^ op
    -> CSize                     -- ^ desired_shared_key_length
    -> Ptr CSize                 -- ^ output_shared_key_length
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_pk_op_kem_decrypt_shared_key"
  botan_pk_op_kem_decrypt_shared_key
    :: Botan_pk_op_kem_decrypt_t -- ^ op
    -> ConstPtr Word8            -- ^ salt[]
    -> CSize                     -- ^ salt_len
    -> ConstPtr Word8            -- ^ encapsulated_key[]
    -> CSize                     -- ^ encapsulated_key_len
    -> CSize                     -- ^ desired_shared_key_len
    -> Ptr Word8                 -- ^ shared_key[]
    -> Ptr CSize                 -- ^ shared_key_len
    -> IO CInt
