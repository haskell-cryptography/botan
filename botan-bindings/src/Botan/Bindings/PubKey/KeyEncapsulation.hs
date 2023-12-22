{-|
Module      : Botan.Bindings.KeyEncapsulation
Description : Key Encapsulation
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
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
        :: Ptr BotanPKOpKEMEncrypt       -- ^ op
        -> BotanPubKey                   -- ^ key
        -> ConstPtr CChar                -- ^ kdf
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_kem_encrypt_shared_key_length"
    botan_pk_op_kem_encrypt_shared_key_length
        :: BotanPKOpKEMEncrypt       -- ^ op
        -> CSize                     -- ^ desired_shared_key_length
        -> Ptr CSize                 -- ^ output_shared_key_length
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_kem_encrypt_encapsulated_key_length"
    botan_pk_op_kem_encrypt_encapsulated_key_length
        :: BotanPKOpKEMEncrypt       -- ^ op
        -> Ptr CSize                 -- ^ output_encapsulated_key_length
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_kem_encrypt_create_shared_key"
    botan_pk_op_kem_encrypt_create_shared_key
        :: BotanPKOpKEMEncrypt       -- ^ op
        -> BotanRNG                  -- ^ rng
        -> ConstPtr Word8            -- ^ salt[]
        -> CSize                     -- ^ salt_len
        -> CSize                     -- ^ desired_shared_key_len
        -> Ptr Word8                 -- ^ shared_key[]
        -> Ptr CSize                 -- ^ shared_key_len
        -> Ptr Word8                 -- ^ encapsulated_key[]
        -> Ptr CSize                 -- ^ encapsulated_key_len
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
        :: Ptr BotanPKOpKEMDecrypt       -- ^ op
        -> BotanPrivKey                  -- ^ key
        -> ConstPtr CChar                -- ^ kdf
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_kem_decrypt_shared_key_length"
    botan_pk_op_kem_decrypt_shared_key_length
        :: BotanPKOpKEMDecrypt       -- ^ op
        -> CSize                     -- ^ desired_shared_key_length
        -> Ptr CSize                 -- ^ output_shared_key_length
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_kem_decrypt_shared_key"
    botan_pk_op_kem_decrypt_shared_key
        :: BotanPKOpKEMDecrypt       -- ^ op
        -> ConstPtr Word8            -- ^ salt[]
        -> CSize                     -- ^ salt_len
        -> ConstPtr Word8            -- ^ encapsulated_key[]
        -> CSize                     -- ^ encapsulated_key_len
        -> CSize                     -- ^ desired_shared_key_len
        -> Ptr Word8                 -- ^ shared_key[]
        -> Ptr CSize                 -- ^ shared_key_len
        -> IO CInt
