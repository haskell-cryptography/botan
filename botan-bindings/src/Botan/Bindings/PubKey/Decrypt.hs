{-|
Module      : Botan.Bindings.Decrypt
Description : Public Key Decryption
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.Decrypt where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.RNG

{-
Public Key Decryption
-}

{-|
@typedef struct botan_pk_op_decrypt_struct* botan_pk_op_decrypt_t;@
-}
data DecryptStruct
type DecryptPtr = Ptr DecryptStruct

type DecryptFlags = Word32

pattern BOTAN_PUBKEY_DECRYPT_FLAGS_NONE = 0 :: DecryptFlags -- NOTE: NOT ACTUAL FLAG

{-|
@BOTAN_PUBLIC_API(2,0) int botan_pk_op_decrypt_create(botan_pk_op_decrypt_t* op,
                                         botan_privkey_t key,
                                         const char* padding,
                                         uint32_t flags);@
-}
foreign import ccall unsafe botan_pk_op_decrypt_create :: Ptr DecryptPtr -> PrivKeyPtr -> CString -> DecryptFlags -> IO BotanErrorCode

{-|
- \@return 0 if success, error if invalid object handle

@BOTAN_PUBLIC_API(2,0) int botan_pk_op_decrypt_destroy(botan_pk_op_decrypt_t op);@
-}
foreign import ccall unsafe "&botan_pk_op_decrypt_destroy" botan_pk_op_decrypt_destroy :: FinalizerPtr DecryptStruct

{-|
@BOTAN_PUBLIC_API(2,8) int botan_pk_op_decrypt_output_length(botan_pk_op_decrypt_t op,
                                                            size_t ctext_len,
                                                            size_t* ptext_len);@
-}
foreign import ccall unsafe botan_pk_op_decrypt_output_length :: DecryptPtr -> CSize -> Ptr CSize -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,0) int botan_pk_op_decrypt(botan_pk_op_decrypt_t op,
                                  uint8_t out[], size_t* out_len,
                                  const uint8_t ciphertext[], size_t ciphertext_len);@
-}
foreign import ccall unsafe botan_pk_op_decrypt
    :: DecryptPtr
    -> Ptr Word8    -- Out
    -> Ptr CSize    -- Out len
    -> Ptr Word8    -- Ciphertext
    -> CSize        -- Ciphertext len
    -> IO BotanErrorCode
