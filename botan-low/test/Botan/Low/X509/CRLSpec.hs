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

-- TODO: Actually have a der-encoded CRL...
derEncodedCRL = ""

issuerDN = ""
this = 1701393290
next = this + (60 * 60 * 24)

-- TODO: Include issuerDNKey and issuerDNIndex into issuerDN
issuerDNKey = ""
issuerDNIndex = 0

loadTestCRL =  do
    cert <- loadTestCert
    entry <- x509CRLEntryCreate cert BOTAN_X509_CRL_CODE_UNSPECIFIED
    x509CRLCreate issuerDN this next [entry]


-- NOTE: Failing because not properly implemented on C++ side
spec :: Spec
spec = do
    describe "CRL" $ do
        it "x509CRLCreateDER" $ do
            crl <- x509CRLCreateDER derEncodedCRL
            pass
        it "x509CRLCreate" $ do
            -- TODO: Test with creating entries
            -- crl <- x509CRLCreate issuerDN this next []
            cert <- loadTestCert
            entry <- x509CRLEntryCreate cert BOTAN_X509_CRL_CODE_UNSPECIFIED
            crl <- x509CRLCreate issuerDN this next [entry]
            pass
        it "x509CRLGetRevoked" $ do
            crl <- loadTestCRL
            revoked <- x509CRLGetRevoked crl
            pass
        it "x509CRLGetIssuerDN" $ do
            crl <- loadTestCRL
            val <- x509CRLGetIssuerDN crl issuerDNKey issuerDNIndex
            pass
        it "x509CRLExtensions" $ do
            crl <- loadTestCRL
            exts <- x509CRLExtensions crl
            pass
        it "x509CRLAuthorityKeyId" $ do
            crl <- loadTestCRL
            akid <- x509CRLAuthorityKeyId crl
            pass
        it "x509CRLSerialNumber" $ do
            crl <- loadTestCRL
            serial <- x509CRLSerialNumber crl
            pass
        it "x509CRLThisUpdate" $ do
            crl <- loadTestCRL
            time <- x509CRLThisUpdate crl
            pass
        it "x509CRLNextUpdate" $ do
            crl <- loadTestCRL
            time <- x509CRLNextUpdate crl
            pass
        it "x509CRLIssuingDistributionPoint" $ do
            crl <- loadTestCRL
            idp <- x509CRLIssuingDistributionPoint crl
            pass
        it "x509CRLAddEntry" $ do
            crl <- x509CRLCreate issuerDN this next []
            cert <- loadTestCert
            entry <- x509CRLEntryCreate cert BOTAN_X509_CRL_CODE_UNSPECIFIED
            x509CRLAddEntry crl entry
            pass
        it "x509CRLRevokeCert" $ do
            crl <- x509CRLCreate issuerDN this next []
            cert <- loadTestCert
            x509CRLRevokeCert crl cert BOTAN_X509_CRL_CODE_UNSPECIFIED
            pass
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
