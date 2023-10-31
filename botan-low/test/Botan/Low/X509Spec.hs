module Botan.Low.X509Spec
( spec
) where

import Test.Prelude

import Botan.Low.X509

testCert :: ByteString
testCert = ""

testCertFile :: FilePath
testCertFile = ""

testCertHostname :: ByteString
testCertHostname = "foo.com"

spec :: Spec
spec = focus $ do
    it "x509CertLoad" $ do
        cert <- x509CertLoad testCert
        pass
    it "x509CertLoadFile" $ do
        cert <- x509CertLoadFile testCertFile
        pass
    it "x509CertDup" $ do
        cert <- x509CertLoad testCert
        dup <- x509CertDup cert
        -- TODO: parity check, eg:  x509CertGetPublicKey cert == x509CertGetPublicKey dup
        pass
    it "x509CertGetTimeStarts" $ do
        cert <- x509CertLoad testCert
        ts <- x509CertGetTimeStarts cert
        pass
    it "x509CertGetTimeExpires" $ do
        cert <- x509CertLoad testCert
        te <- x509CertGetTimeExpires cert
        pass
    it "x509CertNotBefore" $ do
        cert <- x509CertLoad testCert
        nb <- x509CertNotBefore cert
        pass
    it "x509CertNotAfter" $ do
        cert <- x509CertLoad testCert
        na <- x509CertNotAfter cert
        pass
        