module Botan.Low.X509.Store where

import Data.Bool
import Foreign.Marshal.Utils

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.PubKey
import Botan.Low.RNG
import Botan.Low.X509

import Botan.Bindings.PubKey
import Botan.Bindings.X509
import Botan.Bindings.X509.Store

newtype X509CertStore = MkX509CertStore { getX509CertStoreForeignPtr :: ForeignPtr X509CertStoreStruct }

withX509CertStorePtr :: X509CertStore -> (X509CertStorePtr -> IO a) -> IO a
withX509CertStorePtr = withForeignPtr . getX509CertStoreForeignPtr

x509CertStoreDestroy :: X509CertStore -> IO ()
x509CertStoreDestroy ca = finalizeForeignPtr (getX509CertStoreForeignPtr ca)

-- NOTE: mkInit cannot handle Maybes (checking for nullPtr), need a mkInitMaybe or to use maybePeek
x509CertStoreFindCert :: X509CertStore -> ByteString -> ByteString -> IO (Maybe X509Cert)
x509CertStoreFindCert store subject_dn key_id = withX509CertStorePtr store $ \ store_ptr -> do
    asBytesLen subject_dn $ \ subject_dn_ptr subject_dn_len -> do
        asBytesLen key_id $ \ key_id_ptr key_id_len -> do
            alloca $ \ outPtr -> do
                throwBotanIfNegative_ $ botan_x509_cert_store_find_cert
                    outPtr
                    store_ptr
                    subject_dn_ptr
                    subject_dn_len
                    key_id_ptr
                    key_id_len
                out <- peek outPtr
                if out == nullPtr
                then return Nothing
                else do
                    foreignPtr <- newForeignPtr botan_x509_cert_destroy out
                    return $ Just $ MkX509Cert foreignPtr

-- NOTE: Untested
-- TODO: Need some sort of allocArrayQuerying, or a mkArrayInit
x509CertStoreFindAllCerts :: X509CertStore -> ByteString -> ByteString -> IO [X509Cert]
x509CertStoreFindAllCerts store subject_dn key_id = withX509CertStorePtr store $ \ store_ptr -> do
    asBytesLen subject_dn $ \ subject_dn_ptr subject_dn_len -> do
        asBytesLen key_id $ \ key_id_ptr key_id_len -> do
            let fn arrPtr szPtr = botan_x509_cert_store_find_all_certs arrPtr szPtr store_ptr subject_dn_ptr subject_dn_len key_id_ptr key_id_len
            alloca $ \ szPtr -> do
                code <- fn nullPtr szPtr
                case code of
                    InsufficientBufferSpace -> do
                        sz <- fromIntegral <$> peek szPtr
                        allocaArray sz $ \ arrPtr -> do
                            throwBotanIfNegative_ $ fn arrPtr szPtr
                            certPtrs <- peekArray sz arrPtr
                            -- NOTE: Cannot use mkInit because that performs an alloca and a peek,
                            --  whereas we have already performed that work here
                            forM certPtrs $ \ certPtr -> do
                                foreignPtr <- newForeignPtr botan_x509_cert_destroy certPtr
                                return $ MkX509Cert foreignPtr
                    _                       ->  throwBotanError code

-- TODO: Use mkInitMaybe
x509CertStoreFindCertByPubkeySHA1 :: X509CertStore -> ByteString -> IO (Maybe X509Cert)
x509CertStoreFindCertByPubkeySHA1 store digest = withX509CertStorePtr store $ \ store_ptr -> do
    asBytesLen digest $ \ digest_ptr _ -> do
        alloca $ \ outPtr -> do
            throwBotanIfNegative_ $ botan_x509_cert_store_find_cert_by_pubkey_sha1
                outPtr
                store_ptr
                digest_ptr
            out <- peek outPtr
            if out == nullPtr
            then return Nothing
            else do
                foreignPtr <- newForeignPtr botan_x509_cert_destroy out
                return $ Just $ MkX509Cert foreignPtr

-- TODO: Use mkInitMaybe
x509CertStoreFindCertByRawSubjectDNSHA256 :: X509CertStore -> ByteString -> IO (Maybe X509Cert)
x509CertStoreFindCertByRawSubjectDNSHA256 store digest = withX509CertStorePtr store $ \ store_ptr -> do
    asBytesLen digest $ \ digest_ptr _ -> do
        alloca $ \ outPtr -> do
            throwBotanIfNegative_ $ botan_x509_cert_store_find_cert_by_raw_subject_dn_sha256
                outPtr
                store_ptr
                digest_ptr
            out <- peek outPtr
            if out == nullPtr
            then return Nothing
            else do
                foreignPtr <- newForeignPtr botan_x509_cert_destroy out
                return $ Just $ MkX509Cert foreignPtr

-- TODO: Use mkInitMaybe
x509CertStoreFindCRLFor :: X509CertStore -> X509Cert -> IO (Maybe X509CRL)
x509CertStoreFindCRLFor store cert = withX509CertStorePtr store $ \ store_ptr -> do
    withX509Cert cert $ \ cert_ptr -> do
        alloca $ \ outPtr -> do
            throwBotanIfNegative_ $ botan_x509_cert_store_find_crl_for
                outPtr
                store_ptr
                cert_ptr
            out <- peek outPtr
            if out == nullPtr
            then return Nothing
            else do
                foreignPtr <- newForeignPtr botan_x509_crl_destroy out
                return $ Just $ MkX509CRL foreignPtr

x509CertStoreCertificateKnown :: X509CertStore -> X509Cert -> IO Bool
x509CertStoreCertificateKnown store cert = withX509CertStorePtr store $ \ store_ptr -> do
    withX509Cert cert $ \ cert_ptr -> do
        throwBotanCatchingSuccess $ botan_x509_cert_store_certificate_known store_ptr cert_ptr

-- {-
-- In-memory cert store
-- -}

-- TODO: Get rid of bytestring paths
x509CertStoreInMemoryLoadDir :: ByteString -> IO X509CertStore
x509CertStoreInMemoryLoadDir path = asCString path $ \ path_ptr -> mkInit
                MkX509CertStore
                (\ ptr -> botan_x509_cert_store_in_memory_load_dir
                    ptr
                    path_ptr
                )
                botan_x509_cert_store_destroy

x509CertStoreInMemoryLoadCert :: X509Cert -> IO X509CertStore
x509CertStoreInMemoryLoadCert cert = withX509Cert cert $ \ cert_ptr -> mkInit
                MkX509CertStore
                (\ ptr -> botan_x509_cert_store_in_memory_load_cert
                    ptr
                    cert_ptr
                )
                botan_x509_cert_store_destroy

x509CertStoreInMemoryCreate :: IO X509CertStore
x509CertStoreInMemoryCreate = mkInit
        MkX509CertStore
        botan_x509_cert_store_in_memory_create
        botan_x509_cert_store_destroy

x509CertStoreInMemoryAddCertificate :: X509CertStore -> X509Cert -> IO ()
x509CertStoreInMemoryAddCertificate store cert = withX509CertStorePtr store $ \ store_ptr -> do
    withX509Cert cert $ \ cert_ptr -> do
        throwBotanIfNegative_ $ botan_x509_cert_store_in_memory_add_certificate
            store_ptr
            cert_ptr

x509CertStoreInMemoryAddCRL :: X509CertStore -> X509CRL -> IO ()
x509CertStoreInMemoryAddCRL store crl = withX509CertStorePtr store $ \ store_ptr -> do
    withX509CRL crl $ \ crl_ptr -> do
        throwBotanIfNegative_ $ botan_x509_cert_store_in_memory_add_crl
            store_ptr
            crl_ptr

-- {-
-- Flatfile cert store
-- -}

x509CertStoreFlatfileCreate :: ByteString -> Bool -> IO X509CertStore
x509CertStoreFlatfileCreate path ignore_non_ca = asCString path $ \ path_ptr -> mkInit
    MkX509CertStore
    (\ ptr -> botan_x509_cert_store_flatfile_create
        ptr
        path_ptr
        (fromBool ignore_non_ca)
    )
    botan_x509_cert_store_destroy

{-
SQL cert store
-}

x509CertStoreSQLInsertCert :: X509CertStore -> X509Cert -> IO Bool
x509CertStoreSQLInsertCert store cert = withX509CertStorePtr store $ \ store_ptr -> do
    withX509Cert cert $ \ cert_ptr -> do
        throwBotanCatchingSuccess $ botan_x509_cert_store_sql_insert_cert
            store_ptr
            cert_ptr

x509CertStoreSQLRemoveCert :: X509CertStore -> X509Cert -> IO Bool
x509CertStoreSQLRemoveCert store cert = withX509CertStorePtr store $ \ store_ptr -> do
    withX509Cert cert $ \ cert_ptr -> do
        throwBotanCatchingSuccess $ botan_x509_cert_store_sql_remove_cert
            store_ptr
            cert_ptr

-- TODO: Use mkInitMaybe
x509CertStoreSQLFindKey :: X509CertStore -> X509Cert -> IO (Maybe PrivKey)
x509CertStoreSQLFindKey store cert = withX509CertStorePtr store $ \ store_ptr -> do
    withX509Cert cert $ \ cert_ptr -> do
        alloca $ \ outPtr -> do
            throwBotanIfNegative_ $ botan_x509_cert_store_sql_find_key
                outPtr
                store_ptr
                cert_ptr
            out <- peek outPtr
            if out == nullPtr
            then return Nothing
            else do
                foreignPtr <- newForeignPtr botan_privkey_destroy out
                return $ Just $ MkPrivKey foreignPtr

-- NOTE: See notes about returning arrays of things, improper return pointer type
-- TODO: Need some sort of allocArrayQuerying, or a mkArrayInit
x509CertStoreSQLFindCertsForKey :: X509CertStore -> PrivKey -> IO [X509Cert]
x509CertStoreSQLFindCertsForKey store privkey = withX509CertStorePtr store $ \ store_ptr -> do
    withPrivKey privkey $ \ privkey_ptr -> do
            let fn arrPtr szPtr = botan_x509_cert_store_sql_find_certs_for_key arrPtr szPtr store_ptr privkey_ptr
            alloca $ \ szPtr -> do
                code <- fn nullPtr szPtr
                case code of
                    InsufficientBufferSpace -> do
                        sz <- fromIntegral <$> peek szPtr
                        allocaArray sz $ \ arrPtr -> do
                            throwBotanIfNegative_ $ fn arrPtr szPtr
                            certPtrs <- peekArray sz arrPtr
                            -- NOTE: Cannot use mkInit because that performs an alloca and a peek,
                            --  whereas we have already performed that work here
                            forM certPtrs $ \ certPtr -> do
                                foreignPtr <- newForeignPtr botan_x509_cert_destroy certPtr
                                return $ MkX509Cert foreignPtr
                    _                       ->  throwBotanError code

x509CertStoreSQLInsertKey :: X509CertStore -> X509Cert -> PrivKey -> IO Bool
x509CertStoreSQLInsertKey store cert privkey = withX509CertStorePtr store $ \ store_ptr -> do
    withX509Cert cert $ \ cert_ptr -> do
        withPrivKey privkey $ \ privkey_ptr -> do
            throwBotanCatchingSuccess $ botan_x509_cert_store_sql_insert_key
                store_ptr
                cert_ptr
                privkey_ptr

x509CertStoreSQLRemoveKey :: X509CertStore -> PrivKey -> IO ()
x509CertStoreSQLRemoveKey store privkey = withX509CertStorePtr store $ \ store_ptr -> do
    withPrivKey privkey $ \ privkey_ptr -> do
        throwBotanIfNegative_ $ botan_x509_cert_store_sql_remove_key
            store_ptr
            privkey_ptr

x509CertStoreSQLRevokeCert :: X509CertStore -> X509Cert -> Word32 -> Word64 -> IO ()
x509CertStoreSQLRevokeCert store cert crl_code time = withX509CertStorePtr store $ \ store_ptr -> do
    withX509Cert cert $ \ cert_ptr -> do
        throwBotanIfNegative_ $ botan_x509_cert_store_sql_revoke_cert
            store_ptr
            cert_ptr
            crl_code
            time

x509CertStoreSQLAffirmCert :: X509CertStore -> X509Cert -> IO ()
x509CertStoreSQLAffirmCert store cert = withX509CertStorePtr store $ \ store_ptr -> do
    withX509Cert cert $ \ cert_ptr -> do
        throwBotanIfNegative_ $ botan_x509_cert_store_sql_affirm_cert
            store_ptr
            cert_ptr

-- -- NOTE: See notes about returning arrays of things, improper return pointer type
-- TODO: Need some sort of allocArrayQuerying, or a mkArrayInit
x509CertStoreSQLGenerateCRLs :: X509CertStore -> IO [X509CRL]
x509CertStoreSQLGenerateCRLs store = withX509CertStorePtr store $ \ store_ptr -> do
    let fn arrPtr szPtr = botan_x509_cert_store_sql_generate_crls arrPtr szPtr store_ptr
    alloca $ \ szPtr -> do
        code <- fn nullPtr szPtr
        case code of
            InsufficientBufferSpace -> do
                sz <- fromIntegral <$> peek szPtr
                allocaArray sz $ \ arrPtr -> do
                    throwBotanIfNegative_ $ fn arrPtr szPtr
                    crlPtrs <- peekArray sz arrPtr
                    -- NOTE: Cannot use mkInit because that performs an alloca and a peek,
                    --  whereas we have already performed that work here
                    forM crlPtrs $ \ crlPtr -> do
                        foreignPtr <- newForeignPtr botan_x509_crl_destroy crlPtr
                        return $ MkX509CRL foreignPtr
            _                       ->  throwBotanError code

{-
SQLite3 cert store
NOTE: Not confirmed to be implemented correctly C++-side
-}

x509CertStoreSqlite3Create :: ByteString -> ByteString -> RNG -> ByteString -> IO X509CertStore
x509CertStoreSqlite3Create db_path passwd rng table_prefix = asCString db_path $ \ db_path_ptr -> do
    asCString passwd $ \ passwd_ptr -> do
        withRNG rng $ \ botanRNG -> do
            asCString table_prefix $ \ table_prefix_ptr -> mkInit
                MkX509CertStore
                (\ ptr -> botan_x509_cert_store_sqlite3_create
                    ptr
                    db_path_ptr
                    passwd_ptr botanRNG
                    table_prefix_ptr
                )
                botan_x509_cert_store_destroy

{-
System cert store
-}

x509CertStoreSystemCreate :: IO X509CertStore
x509CertStoreSystemCreate = mkInit MkX509CertStore botan_x509_cert_store_system_create botan_x509_cert_store_destroy

{-
MacOS cert store
NOTE: OS-specific, covered by System certificate store type?
-}

-- foreign import ccall unsafe botan_x509_cert_store_macos_create
--     :: Ptr X509CertStorePtr
--     -> IO BotanErrorCode

{-
Windows cert store
NOTE: OS-specific, covered by System certificate store type?
-}

-- foreign import ccall unsafe botan_x509_cert_store_windows_create
--     :: Ptr X509CertStorePtr
--     -> IO BotanErrorCode
