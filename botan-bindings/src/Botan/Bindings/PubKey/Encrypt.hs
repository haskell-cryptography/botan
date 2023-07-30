{-|
Module      : Botan.Bindings.Encrypt
Description : Public Key Encryption
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.Encrypt where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.Random

{-
Public Key Encryption
-}

{-| 
@typedef struct botan_pk_op_encrypt_struct* botan_pk_op_encrypt_t;@
-}

data EncryptStruct
type EncryptPtr = Ptr EncryptStruct

type EncryptFlags = Word32

pattern BOTAN_PUBKEY_ENCRYPT_FLAGS_NONE = 0 :: EncryptFlags -- NOTE: NOT ACTUAL FLAG

{-|
@BOTAN_PUBLIC_API(2,0) int botan_pk_op_encrypt_create(botan_pk_op_encrypt_t* op,
                                         botan_pubkey_t key,
                                         const char* padding,
                                         uint32_t flags);@
-}
foreign import ccall unsafe botan_pk_op_encrypt_create :: Ptr EncryptPtr -> PubKeyPtr -> CString -> EncryptFlags -> IO BotanErrorCode

{-|
- \@return 0 if success, error if invalid object handle

@BOTAN_PUBLIC_API(2,0) int botan_pk_op_encrypt_destroy(botan_pk_op_encrypt_t op);@
-}
foreign import ccall unsafe "&botan_pk_op_encrypt_destroy" botan_pk_op_encrypt_destroy :: FinalizerPtr EncryptStruct

{-|
@BOTAN_PUBLIC_API(2,8) int botan_pk_op_encrypt_output_length(botan_pk_op_encrypt_t op,
                                                            size_t ptext_len,
                                                            size_t* ctext_len);@
-}
foreign import ccall unsafe botan_pk_op_encrypt_output_length :: EncryptPtr -> CSize -> Ptr CSize -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,0) int botan_pk_op_encrypt(botan_pk_op_encrypt_t op,
                                              botan_rng_t rng,
                                              uint8_t out[],
                                              size_t* out_len,
                                              const uint8_t plaintext[],
                                              size_t plaintext_len);@
-}
foreign import ccall unsafe botan_pk_op_encrypt
    :: EncryptPtr
    -> RandomPtr
    -> Ptr Word8    -- Out
    -> Ptr CSize    -- Out len
    -> Ptr Word8    -- Plaintext
    -> CSize        -- Plaintext len
    -> IO BotanErrorCode
