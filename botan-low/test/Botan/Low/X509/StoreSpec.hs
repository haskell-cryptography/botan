module Botan.Low.X509.StoreSpec
( spec
) where

import Test.Prelude

import Data.ByteString.Char8 as BC

import System.Directory (removeFile, doesFileExist)

import Botan.Low.RNG
import Botan.Low.X509
import Botan.Low.X509.Store

import Paths_botan_low

dbFile :: FilePath
dbFile = "test-data/x509-store.db"

dbPasswd :: ByteString
dbPasswd = ""

-- TODO: Better than this
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

inMemCertDir :: FilePath
inMemCertDir = "test-data/certs"

flatfileFile :: FilePath
flatfileFile = "test-data/flatfile.certstore"

mkTempSqlStore :: IO  X509CertStore
mkTempSqlStore = do
    tmpDBPath <- getDataFileName "test-data/x509-sql-tmp.db"
    exists <- doesFileExist tmpDBPath
    when exists $ removeFile tmpDBPath
    rng <- rngInit "system"
    x509CertStoreSqlite3Create (BC.pack tmpDBPath) dbPasswd rng "test"

spec :: Spec
spec = focus $ do
    describe "X509CertStore" $ do
        -- Generic cert store functions
        it "x509CertStoreFindCert" $ do
            pass :: IO ()
        it "x509CertStoreFindAllCerts" $ do
            pass :: IO ()
        it "x509CertStoreFindCertByPubkeySHA1" $ do
            pass :: IO ()
        it "x509CertStoreFindCertByRawSubjectDNSHA256" $ do
            pass :: IO ()
        it "x509CertStoreFindCRLFor" $ do
            pass :: IO ()
        it "x509CertStoreCertificateKnown" $ do
            pass :: IO ()
        -- InMemory cert store functions
        it "x509CertStoreInMemoryLoadDir" $ do
            inMemPath <- BC.pack <$> getDataFileName inMemCertDir
            inMem <- x509CertStoreInMemoryLoadDir inMemPath
            pass :: IO ()
        it "x509CertStoreInMemoryLoadCert" $ do
            inMem <- x509CertStoreInMemoryLoadCert =<< loadTestCert
            pass :: IO ()
        it "x509CertStoreInMemoryCreate" $ do
            inMem <- x509CertStoreInMemoryCreate
            pass :: IO ()
        it "x509CertStoreInMemoryAddCertificate" $ do
            pass :: IO ()
        it "x509CertStoreInMemoryAddCRL" $ do
            pass :: IO ()
        -- Flatfile cert store functions
        it "x509CertStoreFlatfileCreate" $ do
            flatfilePath <- BC.pack <$> getDataFileName flatfileFile
            -- NOTE: Currently fails with BAD_PARAMETER because the file is empty.
            flat <- x509CertStoreFlatfileCreate flatfilePath False
            pass :: IO ()
        -- SQL cert store functions
        it "x509CertStoreSQLInsertCert" $ do
            sql <- mkTempSqlStore
            testCert <- loadTestCert
            x509CertStoreSQLInsertCert sql testCert
            pass :: IO ()
        it "x509CertStoreSQLRemoveCert" $ do
            sql <- mkTempSqlStore
            testCert <- loadTestCert
            x509CertStoreSQLInsertCert sql testCert
            x509CertStoreSQLRemoveCert sql testCert
            pass :: IO ()
        it "x509CertStoreSQLFindKey" $ do
            -- NOTE: Need a cert and the privkey it was signed with to do this
            pass :: IO ()
        it "x509CertStoreSQLFindCertsForKey" $ do
            -- NOTE: Need a cert and the privkey it was signed with to do this
            pass :: IO ()
        it "x509CertStoreSQLInsertKey" $ do
            -- NOTE: Need a cert and the privkey it was signed with to do this
            pass :: IO ()
        it "x509CertStoreSQLRemoveKey" $ do
            -- NOTE: Need a cert and the privkey it was signed with to do this
            pass :: IO ()
        it "x509CertStoreSQLRevokeCert" $ do
            sql <- mkTempSqlStore
            testCert <- loadTestCert
            x509CertStoreSQLInsertCert sql testCert
            x509CertStoreSQLRevokeCert sql
                testCert
                0   -- "    `Unspecified"
                1701393290
            pass :: IO ()
        it "x509CertStoreSQLAffirmCert" $ do
            sql <- mkTempSqlStore
            testCert <- loadTestCert
            x509CertStoreSQLInsertCert sql testCert
            x509CertStoreSQLAffirmCert sql testCert
            pass :: IO ()
        it "x509CertStoreSQLGenerateCRLs" $ do
            sql <- mkTempSqlStore
            -- TODO: Load with appropriate data
            crls <- x509CertStoreSQLGenerateCRLs sql
            pass :: IO ()
        -- Sqlite3 cert store functions
        it "x509CertStoreSqlite3Create" $ do
            dbPath <- BC.pack <$> getDataFileName dbFile
            rng <- rngInit "system"
            x509CertStoreSqlite3Create dbPath dbPasswd rng "test"
            pass :: IO ()
        -- System cert store functions
        it "x509CertStoreSystemCreate" $ do
            sys <- x509CertStoreSystemCreate
            pass
