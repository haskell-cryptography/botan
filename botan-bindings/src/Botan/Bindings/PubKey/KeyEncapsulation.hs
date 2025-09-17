{-|
Module      : Botan.Bindings.KeyEncapsulation
Description : Key Encapsulation
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.KeyEncapsulation where

import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.RNG

-- | Opaque KEM encrypt struct
data {-# CTYPE "botan/ffi.h" "struct botan_pk_op_kem_encrypt_struct" #-} BotanPKOpKEMEncryptStruct

-- | Botan KEM encrypt object
newtype {-# CTYPE "botan/ffi.h" "botan_pk_op_kem_encrypt_t" #-} BotanPKOpKEMEncrypt
    = MkBotanPKOpKEMEncrypt { runBotanPKOpKEMEncrypt :: Ptr BotanPKOpKEMEncryptStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy a KEM encrypt object
foreign import capi safe "botan/ffi.h &botan_pk_op_kem_encrypt_destroy"
    botan_pk_op_kem_encrypt_destroy
        :: FinalizerPtr BotanPKOpKEMEncryptStruct

foreign import capi safe "botan/ffi.h botan_pk_op_kem_encrypt_create"
    botan_pk_op_kem_encrypt_create
        :: Ptr BotanPKOpKEMEncrypt       -- ^ __op__
        -> BotanPubKey                   -- ^ __key__
        -> ConstPtr CChar                -- ^ __kdf__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_kem_encrypt_shared_key_length"
    botan_pk_op_kem_encrypt_shared_key_length
        :: BotanPKOpKEMEncrypt       -- ^ __op__
        -> CSize                     -- ^ __desired_shared_key_length__
        -> Ptr CSize                 -- ^ __output_shared_key_length__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_kem_encrypt_encapsulated_key_length"
    botan_pk_op_kem_encrypt_encapsulated_key_length
        :: BotanPKOpKEMEncrypt       -- ^ __op__
        -> Ptr CSize                 -- ^ __output_encapsulated_key_length__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_kem_encrypt_create_shared_key"
    botan_pk_op_kem_encrypt_create_shared_key
        :: BotanPKOpKEMEncrypt       -- ^ __op__
        -> BotanRNG                  -- ^ __rng__
        -> ConstPtr Word8            -- ^ __salt[]__
        -> CSize                     -- ^ __salt_len__
        -> CSize                     -- ^ __desired_shared_key_len__
        -> Ptr Word8                 -- ^ __shared_key[]__
        -> Ptr CSize                 -- ^ __shared_key_len__
        -> Ptr Word8                 -- ^ __encapsulated_key[]__
        -> Ptr CSize                 -- ^ __encapsulated_key_len__
        -> IO CInt

-- | Opaque KEM decrypt struct
data {-# CTYPE "botan/ffi.h" "struct botan_pk_op_kem_decrypt_struct" #-} BotanPKOpKEMDecryptStruct

-- | Botan KEM decrypt object
newtype {-# CTYPE "botan/ffi.h" "botan_pk_op_kem_decrypt_t" #-} BotanPKOpKEMDecrypt
    = MkBotanPKOpKEMDecrypt { runBotanPKOpKEMDecrypt :: Ptr BotanPKOpKEMDecryptStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy a KEM decrypt object
foreign import capi safe "botan/ffi.h &botan_pk_op_kem_decrypt_destroy"
    botan_pk_op_kem_decrypt_destroy
        :: FinalizerPtr BotanPKOpKEMDecryptStruct

foreign import capi safe "botan/ffi.h botan_pk_op_kem_decrypt_create"
    botan_pk_op_kem_decrypt_create
        :: Ptr BotanPKOpKEMDecrypt       -- ^ __op__
        -> BotanPrivKey                  -- ^ __key__
        -> ConstPtr CChar                -- ^ __kdf__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_kem_decrypt_shared_key_length"
    botan_pk_op_kem_decrypt_shared_key_length
        :: BotanPKOpKEMDecrypt       -- ^ __op__
        -> CSize                     -- ^ __desired_shared_key_length__
        -> Ptr CSize                 -- ^ __output_shared_key_length__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_kem_decrypt_shared_key"
    botan_pk_op_kem_decrypt_shared_key
        :: BotanPKOpKEMDecrypt       -- ^ __op__
        -> ConstPtr Word8            -- ^ __salt[]__
        -> CSize                     -- ^ __salt_len__
        -> ConstPtr Word8            -- ^ __encapsulated_key[]__
        -> CSize                     -- ^ __encapsulated_key_len__
        -> CSize                     -- ^ __desired_shared_key_len__
        -> Ptr Word8                 -- ^ __shared_key[]__
        -> Ptr CSize                 -- ^ __shared_key_len__
        -> IO CInt
