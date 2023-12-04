module Botan.Low.X509.CRLSpec
( spec
) where

import Test.Prelude

import Botan.Low.X509
import Botan.Low.X509.CRL

-- TODO: Better than this - consolidate
loadTestCert :: IO X509Cert
loadTestCert = x509CertLoad
    "-----BEGIN CERTIFICATE-----\
    \MIID2jCCA0MCAg39MA0GCSqGSIb3DQEBBQUAMIGbMQswCQYDVQQGEwJKUDEOMAwG\
    \A1UECBMFVG9reW8xEDAOBgNVBAcTB0NodW8ta3UxETAPBgNVBAoTCEZyYW5rNERE\
    \MRgwFgYDVQQLEw9XZWJDZXJ0IFN1cHBvcnQxGDAWBgNVBAMTD0ZyYW5rNEREIFdl\
    \YiBDQTEjMCEGCSqGSIb3DQEJARYUc3VwcG9ydEBmcmFuazRkZC5jb20wHhcNMTIw\
    \ODIyMDUyODAwWhcNMTcwODIxMDUyODAwWjBKMQswCQYDVQQGEwJKUDEOMAwGA1UE\
    \CAwFVG9reW8xETAPBgNVBAoMCEZyYW5rNEREMRgwFgYDVQQDDA93d3cuZXhhbXBs\
    \ZS5jb20wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCwvWITOLeyTbS1\
    \Q/UacqeILIK16UHLvSymIlbbiT7mpD4SMwB343xpIlXN64fC0Y1ylT6LLeX4St7A\
    \cJrGIV3AMmJcsDsNzgo577LqtNvnOkLH0GojisFEKQiREX6gOgq9tWSqwaENccTE\
    \sAXuV6AQ1ST+G16s00iN92hjX9V/V66snRwTsJ/p4WRpLSdAj4272hiM19qIg9zr\
    \h92e2rQy7E/UShW4gpOrhg2f6fcCBm+aXIga+qxaSLchcDUvPXrpIxTd/OWQ23Qh\
    \vIEzkGbPlBA8J7Nw9KCyaxbYMBFb1i0lBjwKLjmcoihiI7PVthAOu/B71D2hKcFj\
    \Kpfv4D1Uam/0VumKwhwuhZVNjLq1BR1FKRJ1CioLG4wCTr0LVgtvvUyhFrS+3PdU\
    \R0T5HlAQWPMyQDHgCpbOHW0wc0hbuNeO/lS82LjieGNFxKmMBFF9lsN2zsA6Qw32\
    \Xkb2/EFltXCtpuOwVztdk4MDrnaDXy9zMZuqFHpv5lWTbDVwDdyEQNclYlbAEbDe\
    \vEQo/rAOZFl94Mu63rAgLiPeZN4IdS/48or5KaQaCOe0DuAb4GWNIQ42cYQ5TsEH\
    \Wt+FIOAMSpf9hNPjDeu1uff40DOtsiyGeX9NViqKtttaHpvd7rb2zsasbcAGUl+f\
    \NQJj4qImPSB9ThqZqPTukEcM/NtbeQIDAQABMA0GCSqGSIb3DQEBBQUAA4GBAIAi\
    \gU3My8kYYniDuKEXSJmbVB+K1upHxWDA8R6KMZGXfbe5BRd8s40cY6JBYL52Tgqd\
    \l8z5Ek8dC4NNpfpcZc/teT1WqiO2wnpGHjgMDuDL1mxCZNL422jHpiPWkWp3AuDI\
    \c7tL1QjbfAUHAQYwmHkWgPP+T2wAv0pOt36GgMCM\
    \-----END CERTIFICATE-----\
    \"

-- NOTE: Failing because not properly implemented on C++ side
spec :: Spec
spec = do
    describe "CRLEntry" $ do
        it "x509CRLEntryCreate" $ do
            cert <- loadTestCert
            entry <- x509CRLEntryCreate cert BOTAN_X509_CRL_CODE_UNSPECIFIED
            pass
        it "x509CRLEntryGetSerialNumber" $ do
            cert <- loadTestCert
            entry <- x509CRLEntryCreate cert BOTAN_X509_CRL_CODE_UNSPECIFIED
            serial <- x509CRLEntryGetSerialNumber entry
            certSerial <- x509CertGetSerialNumber cert
            serial `shouldBe` certSerial
            pass
        it "x509CRLEntryGetExpireTime" $ do
            cert <- loadTestCert
            entry <- x509CRLEntryCreate cert BOTAN_X509_CRL_CODE_UNSPECIFIED
            expiry <- x509CRLEntryGetExpireTime entry
            -- certExpiry <- x509CertGetTimeExpires cert
            -- expiry `shouldBe` certExpiry
            -- NOTE: Can't because x509CertGetTimeExpires returns a bytestring (encoded time)
            --  and x509CRLEntryGetExpireTime returns a seconds-since-epoch word64
            pass
        it "x509CRLEntryGetReasonCode" $ do
            cert <- loadTestCert
            entry <- x509CRLEntryCreate cert BOTAN_X509_CRL_CODE_UNSPECIFIED
            code <- x509CRLEntryGetReasonCode entry
            code `shouldBe` BOTAN_X509_CRL_CODE_UNSPECIFIED
            pass
        it "x509CRLEntryGetExtensions" $ do
            cert <- loadTestCert
            entry <- x509CRLEntryCreate cert BOTAN_X509_CRL_CODE_UNSPECIFIED
            exts <- x509CRLEntryGetExtensions entry
            pass
