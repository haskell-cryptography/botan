module Botan.Bindings.PubKey.Sign where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.Random

-- /*
-- * Signature Generation
-- */

-- typedef struct botan_pk_op_sign_struct* botan_pk_op_sign_t;
data SignStruct
type SignPtr = Ptr SignStruct

-- #define BOTAN_PUBKEY_DER_FORMAT_SIGNATURE 1
type SigningFlags = Word32

-- NOTE: Ugh. Bad names. Will rename. Or make a general BOTAN_FLAGS_NONE?
pattern BOTAN_PUBKEY_SIGNING_FLAGS_NONE = 0 :: SigningFlags -- NOTE: NOT ACTUAL FLAG.
pattern BOTAN_PUBKEY_DER_FORMAT_SIGNATURE = 1 :: SigningFlags

-- BOTAN_PUBLIC_API(2,0)
-- int botan_pk_op_sign_create(botan_pk_op_sign_t* op,
--                             botan_privkey_t key,
--                             const char* hash_and_padding,
--                             uint32_t flags);
foreign import ccall unsafe botan_pk_op_sign_create :: Ptr SignPtr -> PrivKeyPtr -> CString -> SigningFlags -> IO BotanErrorCode

-- /**
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_sign_destroy(botan_pk_op_sign_t op);
foreign import ccall unsafe "&botan_pk_op_sign_destroy" botan_pk_op_sign_destroy :: FinalizerPtr SignStruct

-- BOTAN_PUBLIC_API(2,8) int botan_pk_op_sign_output_length(botan_pk_op_sign_t op, size_t* olen);
foreign import ccall unsafe botan_pk_op_sign_output_length :: SignPtr -> Ptr CSize -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_sign_update(botan_pk_op_sign_t op, const uint8_t in[], size_t in_len);
foreign import ccall unsafe botan_pk_op_sign_update :: SignPtr -> Ptr Word8  -> CSize -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,0)
-- int botan_pk_op_sign_finish(botan_pk_op_sign_t op, botan_rng_t rng,
--                             uint8_t sig[], size_t* sig_len);
foreign import ccall unsafe botan_pk_op_sign_finish :: SignPtr -> RandomPtr -> Ptr Word8 -> Ptr CSize -> IO BotanErrorCode

-- /**
-- * Signature Scheme Utility Functions
-- */

-- BOTAN_PUBLIC_API(2,0) int botan_pkcs_hash_id(const char* hash_name, uint8_t pkcs_id[], size_t* pkcs_id_len);
foreign import ccall unsafe botan_pkcs_hash_id :: CString -> Ptr Word8 -> Ptr CSize -> IO BotanErrorCode
