module Botan.Bindings.X509.Path where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.X509
import Botan.Bindings.X509.Store

data X509PathValidationRestrictionsStruct
type X509PathValidationRestrictionsPtr = Ptr X509PathValidationRestrictionsStruct

data X509PathValidationResultStruct
type X509PathValidationResultPtr = Ptr X509PathValidationResultStruct

foreign import ccall unsafe "&botan_x509_path_validation_restrictions_destroy" botan_x509_path_validation_restrictions_destroy
    :: X509PathValidationRestrictionsPtr
    -> IO BotanErrorCode

foreign import ccall unsafe "&botan_x509_path_validation_result_destroy" botan_x509_path_validation_result_destroy
    :: X509PathValidationResultPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_path_validate
    :: Ptr X509PathValidationResultPtr
    -> X509CertPtr
    -> X509PathValidationRestrictionsPtr
    -> X509CertStorePtr
    -> Ptr CChar
    -> CUInt
    -> Word64
    -> Word64
    -> Ptr () -- SEE NOTES ON OCSP RESPONSE - TYPE NOT YET IMPLEMENTED
    -> IO BotanErrorCode

-- // NOTE: Returns a boolean success code
foreign import ccall unsafe botan_x509_path_validation_result_successful_validation
    :: X509PathValidationResultPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_path_validation_result_result_string
    :: Ptr CChar
    -> X509PathValidationResultPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_path_validation_result_trust_root
    :: Ptr X509CertPtr
    -> X509PathValidationResultPtr
    -> IO BotanErrorCode

-- // NOTE: Returns an array of results
-- // SEE: Discussion on arrays / ownership
foreign import ccall unsafe botan_x509_path_validation_result_cert_path
    :: Ptr (Ptr X509CertPtr) -> Ptr CSize
    -> X509PathValidationResultPtr
    -> IO BotanErrorCode

-- // NOTE: Botan FFI is using `int` for Certificate_Status_Code in existing code
foreign import ccall unsafe botan_x509_path_validation_result_status_code
    :: Ptr CInt
    -> X509PathValidationResultPtr
    -> IO BotanErrorCode

-- // NOTE: Returns an array of results
-- // SEE: Discussion on arrays / ownership
foreign import ccall unsafe botan_x509_path_validation_result_all_status_codes
    :: Ptr CInt -> Ptr CSize
    -> X509PathValidationResultPtr
    -> IO BotanErrorCode

-- // NOTE: Returns an array of results
-- // SEE: Discussion on arrays / ownership
-- // DOUBLE NOTE: It returns an array of cstrings
foreign import ccall unsafe botan_x509_path_validation_result_trusted_hashes
    :: Ptr (Ptr CChar) -> Ptr CSize
    -> X509PathValidationResultPtr
    -> IO BotanErrorCode