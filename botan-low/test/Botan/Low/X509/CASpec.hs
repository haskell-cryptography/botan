module Botan.Low.X509.CASpec
( spec
) where

import           Test.Prelude

import           Botan.Low.PubKey
import           Botan.Low.RNG
import           Botan.Low.X509
import           Botan.Low.X509.CA
import           Botan.Low.X509.CSR
import           Botan.Low.X509.Options

-- NOTE: Failing because not properly implemented on C++ side
main :: IO ()
main = hspec $ do
    describe "X509CA" $ do
        it "x509CACreate" $ do
            rng <- rngInit "system"
            caKey <- privKeyCreate "RSA" "2048" rng
            caOptions <- x509CertOptionsCreateCommon "example.org" "US" "ExampleOrg" "ExampleOrgUnit" (60 * 60 * 24)
            caCert <- x509CreateSelfSignedCert caOptions caKey "SHA-256" rng
            ca <- x509CACreate caCert caKey "SHA-256" rng
            pass
        it "x509CACreatePadding" $ do
            rng <- rngInit "system"
            caKey <- privKeyCreate "RSA" "2048" rng
            caOptions <- x509CertOptionsCreateCommon "example.org" "US" "ExampleOrg" "ExampleOrgUnit" (60 * 60 * 24)
            caCert <- x509CreateSelfSignedCert caOptions caKey "SHA-256" rng
            let padding = "" -- TODO: Figure out available paddings for X509
            ca <- x509CACreatePadding caCert caKey "SHA-256" padding rng
            pass
        it "x509CASignRequest" $ do
            rng <- rngInit "system"
            caKey <- privKeyCreate "RSA" "2048" rng
            caOptions <- x509CertOptionsCreateCommon "example.org" "US" "ExampleOrg" "ExampleOrgUnit" (60 * 60 * 24)
            caCert <- x509CreateSelfSignedCert caOptions caKey "SHA-256" rng
            ca <- x509CACreate caCert caKey "SHA-256" rng
            csrKey <- privKeyCreate "RSA" "2048" rng
            csrOptions <- x509CertOptionsCreateCommon "example.org" "US" "ExampleOrg" "ExampleOrgUnit" (60 * 60 * 24)
            csr <- x509CreateCertReq csrOptions csrKey "SHA-256" rng
            cert <- x509CASignRequest ca csr rng 1701393290 (1701393290 + (60 * 60 * 24))
            pass
        -- TODO:
        it "x509CAMakeCertSerial" $ do
            pending
        -- TODO:
        it "x509CAChooseExtensions" $ do
            pending
