{-|
Module      : Botan.Low.X509
Description : X.509 Certificates and CRLs
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

A certificate is a binding between some identifying information
(called a subject) and a public key. This binding is asserted by
a signature on the certificate, which is placed there by some
authority (the issuer) that at least claims that it knows the
subject named in the certificate really “owns” the private key
corresponding to the public key in the certificate.

The major certificate format in use today is X.509v3, used for
instance in the Transport Layer Security (TLS) protocol.
-}

module Botan.Low.X509 where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Char8 as Char8

import Botan.Bindings.PubKey
import Botan.Bindings.X509

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.PubKey
import Data.Maybe (fromMaybe)
import Data.ByteString (packCString)

-- TODO: Use *.Make module to ensure consistency

-- /*
-- * X.509 certificates
-- **************************/

newtype X509Cert = MkX509Cert { getX509CertForeignPtr :: ForeignPtr X509CertStruct }

withX509CertPtr :: X509Cert -> (X509CertPtr -> IO a) -> IO a
withX509CertPtr = withForeignPtr . getX509CertForeignPtr

x509CertLoadIO :: ByteString -> IO X509Cert
x509CertLoadIO = mkInit_bytes_len MkX509Cert botan_x509_cert_load botan_x509_cert_destroy

x509CertLoadFileIO :: FilePath -> IO X509Cert
x509CertLoadFileIO = mkInit_name MkX509Cert botan_x509_cert_load_file botan_x509_cert_destroy . Char8.pack

x509CertDestroyIO :: X509Cert -> IO ()
x509CertDestroyIO cert = finalizeForeignPtr (getX509CertForeignPtr cert)

x509CertDupIO :: X509Cert -> IO X509Cert
x509CertDupIO = mkInit_with MkX509Cert botan_x509_cert_dup botan_x509_cert_destroy withX509CertPtr

x509CertGetTimeStartsIO :: X509Cert -> IO ByteString
x509CertGetTimeStartsIO = mkGetBytes withX509CertPtr botan_x509_cert_get_time_starts

x509CertGetTimeExpiresIO :: X509Cert -> IO ByteString
x509CertGetTimeExpiresIO = mkGetBytes withX509CertPtr botan_x509_cert_get_time_expires

-- TODO: mkGetIntegral
x509CertNotBeforeIO :: X509Cert -> IO Word64
x509CertNotBeforeIO cert = withX509CertPtr cert $ \ certPtr -> do
    alloca $ \ timePtr -> do
        botan_x509_cert_not_before
            certPtr
            timePtr
        fromIntegral <$> peek timePtr

-- TODO: mkGetIntegral
x509CertNotAfterIO :: X509Cert -> IO Word64
x509CertNotAfterIO cert = withX509CertPtr cert $ \ certPtr -> do
    alloca $ \ timePtr -> do
        botan_x509_cert_not_after
            certPtr
            timePtr
        fromIntegral <$> peek timePtr


x509CertGetPubKeyFingerprintIO :: X509Cert -> ByteString -> IO ByteString
x509CertGetPubKeyFingerprintIO cert algo = withX509CertPtr cert $ \ certPtr -> do
    asCString algo $ \ algoPtr -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_x509_cert_get_fingerprint
            certPtr
            algoPtr
            outPtr
            outLen

x509CertGetSerialNumberIO :: X509Cert -> IO ByteString
x509CertGetSerialNumberIO = mkGetBytes withX509CertPtr botan_x509_cert_get_serial_number

x509CertGetAuthorityKeyIdIO :: X509Cert -> IO ByteString
x509CertGetAuthorityKeyIdIO = mkGetBytes withX509CertPtr botan_x509_cert_get_authority_key_id

x509CertGetSubjectKeyIdIO :: X509Cert -> IO ByteString
x509CertGetSubjectKeyIdIO = mkGetBytes withX509CertPtr botan_x509_cert_get_subject_key_id

x509CertGetPublicKeyBitsIO :: X509Cert -> IO ByteString
x509CertGetPublicKeyBitsIO = mkGetBytes withX509CertPtr botan_x509_cert_get_public_key_bits

-- NOTE: Unique / quirk - the return value is the second argument?
--  This necessitates the use of `flip`
x509CertGetPublicKeyIO :: X509Cert -> IO PubKey
x509CertGetPublicKeyIO = mkInit_with MkPubKey (flip botan_x509_cert_get_public_key) botan_pubkey_destroy withX509CertPtr

-- Distinguished Names
--  SEE: https://www.ibm.com/docs/en/ibm-mq/7.5?topic=certificates-distinguished-names
x509CertGetIssuerDNIO :: X509Cert -> ByteString -> Int -> IO ByteString
x509CertGetIssuerDNIO cert key index = withX509CertPtr cert $ \ certPtr -> do
    asCString key $ \ keyPtr -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_x509_cert_get_issuer_dn
            certPtr
            keyPtr
            (fromIntegral index)
            outPtr
            outLen

-- Distinguished Names
--  SEE: https://www.ibm.com/docs/en/ibm-mq/7.5?topic=certificates-distinguished-names
x509CertGetSubjectDNIO :: X509Cert -> ByteString -> Int -> IO ByteString
x509CertGetSubjectDNIO cert key index = withX509CertPtr cert $ \ certPtr -> do
    asCString key $ \ keyPtr -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_x509_cert_get_issuer_dn
            certPtr
            keyPtr
            (fromIntegral index)
            outPtr
            outLen

x509CertToStringIO :: X509Cert -> IO ByteString
x509CertToStringIO = mkGetCString withX509CertPtr botan_x509_cert_to_string

pattern NoConstraints = BOTAN_X509_CERT_KEY_CONSTRAINTS_NO_CONSTRAINTS
pattern DigitalSignature = BOTAN_X509_CERT_KEY_CONSTRAINTS_DIGITAL_SIGNATURE
pattern NonRepudiation = BOTAN_X509_CERT_KEY_CONSTRAINTS_NON_REPUDIATION
pattern KeyEncipherment = BOTAN_X509_CERT_KEY_CONSTRAINTS_KEY_ENCIPHERMENT
pattern DataEncipherment = BOTAN_X509_CERT_KEY_CONSTRAINTS_DATA_ENCIPHERMENT
pattern KeyAgreement = BOTAN_X509_CERT_KEY_CONSTRAINTS_KEY_AGREEMENT
pattern KeyCertSign = BOTAN_X509_CERT_KEY_CONSTRAINTS_KEY_CERT_SIGN
pattern CRLSign = BOTAN_X509_CERT_KEY_CONSTRAINTS_CRL_SIGN
pattern EncipherOnly = BOTAN_X509_CERT_KEY_CONSTRAINTS_ENCIPHER_ONLY
pattern DecipherOnly = BOTAN_X509_CERT_KEY_CONSTRAINTS_DECIPHER_ONLY

{-# WARNING x509CertAllowedUsageIO "Unexplained function, best-guess implementation" #-}
-- NOTE: This function lacks documentation, and it is unknown whether this is
--  setting a value (as implied by Z-botan), or whether it is using either
--  a negative error or INVALID_IDENTIFIER to return a bool
x509CertAllowedUsageIO :: X509Cert -> X509CertKeyConstraints -> IO Bool
x509CertAllowedUsageIO cert usage = withX509CertPtr cert $ \ certPtr -> do
    throwBotanCatchingSuccess $ botan_x509_cert_allowed_usage certPtr usage

{-# WARNING x509CertHostnameMatchIO "Unexplained function, best-guess implementation" #-}
x509CertHostnameMatchIO :: X509Cert -> ByteString -> IO Bool
x509CertHostnameMatchIO cert hostname = withX509CertPtr cert $ \ certPtr -> do
    asCString hostname $ \ hostnamePtr -> do
        throwBotanCatchingSuccess $ botan_x509_cert_hostname_match certPtr hostnamePtr

x509CertVerifyIO
    :: X509Cert
    -> [X509Cert]
    -> [X509Cert]
    -> Maybe FilePath
    -> Int
    -> ByteString
    -> Word64
    -> IO (Bool, Int)
x509CertVerifyIO cert icerts tcerts tpath strength hostname time = do
    withX509CertPtr cert $ \ certPtr -> do
        withPtrs withX509CertPtr icerts $ flip withArrayLen $ \ icertsLen icertsPtr -> do
            withPtrs withX509CertPtr tcerts $ flip withArrayLen $ \ tcertsLen tcertsPtr -> do
                maybe ($ nullPtr) withCString tpath $ \ tpathPtr -> do
                    asCString hostname $ \ hostnamePtr -> do
                        alloca $ \ statusPtr -> do
                            success <- throwBotanCatchingSuccess $ botan_x509_cert_verify
                                statusPtr
                                certPtr
                                icertsPtr
                                (fromIntegral icertsLen)
                                tcertsPtr
                                (fromIntegral tcertsLen)
                                tpathPtr
                                (fromIntegral strength)
                                hostnamePtr
                                time
                            code <- fromIntegral <$> peek statusPtr
                            return (success, code)

x509CertValidationStatusIO :: Int -> IO (Maybe ByteString)
x509CertValidationStatusIO code = do
    status <- botan_x509_cert_validation_status (fromIntegral code)
    if status == nullPtr
        then return Nothing
        else Just <$> packCString status

-- /*
-- * X.509 CRL
-- **************************/

newtype X509CRL = MkX509CRL { getX509CRLForeignPtr :: ForeignPtr X509CRLStruct }

withX509CRLPtr :: X509CRL -> (X509CRLPtr -> IO a) -> IO a
withX509CRLPtr = withForeignPtr . getX509CRLForeignPtr

x509CRLLoadIO :: ByteString -> IO X509CRL
x509CRLLoadIO = mkInit_bytes_len MkX509CRL botan_x509_crl_load botan_x509_crl_destroy

x509CRLLoadFileIO :: FilePath -> IO X509CRL
x509CRLLoadFileIO = mkInit_name MkX509CRL botan_x509_crl_load_file botan_x509_crl_destroy . Char8.pack

x509CRLDestroyIO :: X509CRL -> IO ()
x509CRLDestroyIO crl = finalizeForeignPtr (getX509CRLForeignPtr crl)

x509IsRevokedIO :: X509CRL -> X509Cert -> IO Bool
x509IsRevokedIO crl cert = withX509CRLPtr crl $ \ crlPtr -> do
    withX509CertPtr cert $ \ certPtr -> do
        throwBotanCatchingSuccess $ botan_x509_is_revoked crlPtr certPtr

x509CertVerifyWithCLRIO
    :: X509Cert
    -> [X509Cert]
    -> [X509Cert]
    -> [X509CRL]
    -> Maybe FilePath
    -> Int
    -> ByteString
    -> Word64
    -> IO (Bool, Int)
x509CertVerifyWithCLRIO cert icerts tcerts crls tpath strength hostname time = do
    withX509CertPtr cert $ \ certPtr -> do
        withPtrs withX509CertPtr icerts $ flip withArrayLen $ \ icertsLen icertsPtr -> do
            withPtrs withX509CertPtr tcerts $ flip withArrayLen $ \ tcertsLen tcertsPtr -> do
                withPtrs withX509CRLPtr crls $ flip withArrayLen $ \ crlsLen crlsPtr -> do
                    maybe ($ nullPtr) withCString tpath $ \ tpathPtr -> do
                        asCString hostname $ \ hostnamePtr -> do
                            alloca $ \ statusPtr -> do
                                success <- throwBotanCatchingSuccess $ botan_x509_cert_verify_with_crl
                                    statusPtr
                                    certPtr
                                    icertsPtr
                                    (fromIntegral icertsLen)
                                    tcertsPtr
                                    (fromIntegral tcertsLen)
                                    crlsPtr
                                    (fromIntegral crlsLen)
                                    tpathPtr
                                    (fromIntegral strength)
                                    hostnamePtr
                                    time
                                success <- undefined
                                code <- fromIntegral <$> peek statusPtr
                                return (success, code)
