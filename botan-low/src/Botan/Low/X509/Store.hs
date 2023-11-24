module Botan.Low.X509.Store where

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.PubKey
import Botan.Low.RNG
import Botan.Low.X509

import Botan.Bindings.X509.Store

-- data X509CertStoreStruct
-- type X509CertStorePtr = Ptr X509CertStoreStruct

-- foreign import ccall unsafe "&botan_x509_cert_store_destroy" botan_x509_cert_store_destroy :: FinalizerPtr X509CertStoreStruct

newtype X509CertStore = MkX509CertStore { getX509CertStoreForeignPtr :: ForeignPtr X509CertStoreStruct }

withX509CertStorePtr :: X509CertStore -> (X509CertStorePtr -> IO a) -> IO a
withX509CertStorePtr = withForeignPtr . getX509CertStoreForeignPtr

x509CertStoreDestroy :: X509CertStore -> IO ()
x509CertStoreDestroy ca = finalizeForeignPtr (getX509CertStoreForeignPtr ca)

-- foreign import ccall unsafe botan_x509_cert_store_find_cert
--     :: Ptr X509CertPtr
--     -> X509CertStorePtr
--     -> Ptr Word8 -> CSize
--     -> Ptr Word8 -> CSize
--     -> IO BotanErrorCode
x509CertStoreFindCert :: X509CertStore -> ByteString -> ByteString -> IO (Maybe X509Cert)
x509CertStoreFindCert = undefined

-- foreign import ccall unsafe botan_x509_cert_store_find_all_certs
--     :: Ptr X509CertPtr -> Ptr CSize
--     -> X509CertStorePtr
--     -> Ptr Word8 -> CSize
--     -> Ptr Word8 -> CSize
--     -> IO BotanErrorCode
x509CertStoreFindAllCerts :: X509CertStore -> ByteString -> ByteString -> IO [X509Cert]
x509CertStoreFindAllCerts = undefined

-- foreign import ccall unsafe botan_x509_cert_store_find_cert_by_pubkey_sha1
--     :: Ptr X509CertPtr
--     -> X509CertStorePtr
--     -> Ptr Word8        -- NOTE: SHA1 hash length is static, so we can just drop the size_t
--     -> IO BotanErrorCode
x509CertStoreFindCertByPubkeySHA1 :: X509CertStore -> ByteString -> IO (Maybe X509Cert)
x509CertStoreFindCertByPubkeySHA1 = undefined

-- foreign import ccall unsafe botan_x509_cert_store_find_cert_by_raw_subject_dn_sha256
--     :: Ptr X509CertPtr
--     -> X509CertStorePtr
--     -> Ptr Word8        -- NOTE: SHA1 hash length is static, so we can just drop the size_t
--     -> IO BotanErrorCode
x509CertStoreFindCertByRawSubjectDNSHA256 :: X509CertStore -> ByteString -> IO (Maybe X509Cert)
x509CertStoreFindCertByRawSubjectDNSHA256 = undefined

-- foreign import ccall unsafe botan_x509_cert_store_find_crl_for
--     :: Ptr X509CRLPtr
--     -> X509CertStorePtr
--     -> X509CertPtr
--     -> IO BotanErrorCode
x509CertStoreFindCRLFor :: X509CertStore -> X509Cert -> IO (Maybe X509CRL)
x509CertStoreFindCRLFor = undefined

-- -- // NOTE: Returns cert_store.certificate_known ? 0 : -1;
-- foreign import ccall unsafe botan_x509_cert_store_certificate_known
--     :: X509CertStorePtr
--     -> X509CertPtr
--     -> IO BotanErrorCode
x509CertStoreCertificateKnown :: X509CertStore -> X509Cert -> IO Bool
x509CertStoreCertificateKnown = undefined

-- {-
-- In-memory cert store
-- -}

-- foreign import ccall unsafe botan_x509_cert_store_in_memory_load_dir
--     :: Ptr X509CertStorePtr
--     -> Ptr CChar
--     -> IO BotanErrorCode
x509CertStoreInMemoryLoadDir :: ByteString -> IO X509CertStore
x509CertStoreInMemoryLoadDir = undefined

-- foreign import ccall unsafe botan_x509_cert_store_in_memory_load_cert
--     :: Ptr X509CertStorePtr
--     -> X509CertPtr
--     -> IO BotanErrorCode
x509CertStoreInMemoryLoadCert :: X509Cert -> IO X509CertStore
x509CertStoreInMemoryLoadCert = undefined

-- foreign import ccall unsafe botan_x509_cert_store_in_memory_create
--     :: Ptr X509CertStorePtr
--     -> IO BotanErrorCode
x509CertStoreInMemoryCreate :: IO X509CertStore
x509CertStoreInMemoryCreate = undefined

-- foreign import ccall unsafe botan_x509_cert_store_in_memory_add_certificate
--     :: X509CertStorePtr
--     -> X509CertPtr
--     -> IO BotanErrorCode
x509CertStoreInMemoryAddCertificate :: X509CertStore -> X509Cert -> IO ()
x509CertStoreInMemoryAddCertificate = undefined

-- foreign import ccall unsafe botan_x509_cert_store_in_memory_add_crl
--     :: X509CertStorePtr
--     -> X509CRLPtr
--     -> IO BotanErrorCode
x509CertStoreInMemoryAddCRL :: X509CertStore -> X509CRL -> IO ()
x509CertStoreInMemoryAddCRL = undefined

-- {-
-- Flatfile cert store
-- -}

-- -- TODO: Probably rename botan_x509_cert_store_flatfile_load
-- foreign import ccall unsafe botan_x509_cert_store_flatfile_create
--     :: Ptr X509CertStorePtr
--     -> Ptr CChar
--     -> CBool
--     -> IO BotanErrorCode
x509CertStoreFlatfileCreate :: ByteString -> Bool -> IO X509CertStore
x509CertStoreFlatfileCreate = undefined

-- {-
-- SQL cert store
-- -}

-- -- NOTE: Returns boolean success code
-- foreign import ccall unsafe botan_x509_cert_store_sql_insert_cert
--     :: X509CertStorePtr
--     -> X509CertPtr
--     -> IO BotanErrorCode
x509CertStoreSQLInsertCert :: X509CertStore -> X509Cert -> IO Bool
x509CertStoreSQLInsertCert = undefined

-- -- NOTE: Returns boolean success code
-- foreign import ccall unsafe botan_x509_cert_store_sql_remove_cert
--     :: X509CertStorePtr
--     -> X509CertPtr
--     -> IO BotanErrorCode
x509CertStoreSQLRemoveCert :: X509CertStore -> X509Cert -> IO Bool
x509CertStoreSQLRemoveCert = undefined

-- -- NOTE: Returns nullPtr if not found
-- foreign import ccall unsafe botan_x509_cert_store_sql_find_key
--     :: Ptr PrivKeyPtr
--     -> X509CertStorePtr
--     -> X509CertPtr
--     -> IO BotanErrorCode
x509CertStoreSQLFindKey :: X509CertStore -> X509Cert -> IO (Maybe PrivKey)
x509CertStoreSQLFindKey = undefined

-- -- NOTE: See notes about returning arrays of things, improper return pointer type
-- foreign import ccall unsafe botan_x509_cert_store_sql_find_certs_for_key
--     :: Ptr X509CertPtr -> Ptr CSize
--     -> X509CertStorePtr
--     -> PrivKeyPtr
--     -> IO BotanErrorCode
x509CertStoreSQLFindCertsForKey :: X509CertStore -> PrivKey -> IO [X509Cert]
x509CertStoreSQLFindCertsForKey = undefined

-- -- NOTE: Returns boolean success code
-- foreign import ccall unsafe botan_x509_cert_store_sql_insert_key
--     :: X509CertStorePtr
--     -> X509CertPtr
--     -> PrivKeyPtr
--     -> IO BotanErrorCode
x509CertStoreSQLInsertKey :: X509CertStore -> X509Cert -> PrivKey -> IO Bool
x509CertStoreSQLInsertKey = undefined

-- -- NOTE: *DOES NOT* return boolean success code
-- foreign import ccall unsafe botan_x509_cert_store_sql_remove_key
--     :: X509CertStorePtr
--     -> PrivKeyPtr
--     -> IO BotanErrorCode
x509CertStoreSQLRemoveKey :: X509CertStore -> PrivKey -> IO Bool
x509CertStoreSQLRemoveKey = undefined

-- foreign import ccall unsafe botan_x509_cert_store_sql_revoke_cert
--     :: X509CertStorePtr
--     -> X509CertPtr
--     -> Word32
--     -> Word64
--     -> IO BotanErrorCode
x509CertStoreSQLRevokeCert :: X509CertStore -> X509Cert -> Word32 -> Word64 -> IO Bool
x509CertStoreSQLRevokeCert = undefined

-- foreign import ccall unsafe botan_x509_cert_store_sql_affirm_cert
--     :: X509CertStorePtr
--     -> X509CertPtr
--     -> IO BotanErrorCode
x509CertStoreSQLAffirmCert :: X509CertStore -> X509Cert -> IO Bool
x509CertStoreSQLAffirmCert = undefined

-- -- NOTE: See notes about returning arrays of things, improper return pointer type
-- foreign import ccall unsafe botan_x509_cert_store_sql_generate_crls
--     :: Ptr X509CRLPtr -> Ptr CSize
--     -> X509CertStorePtr
--     -> IO BotanErrorCode
x509CertStoreSQLGenerateCRLs :: X509CertStore -> IO [X509CRL]
x509CertStoreSQLGenerateCRLs = undefined

-- {-
-- SQLite3 cert store
-- -}

-- foreign import ccall unsafe botan_x509_cert_store_sqlite3_create
--     :: Ptr X509CertStorePtr
--     -> Ptr CChar
--     -> Ptr CChar
--     -> RNGPtr
--     -> Ptr CChar
--     -> IO BotanErrorCode
-- {-
x509CertStoreSqlite3Create :: ByteString -> ByteString -> RNGCtx -> ByteString -> IO X509CertStore
x509CertStoreSqlite3Create = undefined

-- -}

-- {-
-- System cert store
-- -}

-- foreign import ccall unsafe botan_x509_cert_store_system_create
--     :: Ptr X509CertStorePtr
--     -> IO BotanErrorCode
x509CertStoreSystemCreate :: IO X509CertStore
x509CertStoreSystemCreate = undefined

-- {-
-- MacOS cert store
-- -}

-- foreign import ccall unsafe botan_x509_cert_store_macos_create
--     :: Ptr X509CertStorePtr
--     -> IO BotanErrorCode
-- NOTE: OS-specific, covered by System certificate store type?

-- {-
-- Windows cert store
-- -}

-- foreign import ccall unsafe botan_x509_cert_store_windows_create
--     :: Ptr X509CertStorePtr
--     -> IO BotanErrorCode
-- NOTE: OS-specific, covered by System certificate store type?
