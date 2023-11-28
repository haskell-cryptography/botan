module Botan.Bindings.X509.Path where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.X509
import Botan.Bindings.X509.Store

data X509PathRestrictionsStruct
type X509PathRestrictionsPtr = Ptr X509PathRestrictionsStruct

foreign import ccall unsafe "&botan_x509_path_restrictions_destroy" botan_x509_path_restrictions_destroy :: FinalizerPtr X509PathRestrictionsStruct

foreign import ccall unsafe botan_x509_path_restrictions_create
    :: Ptr X509PathRestrictionsPtr
    -> CBool
    -> CSize
    -> CBool
    -> Word64
    -> X509CertStorePtr
    -> IO BotanErrorCode

-- TODO: botan_x509_path_restrictions_create_trusted_hashes

data X509PathValidationStruct
type X509PathValidationPtr = Ptr X509PathValidationStruct

foreign import ccall unsafe "&botan_x509_path_validation_destroy" botan_x509_path_validation_destroy :: FinalizerPtr X509PathValidationStruct

foreign import ccall unsafe botan_x509_path_validate
    :: Ptr X509PathValidationPtr
    -> X509CertPtr
    -> X509PathRestrictionsPtr
    -> X509CertStorePtr
    -> Ptr CChar
    -> CUInt -- NOTE: Assumed to be Word32
    -> Word64
    -> Word64
    -> Ptr () -- SEE NOTES ON OCSP RESPONSE - TYPE NOT YET IMPLEMENTED
    -> IO BotanErrorCode

-- // NOTE: Returns a boolean success code
foreign import ccall unsafe botan_x509_path_validation_successful_validation
    :: X509PathValidationPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_path_validation_result_string
    :: Ptr CChar -> Ptr CSize
    -> X509PathValidationPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_path_validation_trust_root
    :: Ptr X509CertPtr
    -> X509PathValidationPtr
    -> IO BotanErrorCode

-- // NOTE: Returns an array of results
-- // SEE: Discussion on arrays / ownership
-- NOTE: FFI function is actually x509_cert_t** but should be x509_cert_t* like here
foreign import ccall unsafe botan_x509_path_validation_cert_path
    :: Ptr X509CertPtr -> Ptr CSize
    -> X509PathValidationPtr
    -> IO BotanErrorCode

-- // NOTE: Botan FFI is using `int` for Certificate_Status_Code in existing code
foreign import ccall unsafe botan_x509_path_validation_status_code
    :: Ptr CInt
    -> X509PathValidationPtr
    -> IO BotanErrorCode

-- // NOTE: Returns an array of results
-- // SEE: Discussion on arrays / ownership
foreign import ccall unsafe botan_x509_path_validation_all_status_codes
    :: Ptr CInt -> Ptr CSize
    -> X509PathValidationPtr
    -> IO BotanErrorCode

-- // NOTE: Returns an array of results
-- // SEE: Discussion on arrays / ownership
-- // DOUBLE NOTE: It returns an array of cstrings
foreign import ccall unsafe botan_x509_path_validation_trusted_hashes
    :: Ptr (Ptr CChar) -> Ptr CSize -> Ptr CSize
    -> X509PathValidationPtr
    -> IO BotanErrorCode
