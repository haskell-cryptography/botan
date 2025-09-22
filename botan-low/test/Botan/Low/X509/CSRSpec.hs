module Botan.Low.X509.CSRSpec
( spec
) where

import           Test.Prelude

import           Botan.Low.PubKey
import           Botan.Low.RNG

import           Botan.Low.X509
import           Botan.Low.X509.CSR
import           Botan.Low.X509.Options

import           Data.Bits

mkTestOptions :: IO X509CertOptions
mkTestOptions = do
    opts <- x509CertOptionsCreateCommon "example.org" "US" "ExampleOrg" "ExampleOrgUnit" (60 * 60 * 24)
    -- x509CertOptionsSetMoreOrgUnits opts [ "OrgUnitA", "OrgUnitB" ]
    -- x509CertOptionsSetLocality opts "Townsville"
    -- x509CertOptionsSetState opts "Texas"
    -- x509CertOptionsSetEmail opts "email@example.org"
    -- x509CertOptionsSetURI opts "https://example.org"
    -- x509CertOptionsSetIP opts "127.0.0.1"
    -- x509CertOptionsSetDNS opts "example.org"
    -- x509CertOptionsSetMoreDNS opts [ "alt.example.org", "xmpp.example.org" ]
    -- x509CertOptionsSetXMPP opts "example@xmpp.example.org"
    -- x509CertOptionsSetKeyConstraints opts (fromIntegral NoConstraints)
    return opts

mkRequestOptions :: IO X509CertOptions
mkRequestOptions = mkTestOptions
mkSelfSignedOptions :: IO X509CertOptions
mkSelfSignedOptions = do
    opts <- mkTestOptions
    -- x509CertOptionsSetChallenge opts "foo"
    x509CertOptionsSetIsCA opts True
    x509CertOptionsSetPathLimit opts 5
    -- x509CertOptionsSetKeyConstraints opts $ foldr (.|.) 0 $ fmap fromIntegral
    --                 [ DigitalSignature
    --                 , KeyCertSign
    --                 , CRLSign
    --                 ]
    return opts

main :: IO ()
main = hspec $ do
    describe "X509CSR" $ do
        it "x509CreateCertReq" $ do
            rng <- rngInit "system"
            key <- privKeyCreate "RSA" "2048" rng
            options <- mkTestOptions
            csr <- x509CreateCertReq options key "SHA-256" rng
            pass
        it "x509CSRCreate" $ do
            -- TODO: Relies on Extensions being complete, plus manual encoding of subjectDN
            -- rng <- rngInit "system"
            -- key <- privKeyCreate "Ed25519" "" rng
            -- -- NOTE: Guessing at the expected format here
            -- let subjectDN = "CN=\"example.org\",C=\"US\",O=\"ExampleOrg\""
            -- extensions <- undefined -- TODO: create empty extensions
            -- x509CSRCreate key subjectDN extensions "SHA-256" rng "" ""
            pending
        -- NOTE: Should self-signed be here under CSR, under CA, or under its own thing?
        it "x509CreateSelfSignedCert" $ do
            rng <- rngInit "system"
            key <- privKeyCreate "RSA" "2048" rng
            options <- mkTestOptions
            cert <- x509CreateSelfSignedCert options key "SHA-256" rng
            pass

