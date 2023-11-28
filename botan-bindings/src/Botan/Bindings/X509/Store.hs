module Botan.Bindings.X509.Store where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.RNG
import Botan.Bindings.X509

data X509CertStoreStruct
type X509CertStorePtr = Ptr X509CertStoreStruct

foreign import ccall unsafe "&botan_x509_cert_store_destroy" botan_x509_cert_store_destroy :: FinalizerPtr X509CertStoreStruct

foreign import ccall unsafe botan_x509_cert_store_find_cert
    :: Ptr X509CertPtr
    -> X509CertStorePtr
    -> Ptr Word8 -> CSize
    -> Ptr Word8 -> CSize
    -> IO BotanErrorCode

-- // NOTE: Returns an array of results
-- // SEE: Discussion on arrays / ownership
-- NOTE: FFI function is actually x509_cert_t** but should be x509_cert_t* like here
foreign import ccall unsafe botan_x509_cert_store_find_all_certs
    :: Ptr X509CertPtr -> Ptr CSize
    -> X509CertStorePtr
    -> Ptr Word8 -> CSize
    -> Ptr Word8 -> CSize
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_store_find_cert_by_pubkey_sha1
    :: Ptr X509CertPtr
    -> X509CertStorePtr
    -> Ptr Word8        -- NOTE: SHA1 hash length is static, so we can just drop the size_t
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_store_find_cert_by_raw_subject_dn_sha256
    :: Ptr X509CertPtr
    -> X509CertStorePtr
    -> Ptr Word8        -- NOTE: SHA1 hash length is static, so we can just drop the size_t
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_store_find_crl_for
    :: Ptr X509CRLPtr
    -> X509CertStorePtr
    -> X509CertPtr
    -> IO BotanErrorCode

-- // NOTE: Returns cert_store.certificate_known ? 0 : -1;
foreign import ccall unsafe botan_x509_cert_store_certificate_known
    :: X509CertStorePtr
    -> X509CertPtr
    -> IO BotanErrorCode

{-
In-memory cert store
-}

foreign import ccall unsafe botan_x509_cert_store_in_memory_load_dir
    :: Ptr X509CertStorePtr
    -> Ptr CChar
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_store_in_memory_load_cert
    :: Ptr X509CertStorePtr
    -> X509CertPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_store_in_memory_create
    :: Ptr X509CertStorePtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_store_in_memory_add_certificate
    :: X509CertStorePtr
    -> X509CertPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_store_in_memory_add_crl
    :: X509CertStorePtr
    -> X509CRLPtr
    -> IO BotanErrorCode

{-
Flatfile cert store
-}

foreign import ccall unsafe botan_x509_cert_store_flatfile_create
    :: Ptr X509CertStorePtr
    -> Ptr CChar
    -> CBool
    -> IO BotanErrorCode

{-
SQL cert store
-}

-- NOTE: Returns boolean success code
foreign import ccall unsafe botan_x509_cert_store_sql_insert_cert
    :: X509CertStorePtr
    -> X509CertPtr
    -> IO BotanErrorCode

-- NOTE: Returns boolean success code
foreign import ccall unsafe botan_x509_cert_store_sql_remove_cert
    :: X509CertStorePtr
    -> X509CertPtr
    -> IO BotanErrorCode

-- NOTE: Returns nullPtr if not found
foreign import ccall unsafe botan_x509_cert_store_sql_find_key
    :: Ptr PrivKeyPtr
    -> X509CertStorePtr
    -> X509CertPtr
    -> IO BotanErrorCode

-- NOTE: See notes about returning arrays of things, improper return pointer type
foreign import ccall unsafe botan_x509_cert_store_sql_find_certs_for_key
    :: Ptr X509CertPtr -> Ptr CSize
    -> X509CertStorePtr
    -> PrivKeyPtr
    -> IO BotanErrorCode

-- NOTE: Returns boolean success code
foreign import ccall unsafe botan_x509_cert_store_sql_insert_key
    :: X509CertStorePtr
    -> X509CertPtr
    -> PrivKeyPtr
    -> IO BotanErrorCode

-- NOTE: *DOES NOT* return boolean success code
foreign import ccall unsafe botan_x509_cert_store_sql_remove_key
    :: X509CertStorePtr
    -> PrivKeyPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_store_sql_revoke_cert
    :: X509CertStorePtr
    -> X509CertPtr
    -> Word32
    -> Word64
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_store_sql_affirm_cert
    :: X509CertStorePtr
    -> X509CertPtr
    -> IO BotanErrorCode

-- NOTE: See notes about returning arrays of things, improper return pointer type
foreign import ccall unsafe botan_x509_cert_store_sql_generate_crls
    :: Ptr X509CRLPtr -> Ptr CSize
    -> X509CertStorePtr
    -> IO BotanErrorCode

{-
SQLite3 cert store
-}

foreign import ccall unsafe botan_x509_cert_store_sqlite3_create
    :: Ptr X509CertStorePtr
    -> Ptr CChar
    -> Ptr CChar
    -> RNGPtr
    -> Ptr CChar
    -> IO BotanErrorCode

{-
System cert store
-}

foreign import ccall unsafe botan_x509_cert_store_system_create
    :: Ptr X509CertStorePtr
    -> IO BotanErrorCode

{-
MacOS cert store
-}

foreign import ccall unsafe botan_x509_cert_store_macos_create
    :: Ptr X509CertStorePtr
    -> IO BotanErrorCode

{-
Windows cert store
-}

foreign import ccall unsafe botan_x509_cert_store_windows_create
    :: Ptr X509CertStorePtr
    -> IO BotanErrorCode
