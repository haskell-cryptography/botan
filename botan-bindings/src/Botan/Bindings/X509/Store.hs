module Botan.Bindings.X509.Store where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.X509

data X509CertStoreStruct
type X509CertStorePtr = Ptr X509CertStoreStruct

foreign import ccall unsafe botan_x509_cert_store_destroy
    :: X509CertStorePtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_store_find_cert
    :: Ptr X509CertPtr
    -> X509CertStorePtr
    -> Ptr Word8 -> CSize
    -> Ptr Word8 -> CSize
    -> IO BotanErrorCode

-- NOTE: The return type of this is either incorrect here or in C/C++
-- It just needs to be an array of certs. How do we return this properly? Warrants discussion.
-- Might need to change
--      botan_x509_cert_t** certs, size_t* certs_len,
-- back to
--      botan_x509_cert_t* certs, size_t* certs_len,
-- in botan-upstream.
-- Hs FFI only cares that its a pointer, so it doesn't cause compiler issues.
-- NOTE: CURRENTLY DOESNT MATCH ACTUAL C FFI DEFINITION
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
