module Botan.Low.X509.PathSpec
( spec
) where

import Test.Prelude

import Botan.Low.X509
import Botan.Low.X509.Path
import Botan.Low.X509.Store

import Foreign.Ptr

-- TODO: Generate a real cert, this will definitely fail validation
--  since I've just copied it yet again
loadValidationCert :: IO X509Cert
loadValidationCert = x509CertLoad
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

mkValidation :: IO X509PathValidation
mkValidation = do
    store <- x509CertStoreInMemoryCreate -- NOTE: Unsure of purpose of store used in restrictions
    restrictions <- x509PathRestrictionsCreate False 80 False 0 store
    cert <- loadValidationCert
    -- NOTE: Unsure if same store is intended
    x509PathValidate
        cert
        restrictions
        store
        "host.example.org"
        (fromIntegral NoConstraints)
        1701393290
        0       -- OCSP timeout
        nullPtr -- OCSP response - not yet implemented

-- All failing because not yet implemented on the C++ side
main :: IO ()
main = hspec $ do
    it "x509PathRestrictionsCreate" $ do
        inMem <- x509CertStoreInMemoryCreate
        pr <- x509PathRestrictionsCreate False 80 False 0 inMem
        pass
    it "x509PathValidate" $ do
        store <- x509CertStoreInMemoryCreate -- NOTE: Unsure of purpose of store used in restrictions
        restrictions <- x509PathRestrictionsCreate False 80 False 0 store
        cert <- loadValidationCert
        -- NOTE: Unsure if same store is intended
        validation <- x509PathValidate
            cert
            restrictions
            store
            "host.example.org"
            (fromIntegral NoConstraints)
            1701393290
            0       -- OCSP timeout
            nullPtr -- OCSP response - not yet implemented
        pass
    it "x509PathValidationSuccessfulValidation" $ do
        validation <- mkValidation
        success <- x509PathValidationSuccessfulValidation validation
        pass
    it "x509PathValidationResultString" $ do
        validation <- mkValidation
        result <- x509PathValidationResultString validation
        pass
    it "x509PathValidationTrustRoot" $ do
        validation <- mkValidation
        root <- x509PathValidationTrustRoot validation
        pass
    it "x509PathValidationCertPath" $ do
        validation <- mkValidation
        certPath <- x509PathValidationCertPath validation
        pass
    it "x509PathValidationStatusCode" $ do
        validation <- mkValidation
        code <- x509PathValidationStatusCode validation
        pass
    it "x509PathValidationStatusCode" $ do
        validation <- mkValidation
        codes <- x509PathValidationAllStatusCodes validation
        pass
    it "x509PathValidationTrustedHashes" $ do
        validation <- mkValidation
        hashes <- x509PathValidationTrustedHashes validation
        pass
