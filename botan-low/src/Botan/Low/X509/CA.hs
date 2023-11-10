module Botan.Low.X509.CA where

import Botan.Low.Error
import Botan.Low.Prelude
import Botan.Low.Hash
import Botan.Low.MPI
import Botan.Low.PubKey
import Botan.Low.PubKey.Sign
import Botan.Low.RNG
import Botan.Low.X509

import Botan.Bindings.X509.CA
import Botan.Bindings.X509.Ext

-- /*
-- * X.509 certificate authority
-- **************************/

newtype X509CA = MkX509CA { getX509CAForeignPtr :: ForeignPtr X509CAStruct }

withX509CAPtr :: X509CA -> (X509CAPtr -> IO a) -> IO a
withX509CAPtr = withForeignPtr . getX509CAForeignPtr

-- PKCS10Request
newtype X509CSR = MkX509CSR { getX509CSRForeignPtr :: ForeignPtr PKCS10RequestStruct }

withX509CSRPtr :: X509CSR -> (PKCS10RequestPtr -> IO a) -> IO a
withX509CSRPtr = withForeignPtr . getX509CSRForeignPtr

newtype X509Extensions = MkX509Extensions { getX509ExtensionsForeignPtr :: ForeignPtr X509ExtensionsStruct }

withX509ExtensionsPtr :: X509Extensions -> (X509ExtensionsPtr -> IO a) -> IO a
withX509ExtensionsPtr = withForeignPtr . getX509ExtensionsForeignPtr

type X509DN = ByteString

-- NOTE: It is unknown which paddings are accepted (eg, compare cbc vs pk padding)
type X509PaddingName = ByteString
type X509Challenge = ByteString

x509CACreate :: X509Cert -> PrivKey -> HashName -> RNGCtx -> IO X509CA
x509CACreate = undefined

x509CACreatePadding :: X509Cert -> PrivKey -> HashName -> X509PaddingName -> RNGCtx -> IO X509CA
x509CACreatePadding = undefined

x509CADestroy :: X509CA -> IO ()
x509CADestroy ca = finalizeForeignPtr (getX509CAForeignPtr ca)

x509CASignRequest :: X509CA -> X509CSR -> RNGCtx -> Word64 -> Word64 -> IO X509Cert
x509CASignRequest = undefined

-- NOTE: This is a static function on X509CA, so it doesn't take an actual X509CA object
x509CAMakeCertSerial :: SignCtx -> RNGCtx -> MP -> SignAlgoName -> PubKey -> Word64 -> Word64 -> X509DN -> X509DN -> X509Extensions -> IO X509Cert
x509CAMakeCertSerial = undefined

x509CAChooseExtensions :: X509CSR -> X509Cert -> HashName -> IO X509Extensions
x509CAChooseExtensions = undefined

-- TODO: Move to Botan.Bindings.X509.CSR    

-- /*
-- * X.509 certificate signing request
-- **************************/

newtype X509CertOptions = MkX509CertOptions { getX509CertOptionsForeignPtr :: ForeignPtr X509CertOptionsStruct }

withX509CertOptionsPtr :: X509CertOptions -> (X509CertOptionsPtr -> IO a) -> IO a
withX509CertOptionsPtr = withForeignPtr . getX509CertOptionsForeignPtr

x509CreateCertReq :: X509CertOptions -> PrivKey -> HashName -> RNGCtx -> IO X509CSR
x509CreateCertReq = undefined

x509CSRCreate :: PrivKey -> X509DN -> X509Extensions -> HashName -> RNGCtx -> X509PaddingName -> X509Challenge -> IO X509CSR
x509CSRCreate privKey subjectDn exts hash_fn rng padding_fn challenge = undefined

x509CSRDestroy :: X509CSR -> IO ()
x509CSRDestroy csr = finalizeForeignPtr (getX509CSRForeignPtr csr)

x509CreateSelfSignedCert :: X509CertOptions -> PrivKey -> HashName -> RNGCtx -> IO X509Cert
x509CreateSelfSignedCert = undefined
