module Botan.Low.X509.CSR where

import Botan.Low.Error
import Botan.Low.Hash (HashName(..))
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.PubKey
import Botan.Low.RNG
import Botan.Low.X509
import Botan.Low.X509.Extensions
import Botan.Low.X509.Options

import Botan.Bindings.X509
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

-- NOTE: It really appears that this is the successful init pattern;
--  I ought to formalize it using type-level lists or something
x509CreateCertReq :: X509CertOptions -> PrivKey -> HashName -> RNGCtx -> IO X509CSR
x509CreateCertReq options key hash_fn rng = withX509CertOptionsPtr options $ \ optionsPtr -> do
    withPrivKeyPtr key $ \ keyPtr -> do
        asCString hash_fn $ \ hashPtr -> do
            withRNGPtr rng $ \ rngPtr -> do
                mkInit
                    MkX509CSR
                    (\ csrPtr -> botan_x509_create_cert_req csrPtr optionsPtr keyPtr hashPtr rngPtr)
                    botan_x509_csr_destroy

x509CSRCreate :: PrivKey -> X509SubjectDN -> X509Extensions -> HashName -> RNGCtx -> X509PaddingName -> X509Challenge -> IO X509CSR
x509CSRCreate privkey subjectDN exts hash_fn rng padding_fn challenge = do
    withPrivKeyPtr privkey $ \ privkeyPtr -> do
        asBytesLen subjectDN $ \ subjectDNPtr subjectDNLen -> do
            withX509ExtensionsPtr exts $ \ extsPtr -> do
                asCString hash_fn $ \ hashPtr -> do
                    withRNGPtr rng $ \ rngPtr -> do
                        asCString padding_fn $ \ paddingPtr -> do
                            asCString challenge $ \ challengePtr -> do
                                mkInit
                                    MkX509CSR
                                    (\ csrPtr -> botan_x509_csr_create
                                        csrPtr
                                        privkeyPtr
                                        subjectDNPtr subjectDNLen
                                        extsPtr
                                        hashPtr
                                        rngPtr
                                        paddingPtr
                                        challengePtr
                                    )
                                    botan_x509_csr_destroy

x509CreateSelfSignedCert :: X509CertOptions -> PrivKey -> HashName -> RNGCtx -> IO X509Cert
x509CreateSelfSignedCert options key hash_fn rng = do
    withX509CertOptionsPtr options $ \ optionsPtr -> do
        withPrivKeyPtr key $ \ keyPtr -> do
            asCString hash_fn $ \ hashPtr -> do
                withRNGPtr rng $ \ rngPtr -> do
                    mkInit
                        MkX509Cert
                        (\ certPtr -> botan_x509_create_self_signed_cert
                            certPtr
                            optionsPtr
                            keyPtr
                            hashPtr
                            rngPtr
                        )
                        botan_x509_cert_destroy
