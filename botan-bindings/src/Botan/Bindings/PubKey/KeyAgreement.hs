{-|
Module      : Botan.Bindings.KeyAgreement
Description : Key Agreement
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.KeyAgreement where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

{-
Key Agreement
-}

{-|
@typedef struct botan_pk_op_ka_struct* botan_pk_op_ka_t;@
-}
data KeyAgreementStruct
type KeyAgreementPtr = Ptr KeyAgreementStruct

-- TODO: Figure out what the flags actually are
type KeyAgreementFlags = Word32

pattern BOTAN_PUBKEY_KEYAGREEMENT_FLAGS_NONE = 0 :: KeyAgreementFlags -- NOTE: NOT ACTUAL FLAG

{-|
@BOTAN_PUBLIC_API(2,0)
int botan_pk_op_key_agreement_create(botan_pk_op_ka_t* op,
                                     botan_privkey_t key,
                                     const char* kdf,
                                     uint32_t flags);@
-}
foreign import ccall unsafe botan_pk_op_key_agreement_create :: Ptr KeyAgreementPtr -> PrivKeyPtr -> CString -> KeyAgreementFlags -> IO BotanErrorCode

{-|
- \@return 0 if success, error if invalid object handle

@BOTAN_PUBLIC_API(2,0) int botan_pk_op_key_agreement_destroy(botan_pk_op_ka_t op);@
-}

foreign import ccall unsafe "&botan_pk_op_key_agreement_destroy" botan_pk_op_key_agreement_destroy :: FinalizerPtr KeyAgreementStruct

{-|
@BOTAN_PUBLIC_API(2,0) int botan_pk_op_key_agreement_export_public(botan_privkey_t key,
                                                      uint8_t out[], size_t* out_len);@
-}
foreign import ccall unsafe botan_pk_op_key_agreement_export_public
    :: PrivKeyPtr
    -> Ptr Word8
    -> Ptr CSize
    -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(3,0) int botan_pk_op_key_agreement_view_public(
--    botan_privkey_t key,
--    botan_view_ctx ctx,
--    botan_view_bin_fn view);
-- TODO: After we figure out view functions

{-|
@BOTAN_PUBLIC_API(2,8) int botan_pk_op_key_agreement_size(botan_pk_op_ka_t op, size_t* out_len);@
-}
foreign import ccall unsafe botan_pk_op_key_agreement_size :: KeyAgreementPtr -> Ptr CSize -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,0)
int botan_pk_op_key_agreement(botan_pk_op_ka_t op,
                              uint8_t out[], size_t* out_len,
                              const uint8_t other_key[], size_t other_key_len,
                              const uint8_t salt[], size_t salt_len);@
-}
foreign import ccall unsafe botan_pk_op_key_agreement
    :: KeyAgreementPtr
    -> Ptr Word8
    -> Ptr CSize
    -> Ptr Word8
    -> CSize
    -> Ptr Word8
    -> CSize
    -> IO BotanErrorCode
