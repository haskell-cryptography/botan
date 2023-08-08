{-|
Module      : Botan.Bindings.KeyEncapsulation
Description : Key Encapsulation
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.KeyEncapsulation where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.RNG

{-
Key Encapsulation
-}

{-|
@typedef struct botan_pk_op_kem_encrypt_struct* botan_pk_op_kem_encrypt_t;@
-}
data KEMEncryptStruct
type KEMEncryptPtr = Ptr KEMEncryptStruct
{-|
@
BOTAN_PUBLIC_API(3,0) int botan_pk_op_kem_encrypt_create(
   botan_pk_op_kem_encrypt_t* op,
   botan_pubkey_t key,
   const char* kdf);@
-}
foreign import ccall unsafe botan_pk_op_kem_encrypt_create :: Ptr KEMEncryptPtr -> PubKeyPtr -> CString -> IO BotanErrorCode

{-|
- \@return 0 if success, error if invalid object handle

@BOTAN_PUBLIC_API(3,0) int botan_pk_op_kem_encrypt_destroy(botan_pk_op_kem_encrypt_t op);@
-}
foreign import ccall unsafe "&botan_pk_op_kem_encrypt_destroy" botan_pk_op_kem_encrypt_destroy :: FinalizerPtr KEMEncryptStruct

{-|
@BOTAN_PUBLIC_API(3,0)
int botan_pk_op_kem_encrypt_shared_key_length(
   botan_pk_op_kem_encrypt_t op,
   size_t desired_shared_key_length,
   size_t* output_shared_key_length);@
-}
foreign import ccall unsafe botan_pk_op_kem_encrypt_shared_key_length
    :: KEMEncryptPtr
    -> CSize
    -> Ptr CSize
    -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(3,0)
int botan_pk_op_kem_encrypt_encapsulated_key_length(
   botan_pk_op_kem_encrypt_t op,
   size_t* output_encapsulated_key_length);@
-}
foreign import ccall unsafe botan_pk_op_kem_encrypt_encapsulated_key_length
    :: KEMEncryptPtr
    -> Ptr CSize
    -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(3,0) int botan_pk_op_kem_encrypt_create_shared_key(
   botan_pk_op_kem_encrypt_t op,
   botan_rng_t rng,
   const uint8_t salt[],
   size_t salt_len,
   size_t desired_shared_key_len,
   uint8_t shared_key[],
   size_t* shared_key_len,
   uint8_t encapsulated_key[],
   size_t* encapsulated_key_len);@
-}
foreign import ccall unsafe botan_pk_op_kem_encrypt_create_shared_key
    :: KEMEncryptPtr
    -> RNGPtr
    -> Ptr Word8    -- Salt
    -> CSize        -- Salt len
    -> CSize        -- Desired shared key len
    -> Ptr Word8    -- Shared key (output)
    -> Ptr CSize    -- Shared key len
    -> Ptr Word8    -- Encapsulated key (output)
    -> Ptr CSize    -- Encapsulated key len
    -> IO BotanErrorCode

{-|
@typedef struct botan_pk_op_kem_decrypt_struct* botan_pk_op_kem_decrypt_t;@
-}
data KEMDecryptStruct
type KEMDecryptPtr = Ptr KEMDecryptStruct

{-|
@BOTAN_PUBLIC_API(3,0) int botan_pk_op_kem_decrypt_create(
   botan_pk_op_kem_decrypt_t* op,
   botan_privkey_t key,
   const char* kdf);@
-}
foreign import ccall unsafe botan_pk_op_kem_decrypt_create :: Ptr KEMDecryptPtr -> PrivKeyPtr -> CString -> IO BotanErrorCode

{-|
- \@return 0 if success, error if invalid object handle

@BOTAN_PUBLIC_API(3,0) int botan_pk_op_kem_decrypt_destroy(botan_pk_op_kem_decrypt_t op);@
-}

foreign import ccall unsafe "&botan_pk_op_kem_decrypt_destroy" botan_pk_op_kem_decrypt_destroy :: FinalizerPtr KEMDecryptStruct

{-|
@BOTAN_PUBLIC_API(3,0)
int botan_pk_op_kem_decrypt_shared_key_length(
   botan_pk_op_kem_decrypt_t op,
   size_t desired_shared_key_length,
   size_t* output_shared_key_length);@
-}
foreign import ccall unsafe botan_pk_op_kem_decrypt_shared_key_length
    :: KEMDecryptPtr
    -> CSize
    -> Ptr CSize
    -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(3,0) int botan_pk_op_kem_decrypt_shared_key(
   botan_pk_op_kem_decrypt_t op,
   const uint8_t salt[],
   size_t salt_len,
   const uint8_t encapsulated_key[],
   size_t encapsulated_key_len,
   size_t desired_shared_key_len,
   uint8_t shared_key[],
   size_t* shared_key_len);@
-}
foreign import ccall unsafe botan_pk_op_kem_decrypt_shared_key
    :: KEMDecryptPtr
    -> Ptr Word8    -- Salt
    -> CSize        -- Salt len
    -> Ptr Word8    -- Encapsulated key
    -> CSize        -- Encapsulated key len
    -> CSize        -- Desired shared key len
    -> Ptr Word8    -- Shared key (output)
    -> Ptr CSize    -- Shared key len
    -> IO BotanErrorCode
