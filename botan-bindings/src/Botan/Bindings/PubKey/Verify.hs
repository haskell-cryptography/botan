{-|
Module      : Botan.Bindings.Verify
Description : Signature Verification
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.Verify where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.Sign

{-
Signature Verification
-}

{-|
@typedef struct botan_pk_op_verify_struct* botan_pk_op_verify_t;@
-}
data VerifyStruct
type VerifyPtr = Ptr VerifyStruct

{-|
@BOTAN_PUBLIC_API(2,0)
int botan_pk_op_verify_create(botan_pk_op_verify_t* op,
                              botan_pubkey_t key,
                              const char* hash_and_padding,
                              uint32_t flags);@
-}
foreign import ccall unsafe botan_pk_op_verify_create :: Ptr VerifyPtr -> PubKeyPtr -> CString -> SigningFlags -> IO BotanErrorCode

{-|
- \@return 0 if success, error if invalid object handle

@BOTAN_PUBLIC_API(2,0) int botan_pk_op_verify_destroy(botan_pk_op_verify_t op);@
-}
foreign import ccall unsafe "&botan_pk_op_verify_destroy" botan_pk_op_verify_destroy :: FinalizerPtr VerifyStruct

{-|
@BOTAN_PUBLIC_API(2,0) int botan_pk_op_verify_update(botan_pk_op_verify_t op, const uint8_t in[], size_t in_len);@
-}
foreign import ccall unsafe botan_pk_op_verify_update :: VerifyPtr -> Ptr Word8  -> CSize -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,0) int botan_pk_op_verify_finish(botan_pk_op_verify_t op, const uint8_t sig[], size_t sig_len);@
-}
foreign import ccall unsafe botan_pk_op_verify_finish :: VerifyPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode
