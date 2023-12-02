module Botan.Low.X509.OptionsSpec
( spec
) where

import Test.Prelude

import Data.Bits

import Botan.Low.X509
import Botan.Low.X509.Options

spec :: Spec
spec = do
    describe "X509CertOptions" $ do
        it "x509CertOptionsCreate" $ do
            opts <- x509CertOptionsCreate
            pass
        it "x509CertOptionsCreateCommon" $ do
            opts <- x509CertOptionsCreateCommon
                "example.org" "US" "ExampleOrg" "ExampleOrgUnit" (60 * 60 * 24)
            pass
        it "x509CertOptionsSetCommonName" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetCommonName opts "example.com"
            pass
        it "x509CertOptionsSetCountry" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetCountry opts "US"
            pass
        it "x509CertOptionsSetOrg" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetOrg opts "ExampleOrg"
            pass
        it "x509CertOptionsSetOrgUnit" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetOrgUnit opts "ExampleOrgUnit"
            pass
        it "x509CertOptionsSetMoreOrgUnits" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetMoreOrgUnits opts [ "OrgUnitA", "OrgUnitB" ]
            pass
        it "x509CertOptionsSetLocality" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetLocality opts "Townsville"
            pass
        it "x509CertOptionsSetState" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetState opts "Texas"
            pass
        it "x509CertOptionsSetSerialNumber" $ do
            -- NOTE: Probably need to figure out what validity is here
            opts <- x509CertOptionsCreate
            x509CertOptionsSetSerialNumber opts "DEADBEEF"
            pass
        it "x509CertOptionsSetEmail" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetEmail opts "email@example.org"
            pass
        it "x509CertOptionsSetURI" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetURI opts "https://example.org"
            pass
        it "x509CertOptionsSetIP" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetIP opts "127.0.0.1"
            pass
        it "x509CertOptionsSetDNS" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetDNS opts "example.org"
            pass
        it "x509CertOptionsSetMoreDNS" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetMoreDNS opts [ "alt.example.org", "xmpp.example.org" ]
            pass
        it "x509CertOptionsSetXMPP" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetXMPP opts "example@xmpp.example.org"
            pass
        it "x509CertOptionsSetChallenge" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetChallenge opts "foo"
            pass
        it "x509CertOptionsSetStart" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetStart opts 1701393290
            pass
        it "x509CertOptionsSetEnd" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetEnd opts $ 1701393290 + (60 * 60 * 24)
            pass
        it "x509CertOptionsSetIsCA" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetIsCA opts True
            pass
        it "x509CertOptionsSetPathLimit" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetPathLimit opts 5
            pass
        it "x509CertOptionsSetPaddingScheme" $ do
            -- TODO: Actually figure out what x509 padding schemes are available
            -- opts <- x509CertOptionsCreate
            -- x509CertOptionsSetPaddingScheme opts ""
            pending
        it "x509CertOptionsSetKeyConstraints" $ do
            opts <- x509CertOptionsCreate
            x509CertOptionsSetKeyConstraints opts $ foldr (.|.) 0 $ fmap fromIntegral
                [ DigitalSignature
                , KeyCertSign
                , CRLSign
                ]
            pass
        it "x509CertOptionsSetExConstraints" $ do
            -- TODO: Need extended constraints logic
            -- opts <- x509CertOptionsCreate
            -- x509CertOptionsSetExConstraints opts _
            pending
        it "x509CertOptionsSetExtensions" $ do
            -- TODO: Need extensions completed
            -- opts <- x509CertOptionsCreate
            -- x509CertOptionsSetExtensions opts _
            pending