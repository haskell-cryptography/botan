module Botan.Low.X509.CSR where

import Botan.Low.Error
import Botan.Low.Hash (HashName(..))
import Botan.Low.Prelude
import Botan.Low.PubKey
import Botan.Low.RNG
import Botan.Low.X509
import Botan.Low.X509.Extensions
import Botan.Low.X509.Options

import Botan.Bindings.X509.CSR

-- /*
-- * X.509 certificate signing request
-- **************************/

type X509SubjectDN = ByteString
type X509IssuerDN = ByteString

-- NOTE: It is unknown which paddings are accepted (eg, compare cbc vs pk padding)
type X509PaddingName = ByteString
type X509Challenge = ByteString

newtype X509CSR = MkX509CSR { getX509CSRForeignPtr :: ForeignPtr X509CSRStruct }

withX509CSRPtr :: X509CSR -> (X509CSRPtr -> IO a) -> IO a
withX509CSRPtr = withForeignPtr . getX509CSRForeignPtr

x509CSRDestroy :: X509CSR -> IO ()
x509CSRDestroy csr = finalizeForeignPtr (getX509CSRForeignPtr csr)

x509CreateCertReq :: X509CertOptions -> PrivKey -> HashName -> RNGCtx -> IO X509CSR
x509CreateCertReq = undefined

x509CSRCreate :: PrivKey -> X509SubjectDN -> X509Extensions -> HashName -> RNGCtx -> X509PaddingName -> X509Challenge -> IO X509CSR
x509CSRCreate privKey subjectDn exts hash_fn rng padding_fn challenge = undefined

x509CreateSelfSignedCert :: X509CertOptions -> PrivKey -> HashName -> RNGCtx -> IO X509Cert
x509CreateSelfSignedCert = undefined


-- -- Certificate Signing Request, rename to that / CSR at higher levels
-- data X509CSRStruct
-- type X509CSRPtr = Ptr X509CSRStruct

-- foreign import ccall unsafe "&botan_x509_csr_destroy" botan_x509_csr_destroy :: FinalizerPtr X509CSRStruct

-- foreign import ccall unsafe botan_x509_create_cert_req
--     :: Ptr X509CSRPtr
--     -> X509CertOptionsPtr
--     -> PrivKeyPtr
--     -> Ptr CChar
--     -> RNGPtr
--     -> IO BotanErrorCode

-- foreign import ccall unsafe botan_x509_csr_create
--     :: Ptr X509CSRPtr
--     -> PrivKeyPtr
--     -> Ptr Word8 -> CSize
--     -> X509ExtensionsPtr
--     -> Ptr CChar
--     -> RNGPtr
--     -> Ptr CChar
--     -> Ptr CChar
--     -> IO BotanErrorCode
    