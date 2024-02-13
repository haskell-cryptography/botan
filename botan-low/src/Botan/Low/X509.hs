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

module Botan.Low.X509
(

-- * X509 Certificates

  X509Cert(..)
, withX509Cert
, x509CertLoad
, x509CertLoadFile
, x509CertDestroy
, x509CertDup
, x509CertGetTimeStarts
, x509CertGetTimeExpires
, x509CertNotBefore
, x509CertNotAfter
, x509CertGetPubKeyFingerprint
, x509CertGetSerialNumber
, x509CertGetAuthorityKeyId
, x509CertGetSubjectKeyId
, x509CertGetPublicKeyBits
, x509CertGetPublicKey
, x509CertGetIssuerDN
, x509CertGetSubjectDN
, x509CertToString
, x509CertAllowedUsage
, x509CertHostnameMatch
, x509CertVerify
, x509CertValidationStatus

-- * X509 Key constraints

, X509KeyConstraints(..)
, pattern NoConstraints
, pattern DigitalSignature
, pattern NonRepudiation
, pattern KeyEncipherment
, pattern DataEncipherment
, pattern KeyAgreement
, pattern KeyCertSign
, pattern CRLSign
, pattern EncipherOnly
, pattern DecipherOnly

-- * X509 Certificate revocation list

, X509CRL(..)
, withX509CRL
, x509CRLLoad
, x509CRLLoadFile
, x509CRLDestroy
, x509IsRevoked
, x509CertVerifyWithCLR

-- * Convenience
, DistinguishedName(..)

) where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Char8 as Char8

import Botan.Bindings.PubKey
import Botan.Bindings.X509

import Botan.Low.Hash (HashName(..))

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.PubKey
import Botan.Low.Remake
import Data.Maybe (fromMaybe)
import Data.ByteString (packCString)
import qualified Foreign.C.String as String (withCString)
import Botan.Low.Remake (mkCreateObjectCBytesLen)
import Botan.Low.PubKey (createPubKey)

-- TODO: Use *.Make module to ensure consistency

-- /*
-- * X.509 certificates
-- **************************/

type DistinguishedName = ByteString

newtype X509Cert = MkX509Cert { getX509CertForeignPtr :: ForeignPtr BotanX509CertStruct }

newX509Cert      :: BotanX509Cert -> IO X509Cert
withX509Cert     :: X509Cert -> (BotanX509Cert -> IO a) -> IO a
-- | Destroy an x509 cert object immediately
x509CertDestroy  :: X509Cert -> IO ()
createX509Cert   :: (Ptr BotanX509Cert -> IO CInt) -> IO X509Cert
(newX509Cert, withX509Cert, x509CertDestroy, createX509Cert, _)
    = mkBindings MkBotanX509Cert runBotanX509Cert MkX509Cert getX509CertForeignPtr botan_x509_cert_destroy

x509CertLoad
    :: ByteString   -- ^ @cert[]@
    -> IO X509Cert  -- ^ @cert_obj@
x509CertLoad = mkCreateObjectCBytesLen createX509Cert botan_x509_cert_load

x509CertLoadFile
    :: FilePath     -- ^ @filename@
    -> IO X509Cert  -- ^ @cert_obj@
x509CertLoadFile = mkCreateObjectCString createX509Cert botan_x509_cert_load_file . Char8.pack

x509CertDup
    :: X509Cert     -- ^ @new_cert@
    -> IO X509Cert  -- ^ @cert@
x509CertDup = mkCreateObjectWith createX509Cert withX509Cert botan_x509_cert_dup

x509CertGetTimeStarts
    :: X509Cert         -- ^ @cert@
    -> IO ByteString    -- ^ @out[]@
x509CertGetTimeStarts = mkGetBytes withX509Cert botan_x509_cert_get_time_starts

x509CertGetTimeExpires
    :: X509Cert         -- ^ @cert@
    -> IO ByteString    -- ^ @out[]@
x509CertGetTimeExpires = mkGetBytes withX509Cert botan_x509_cert_get_time_expires

-- TODO: mkGetIntegral
x509CertNotBefore
    :: X509Cert     -- ^ @cert@
    -> IO Word64    -- ^ @time_since_epoch@
x509CertNotBefore cert = withX509Cert cert $ \ certPtr -> do
    alloca $ \ timePtr -> do
        botan_x509_cert_not_before
            certPtr
            timePtr
        fromIntegral <$> peek timePtr

-- TODO: mkGetIntegral
x509CertNotAfter
    :: X509Cert     -- ^ @cert@
    -> IO Word64    -- ^ @time_since_epoch@
x509CertNotAfter cert = withX509Cert cert $ \ certPtr -> do
    alloca $ \ timePtr -> do
        botan_x509_cert_not_after
            certPtr
            timePtr
        fromIntegral <$> peek timePtr


x509CertGetPubKeyFingerprint
    :: X509Cert         -- ^ @cert@
    -> HashName         -- ^ @hash@
    -> IO ByteString    -- ^ @out[]@
x509CertGetPubKeyFingerprint cert algo = withX509Cert cert $ \ certPtr -> do
    asCString algo $ \ algoPtr -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_x509_cert_get_fingerprint
            certPtr
            (ConstPtr algoPtr)
            outPtr
            outLen

x509CertGetSerialNumber
    :: X509Cert         -- ^ @cert@
    -> IO ByteString    -- ^ @out[]@
x509CertGetSerialNumber = mkGetBytes withX509Cert botan_x509_cert_get_serial_number

x509CertGetAuthorityKeyId
    :: X509Cert         -- ^ @cert@
    -> IO ByteString    -- ^ @out[]@
x509CertGetAuthorityKeyId = mkGetBytes withX509Cert botan_x509_cert_get_authority_key_id

x509CertGetSubjectKeyId 
    :: X509Cert         -- ^ @cert@
    -> IO ByteString    -- ^ @out[]@
x509CertGetSubjectKeyId = mkGetBytes withX509Cert botan_x509_cert_get_subject_key_id

x509CertGetPublicKeyBits
    :: X509Cert         -- ^ @cert@
    -> IO ByteString    -- ^ @out[]@
x509CertGetPublicKeyBits = mkGetBytes withX509Cert botan_x509_cert_get_public_key_bits

-- NOTE: Unique / quirk - the return value is the second argument?
--  This necessitates the use of `flip`
x509CertGetPublicKey
    :: X509Cert     -- ^ @cert@
    -> IO PubKey    -- ^ @key@
x509CertGetPublicKey = mkCreateObjectWith createPubKey withX509Cert (flip botan_x509_cert_get_public_key)

-- Distinguished Names
--  SEE: https://www.ibm.com/docs/en/ibm-mq/7.5?topic=certificates-distinguished-names
x509CertGetIssuerDN
    :: X509Cert         -- ^ @cert@
    -> ByteString       -- ^ @key@
    -> Int              -- ^ @index@
    -> IO ByteString    -- ^ @out[]@
x509CertGetIssuerDN cert key index = withX509Cert cert $ \ certPtr -> do
    asCString key $ \ keyPtr -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_x509_cert_get_issuer_dn
            certPtr
            (ConstPtr keyPtr)
            (fromIntegral index)
            outPtr
            outLen

-- Distinguished Names
--  SEE: https://www.ibm.com/docs/en/ibm-mq/7.5?topic=certificates-distinguished-names
x509CertGetSubjectDN
    :: X509Cert         -- ^ @cert@
    -> ByteString       -- ^ @key@
    -> Int              -- ^ @index@
    -> IO ByteString    -- ^ @out[]@
x509CertGetSubjectDN cert key index = withX509Cert cert $ \ certPtr -> do
    asCString key $ \ keyPtr -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_x509_cert_get_issuer_dn
            certPtr
            (ConstPtr keyPtr)
            (fromIntegral index)
            outPtr
            outLen

x509CertToString
    :: X509Cert         -- ^ @cert@
    -> IO ByteString    -- ^ @out[]@
x509CertToString = mkGetCString withX509Cert botan_x509_cert_to_string

-- NOTE: Per X509 key usage extension, the extension should
--  only be present if at least one of the bits is set, and
--  usage is unrestricted if the extension is not present.
--  That is, it is an optional restriction.
-- pattern NoConstraints = BOTAN_X509_CERT_KEY_CONSTRAINTS_NO_CONSTRAINTS
-- pattern DigitalSignature = BOTAN_X509_CERT_KEY_CONSTRAINTS_DIGITAL_SIGNATURE
-- pattern NonRepudiation = BOTAN_X509_CERT_KEY_CONSTRAINTS_NON_REPUDIATION
-- pattern KeyEncipherment = BOTAN_X509_CERT_KEY_CONSTRAINTS_KEY_ENCIPHERMENT
-- pattern DataEncipherment = BOTAN_X509_CERT_KEY_CONSTRAINTS_DATA_ENCIPHERMENT
-- pattern KeyAgreement = BOTAN_X509_CERT_KEY_CONSTRAINTS_KEY_AGREEMENT
-- pattern KeyCertSign = BOTAN_X509_CERT_KEY_CONSTRAINTS_KEY_CERT_SIGN
-- pattern CRLSign = BOTAN_X509_CERT_KEY_CONSTRAINTS_CRL_SIGN
-- pattern EncipherOnly = BOTAN_X509_CERT_KEY_CONSTRAINTS_ENCIPHER_ONLY
-- pattern DecipherOnly = BOTAN_X509_CERT_KEY_CONSTRAINTS_DECIPHER_ONLY
type X509KeyConstraints = CUInt

pattern NoConstraints
    ,   DigitalSignature
    ,   NonRepudiation
    ,   KeyEncipherment
    ,   DataEncipherment
    ,   KeyAgreement
    ,   KeyCertSign
    ,   CRLSign
    ,   EncipherOnly
    ,   DecipherOnly
    ::  X509KeyConstraints
pattern NoConstraints = NO_CONSTRAINTS
pattern DigitalSignature = DIGITAL_SIGNATURE
pattern NonRepudiation = NON_REPUDIATION
pattern KeyEncipherment = KEY_ENCIPHERMENT
pattern DataEncipherment = DATA_ENCIPHERMENT
pattern KeyAgreement = KEY_AGREEMENT
pattern KeyCertSign = KEY_CERT_SIGN
pattern CRLSign = CRL_SIGN
pattern EncipherOnly = ENCIPHER_ONLY
pattern DecipherOnly = DECIPHER_ONLY

{-# WARNING x509CertAllowedUsage "Unexplained function, best-guess implementation" #-}
-- NOTE: This function lacks documentation, and it is unknown whether this is
--  setting a value (as implied by Z-botan), or whether it is using either
--  a negative error or INVALID_IDENTIFIER to return a bool
x509CertAllowedUsage
    :: X509Cert             -- ^ @cert@
    -> X509KeyConstraints   -- ^ @key_usage@
    -> IO Bool
x509CertAllowedUsage cert usage = withX509Cert cert $ \ certPtr -> do
    throwBotanCatchingSuccess $ botan_x509_cert_allowed_usage certPtr usage

{-# WARNING x509CertHostnameMatch "Unexplained function, best-guess implementation" #-}
{- |
Check if the certificate matches the specified hostname via alternative name or CN match.
RFC 5280 wildcards also supported.
-}
x509CertHostnameMatch
    :: X509Cert     -- ^ @cert@
    -> ByteString   -- ^ @hostname@
    -> IO Bool
x509CertHostnameMatch cert hostname = withX509Cert cert $ \ certPtr -> do
    asCString hostname $ \ hostnamePtr -> do
        throwBotanCatchingSuccess $ botan_x509_cert_hostname_match
            certPtr
            (ConstPtr hostnamePtr)

{- |
Returns 0 if the validation was successful, 1 if validation failed,
and negative on error. A status code with details is written to
*validation_result

Intermediates or trusted lists can be null
Trusted path can be null
-}
x509CertVerify
    :: X509Cert         -- ^ @cert@
    -> [X509Cert]       -- ^ @intermediates@
    -> [X509Cert]       -- ^ @trusted@
    -> Maybe FilePath   -- ^ @trusted_path@
    -> Int              -- ^ @required_strength@
    -> ByteString       -- ^ @hostname@
    -> Word64           -- ^ @reference_time@
    -> IO (Bool, Int)   -- ^ @(valid,validation_result)@
x509CertVerify cert icerts tcerts tpath strength hostname time = do
    withX509Cert cert $ \ certPtr -> do
        withPtrs withX509Cert icerts $ flip withArrayLen $ \ icertsLen icertsPtr -> do
            withPtrs withX509Cert tcerts $ flip withArrayLen $ \ tcertsLen tcertsPtr -> do
                maybe ($ nullPtr) String.withCString tpath $ \ tpathPtr -> do
                    asCString hostname $ \ hostnamePtr -> do
                        alloca $ \ statusPtr -> do
                            success <- throwBotanCatchingSuccess $ botan_x509_cert_verify
                                statusPtr
                                certPtr
                                (ConstPtr icertsPtr)
                                (fromIntegral icertsLen)
                                (ConstPtr tcertsPtr)
                                (fromIntegral tcertsLen)
                                (ConstPtr tpathPtr)
                                (fromIntegral strength)
                                (ConstPtr hostnamePtr)
                                time
                            code <- fromIntegral <$> peek statusPtr
                            return (success, code)
    -- TODO: The above works, but there's more to it
    --  Need to allow null pointer for empty lists too, something like:
    --      where
    --          withNullPtr withPtr m = if m == mempty then ($ nullPtr) else withPtr m
    --  but we'll need to fiddle with this function (and x509CertVerifyWithCLR)

x509CertValidationStatus
    :: Int  -- ^ @code@
    -> IO (Maybe ByteString)
x509CertValidationStatus code = do
    status <- botan_x509_cert_validation_status (fromIntegral code)
    if status == ConstPtr nullPtr
        then return Nothing
        else Just <$> packCString (unConstPtr status)

-- /*
-- * X.509 CRL
-- **************************/

-- TODO: Move to Botan.Low.X509.CRL after merging extended FFI

newtype X509CRL = MkX509CRL { getX509CRLForeignPtr :: ForeignPtr BotanX509CRLStruct }

newX509CRL      :: BotanX509CRL -> IO X509CRL
withX509CRL     :: X509CRL -> (BotanX509CRL -> IO a) -> IO a
x509CRLDestroy  :: X509CRL -> IO ()
createX509CRL   :: (Ptr BotanX509CRL -> IO CInt) -> IO X509CRL
(newX509CRL, withX509CRL, x509CRLDestroy, createX509CRL, _)
    = mkBindings MkBotanX509CRL runBotanX509CRL MkX509CRL getX509CRLForeignPtr botan_x509_crl_destroy

x509CRLLoad
    :: ByteString   -- ^ @crl_bits[]@        
    -> IO X509CRL   -- ^ @crl_obj@        
x509CRLLoad = mkCreateObjectCBytesLen createX509CRL botan_x509_crl_load

x509CRLLoadFile
    :: FilePath     -- ^ @crl_path@
    -> IO X509CRL   -- ^ @crl_obj@
x509CRLLoadFile = mkCreateObjectCString createX509CRL botan_x509_crl_load_file . Char8.pack

{- |
Given a CRL and a certificate,
check if the certificate is revoked on that particular CRL
-}
x509IsRevoked
    :: X509CRL  -- ^ @crl@
    -> X509Cert -- ^ @cert@
    -> IO Bool
x509IsRevoked crl cert = withX509CRL crl $ \ crlPtr -> do
    withX509Cert cert $ \ certPtr -> do
        throwBotanCatchingSuccess $ botan_x509_is_revoked crlPtr certPtr

{- |
Different flavor of `botan_x509_cert_verify`, supports revocation lists.
CRLs are passed as an array, same as intermediates and trusted CAs
-}
x509CertVerifyWithCLR
    :: X509Cert         -- ^ @cert@
    -> [X509Cert]       -- ^ @intermediates@
    -> [X509Cert]       -- ^ @trusted@
    -> [X509CRL]        -- ^ @crls@
    -> Maybe FilePath   -- ^ @trusted_path@
    -> Int              -- ^ @required_strength@
    -> ByteString       -- ^ @hostname@
    -> Word64           -- ^ @reference_time@
    -> IO (Bool, Int)   -- ^ @(valid,validation_result)@
x509CertVerifyWithCLR cert icerts tcerts crls tpath strength hostname time = do
    withX509Cert cert $ \ certPtr -> do
        withPtrs withX509Cert icerts $ flip withArrayLen $ \ icertsLen icertsPtr -> do
            withPtrs withX509Cert tcerts $ flip withArrayLen $ \ tcertsLen tcertsPtr -> do
                withPtrs withX509CRL crls $ flip withArrayLen $ \ crlsLen crlsPtr -> do
                    maybe ($ nullPtr) String.withCString tpath $ \ tpathPtr -> do
                        asCString hostname $ \ hostnamePtr -> do
                            alloca $ \ statusPtr -> do
                                success <- throwBotanCatchingSuccess $ botan_x509_cert_verify_with_crl
                                    statusPtr
                                    certPtr
                                    (ConstPtr icertsPtr)
                                    (fromIntegral icertsLen)
                                    (ConstPtr tcertsPtr)
                                    (fromIntegral tcertsLen)
                                    (ConstPtr crlsPtr)
                                    (fromIntegral crlsLen)
                                    (ConstPtr tpathPtr)
                                    (fromIntegral strength)
                                    (ConstPtr hostnamePtr)
                                    time
                                code <- fromIntegral <$> peek statusPtr
                                return (success, code)