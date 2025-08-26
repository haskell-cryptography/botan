module Botan.Low.X509.Path where

import Foreign.Marshal.Utils

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.X509
import Botan.Low.X509.Store

import Botan.Bindings.X509
import Botan.Bindings.X509.Path

newtype X509PathRestrictions = MkX509PathRestrictions { getX509PathRestrictionsForeignPtr :: ForeignPtr X509PathRestrictionsStruct }

withX509PathRestrictionsPtr :: X509PathRestrictions -> (X509PathRestrictionsPtr -> IO a) -> IO a
withX509PathRestrictionsPtr = withForeignPtr . getX509PathRestrictionsForeignPtr

x509PathRestrictionsDestroy :: X509PathRestrictions -> IO ()
x509PathRestrictionsDestroy restrictions = finalizeForeignPtr (getX509PathRestrictionsForeignPtr restrictions)

x509PathRestrictionsCreate :: Bool -> Int -> Bool -> Word64 -> X509CertStore -> IO X509PathRestrictions
x509PathRestrictionsCreate require_rev minimum_key_strength ocsp_all_intermediates max_ocsp_age trusted_ocsp_responders = do
    withX509CertStorePtr trusted_ocsp_responders $ \ trustedStorePtr -> do
        mkInit
            MkX509PathRestrictions
            (\ pvPtr -> botan_x509_path_restrictions_create
                pvPtr
                (fromBool require_rev)
                (fromIntegral minimum_key_strength)
                (fromBool ocsp_all_intermediates)
                max_ocsp_age
                trustedStorePtr
            )
            botan_x509_path_restrictions_destroy

-- TODO: x509PathRestrictionsCreateTrustedHashes

newtype X509PathValidation = MkX509PathValidation { getX509PathValidationForeignPtr :: ForeignPtr X509PathValidationStruct }

withX509PathValidationPtr :: X509PathValidation -> (X509PathValidationPtr -> IO a) -> IO a
withX509PathValidationPtr = withForeignPtr . getX509PathValidationForeignPtr

x509PathValidationDestroy :: X509PathValidation -> IO ()
x509PathValidationDestroy validation = finalizeForeignPtr (getX509PathValidationForeignPtr validation)

-- NOTE: OCSPResponse not yet implemented
x509PathValidate :: X509Cert -> X509PathRestrictions -> X509CertStore -> ByteString -> Word32 -> Word64 -> Word64 -> Ptr () -> IO X509PathValidation
x509PathValidate cert restrictions store hostname usage validationTime ocspTimeout ocspResponse = do
    withX509Cert cert $ \ certPtr -> do
        withX509PathRestrictionsPtr restrictions $ \ restrictionsPtr -> do
            withX509CertStorePtr store $ \ storePtr -> do
                asCString hostname $ \ hostnamePtr -> do
                    mkInit
                        MkX509PathValidation
                        (\ pvPtr -> botan_x509_path_validate
                            pvPtr
                            certPtr
                            restrictionsPtr
                            storePtr
                            hostnamePtr
                            (fromIntegral usage)
                            validationTime
                            ocspTimeout
                            ocspResponse
                        )
                        botan_x509_path_validation_destroy

x509PathValidationSuccessfulValidation :: X509PathValidation -> IO Bool
x509PathValidationSuccessfulValidation pv = withX509PathValidationPtr pv $ \ pvPtr -> do
    throwBotanCatchingSuccess $ botan_x509_path_validation_successful_validation pvPtr

x509PathValidationResultString :: X509PathValidation -> IO ByteString
x509PathValidationResultString pv = withX509PathValidationPtr pv $ \ pvPtr -> do
    allocBytesQueryingCString $ \ resultPtr resultLen -> do
        botan_x509_path_validation_result_string resultPtr resultLen pvPtr

x509PathValidationTrustRoot :: X509PathValidation -> IO X509Cert
x509PathValidationTrustRoot pv = withX509PathValidationPtr pv $ \ pvPtr -> do
    mkInit
        MkX509Cert
        (\ certPtr -> botan_x509_path_validation_trust_root certPtr pvPtr)
        botan_x509_cert_destroy

-- TODO: Need some sort of allocArrayQuerying, or a mkArrayInit
x509PathValidationCertPath :: X509PathValidation -> IO [X509Cert]
x509PathValidationCertPath pv = withX509PathValidationPtr pv $ \ pvPtr -> do
    let fn arrPtr szPtr = botan_x509_path_validation_cert_path arrPtr szPtr pvPtr
    alloca $ \ szPtr -> do
        code <- fn nullPtr szPtr
        case code of
            InsufficientBufferSpace -> do
                sz <- fromIntegral <$> peek szPtr
                allocaArray sz $ \ arrPtr -> do
                    throwBotanIfNegative_ $ fn arrPtr szPtr
                    certPtrs <- peekArray sz arrPtr
                    -- NOTE: Cannot use mkInit because that performs an alloca and a peek,
                    --  whereas we have already performed that work here
                    forM certPtrs $ \ certPtr -> do
                        foreignPtr <- newForeignPtr botan_x509_cert_destroy certPtr
                        return $ MkX509Cert foreignPtr
            _                       ->  throwBotanError code

type X509PathValidationStatusCode = Int

x509PathValidationStatusCode :: X509PathValidation -> IO X509PathValidationStatusCode
x509PathValidationStatusCode pv = withX509PathValidationPtr pv $ \ pvPtr -> do
    alloca $ \ statusCodePtr -> do
        throwBotanIfNegative_ $ botan_x509_path_validation_status_code statusCodePtr pvPtr
        fromIntegral <$> peek statusCodePtr

-- TODO: Need some sort of allocArrayQuerying, or a mkArrayInit
x509PathValidationAllStatusCodes :: X509PathValidation -> IO [X509PathValidationStatusCode]
x509PathValidationAllStatusCodes pv = withX509PathValidationPtr pv $ \ pvPtr -> do
    let fn arrPtr szPtr = botan_x509_path_validation_all_status_codes arrPtr szPtr pvPtr
    alloca $ \ szPtr -> do
        code <- fn nullPtr szPtr
        case code of
            InsufficientBufferSpace -> do
                sz <- fromIntegral <$> peek szPtr
                allocaArray sz $ \ arrPtr -> do
                    throwBotanIfNegative_ $ fn arrPtr szPtr
                    fmap fromIntegral <$> peekArray sz arrPtr
            _                       ->  throwBotanError code

-- NOTE: Array of strings - extra tricky, not finished yet, will be reused
-- NOTE: Similar to x509DNGetAttribute / x509DNGetContents
x509PathValidationTrustedHashes :: X509PathValidation -> IO [ByteString]
x509PathValidationTrustedHashes pv = withX509PathValidationPtr pv $ \ pvPtr -> do
    let fn arrPtr sizesPtr szPtr = botan_x509_path_validation_trusted_hashes arrPtr sizesPtr szPtr pvPtr
    alloca $ \ szPtr -> do
        code <- fn nullPtr nullPtr szPtr
        case code of
            InsufficientBufferSpace -> do
                sz <- fromIntegral <$> peek szPtr
                allocaArray sz $ \ sizesPtr -> do
                    code' <- fn nullPtr sizesPtr szPtr
                    case code' of
                        -- TODO: Actually fill out array of strings
                        _ -> undefined
            _                       ->  throwBotanError code
