{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.X509 (tests) where

import           Botan.Low.X509
import           Data.ByteString
import           Data.Word
import           Paths_botan_low
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_x509" spec_x509
    -- TODO: implement pending tests
    pure $ localOption TreatPendingAsSuccess
         $ testGroup "Test.Botan.Low.X509" [
        specs
      ]

-- NOTE: Taken from https://fm4dd.com/openssl/certexamples.shtm
testCert :: ByteString
testCert = "-----BEGIN CERTIFICATE-----\
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

-- NOTE: Taken from https://fm4dd.com/openssl/certexamples.shtm
testCertFile :: FilePath
testCertFile = "test-data/4096b-rsa-example-cert.pem"

{-
Version: 1
Subject: C="JP",X520.State="Tokyo",O="Frank4DD",CN="www.example.com"
Issuer: C="JP",X520.State="Tokyo",X520.Locality="Chuo-ku",O="Frank4DD",OU="WebCert Support",CN="Frank4DD Web CA",PKCS9.EmailAddress="support@frank4dd.com"
Issued: 2012/08/22 05:28:00 UTC
Expires: 2017/08/21 05:28:00 UTC
Constraints:
 None
Signature algorithm: RSA/EMSA3(SHA-1)
Serial number: 0DFD
Public Key [RSA-4096]

-----BEGIN PUBLIC KEY-----
MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAsL1iEzi3sk20tUP1GnKn
iCyCtelBy70spiJW24k+5qQ+EjMAd+N8aSJVzeuHwtGNcpU+iy3l+ErewHCaxiFd
wDJiXLA7Dc4KOe+y6rTb5zpCx9BqI4rBRCkIkRF+oDoKvbVkqsGhDXHExLAF7leg
ENUk/hterNNIjfdoY1/Vf1eurJ0cE7Cf6eFkaS0nQI+Nu9oYjNfaiIPc64fdntq0
MuxP1EoVuIKTq4YNn+n3AgZvmlyIGvqsWki3IXA1Lz166SMU3fzlkNt0IbyBM5Bm
z5QQPCezcPSgsmsW2DARW9YtJQY8Ci45nKIoYiOz1bYQDrvwe9Q9oSnBYyqX7+A9
VGpv9FbpisIcLoWVTYy6tQUdRSkSdQoqCxuMAk69C1YLb71MoRa0vtz3VEdE+R5Q
EFjzMkAx4AqWzh1tMHNIW7jXjv5UvNi44nhjRcSpjARRfZbDds7AOkMN9l5G9vxB
ZbVwrabjsFc7XZODA652g18vczGbqhR6b+ZVk2w1cA3chEDXJWJWwBGw3rxEKP6w
DmRZfeDLut6wIC4j3mTeCHUv+PKK+SmkGgjntA7gG+BljSEONnGEOU7BB1rfhSDg
DEqX/YTT4w3rtbn3+NAzrbIshnl/TVYqirbbWh6b3e629s7GrG3ABlJfnzUCY+Ki
Jj0gfU4amaj07pBHDPzbW3kCAwEAAQ==
-----END PUBLIC KEY-----

-}

testCertHostname :: ByteString
testCertHostname = "www.example.com"

testCertValidTimestamp :: Word64
testCertValidTimestamp = 1420092000

spec_x509 :: Spec
spec_x509 = do
    it "x509CertLoad" $ do
        _cert <- x509CertLoad testCert
        pass
    it "x509CertLoadFile" $ do
        _cert <- x509CertLoadFile =<< getDataFileName testCertFile
        pass
    it "x509CertDup" $ do
        cert <- x509CertLoad testCert
        _dup <- x509CertDup cert
        -- TODO: parity check, eg:  x509CertGetPublicKey cert == x509CertGetPublicKey dup
        pass
    it "x509CertGetTimeStarts" $ do
        cert <- x509CertLoad testCert
        _ts <- x509CertGetTimeStarts cert
        pass
    it "x509CertGetTimeExpires" $ do
        cert <- x509CertLoad testCert
        _te <- x509CertGetTimeExpires cert
        pass
    it "x509CertNotBefore" $ do
        cert <- x509CertLoad testCert
        _nb <- x509CertNotBefore cert
        pass
    it "x509CertNotAfter" $ do
        cert <- x509CertLoad testCert
        _na <- x509CertNotAfter cert
        pass
    it "x509CertGetPubKeyFingerprint" $ do
        cert <- x509CertLoad testCert
        _fp <- x509CertGetPubKeyFingerprint cert "SHA-256" -- TODO: HashName
        pass
    it "x509CertGetSerialNumber" $ do
        cert <- x509CertLoad testCert
        _sn <- x509CertGetSerialNumber cert
        pass
    it "x509CertGetAuthorityKeyId" $ do
        cert <- x509CertLoad testCert
        _akid <- x509CertGetAuthorityKeyId cert
        pass
    it "x509CertGetSubjectKeyId" $ do
        cert <- x509CertLoad testCert
        _sid <- x509CertGetSubjectKeyId cert
        pass
    it "x509CertGetPublicKeyBits" $ do
        cert <- x509CertLoad testCert
        _pkbits <- x509CertGetPublicKeyBits cert
        pass
    it "x509CertGetPublicKey" $ do
        cert <- x509CertLoad testCert
        _pk <- x509CertGetPublicKey cert
        pass
    it "x509CertGetIssuerDN" $ do
        cert <- x509CertLoad testCert
        _ <- x509CertGetIssuerDN cert "CN" 0 -- TODO: Distinguished names, etc
        pass
    it "x509CertGetSubjectDN" $ do
        cert <- x509CertLoad testCert
        _ <- x509CertGetSubjectDN cert "CN" 0 -- TODO: Distinguished names, etc
        pass
    it "x509CertToString" $ do
        _cert <- x509CertLoad testCert
        pass
    it "x509CertAllowedUsage" $ do
        cert <- x509CertLoad testCert
        _allowed <- x509CertAllowedUsage cert NoConstraints
        pass
    it "x509CertHostnameMatch" $ do
        cert <- x509CertLoad testCert
        _matched <- x509CertHostnameMatch cert testCertHostname
        pass
    it "x509CertVerify" $ do
        cert <- x509CertLoad testCert
        (_success, _status) <- x509CertVerify cert [] [] Nothing 0 testCertHostname testCertValidTimestamp
        pass
    it "x509CertValidationStatus" $ do
        _cert <- x509CertLoad testCert
        _ <- x509CertValidationStatus 0
        pending
    -- NOTE: May need to generate a proper test cert with CA and CRL
    it "x509CRLLoad" $ do
        _cert <- x509CertLoad testCert
        -- x509CRLLoad cert
        pending
    it "x509CRLLoadFile" $ do
        _cert <- x509CertLoad testCert
        -- x509CRLLoadFile cert
        pending
    it "x509IsRevoked" $ do
        _cert <- x509CertLoad testCert
        -- x509IsRevoked cert
        pending
    it "x509CertVerifyWithCLR" $ do
        _cert <- x509CertLoad testCert
        -- x509CertVerifyWithCLR cert
        pending

