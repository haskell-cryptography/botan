module Botan.Bindings.X509.CRL where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.X509
import Botan.Bindings.X509.Extensions


--
-- Certificate Revocation List
--
-- TODO: Eventually move the read-only CRL functions into here

{-
data X509CRLStruct
type X509CRLPtr = Ptr X509CRLStruct

foreign import ccall unsafe botan_x509_crl_load :: Ptr X509CRLPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode
foreign import ccall unsafe botan_x509_crl_load_file :: Ptr X509CRLPtr -> Ptr CChar -> IO BotanErrorCode
foreign import ccall unsafe "&botan_x509_crl_destroy" botan_x509_crl_destroy :: FinalizerPtr X509CRLStruct
-- NOTE: Need to rename botan_x509_is_revoked to botan_x509_crl_is_revoked first
foreign import ccall unsafe botan_x509_crl_is_revoked :: X509CRLPtr -> X509CertPtr -> IO BotanErrorCode
-}

foreign import ccall unsafe botan_x509_crl_get_revoked
    :: Ptr X509CRLEntryPtr -> Ptr CSize 
    -> X509CRLPtr
    -> IO BotanErrorCode

-- NOTE: If we were to follow the pattern set in `botan_x509_cert_get_issuer_dn`
--  then this would merely be an accessor for a single value using key + index)
-- NOTE: We're keeping our own return-value-first style still though so keep that
--  difference in mind
foreign import ccall unsafe botan_x509_crl_get_issuer_dn
    :: Ptr Word8 -> Ptr CSize
    -> X509CRLPtr
    -> Ptr CChar
    -> CSize
    -> IO BotanErrorCode
-- With actual DN objects, we could just return the object:
{-
foreign import ccall unsafe botan_x509_crl_issuer_dn
    :: Ptr X509DNPtr
    -> X509CRLPtr
    -> IO BotanErrorCode
-}
-- Probably should create a new pattern using  botan_foo_get_dn_attribute(?)
--  (make consistent with DN object accessors) and botan_foo_get_dn_object

foreign import ccall unsafe botan_x509_crl_extensions
    :: Ptr X509ExtensionsPtr
    -> X509CRLPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_crl_authority_key_id
    :: Ptr Word8 -> Ptr CSize
    -> X509CRLPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_crl_serial_number
    :: Ptr Word32
    -> X509CRLPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_crl_this_update
    :: Ptr Word64
    -> X509CRLPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_crl_next_update
    :: Ptr Word64
    -> X509CRLPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_crl_issuing_distribution_point
    :: Ptr Word8 -> Ptr CSize
    -> X509CRLPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_crl_create_der
    :: Ptr X509CRLPtr
    -> Ptr Word8 -> CSize
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_crl_create
    :: Ptr X509CRLPtr
    -> Ptr Word8 -> CSize           -- Encodeed Issuer DN, not DN object
    -> Word64                       -- this update
    -> Word64                       -- next update
    -> Ptr X509CRLEntryPtr -> CSize -- Entries
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_crl_add_entry
    :: X509CRLPtr
    -> X509CRLEntryPtr
    -> IO BotanErrorCode

-- NOTE: A convenience function
foreign import ccall unsafe botan_x509_crl_revoke_cert
    :: X509CRLPtr
    -> X509CertPtr
    -> Word32   -- Reason
    -> IO BotanErrorCode
    
--
-- Certificate Revocation List Entry
--

data X509CRLEntryStruct
type X509CRLEntryPtr = Ptr X509CRLEntryStruct
-- TODO: These functions are only bound to declarations, and the functions are currently not implemented
-- Do not use them yet, it will just crash

foreign import ccall unsafe "&botan_x509_crl_entry_destroy" botan_x509_crl_entry_destroy :: FinalizerPtr X509CRLEntryStruct

foreign import ccall unsafe botan_x509_crl_entry_create
    :: Ptr X509CRLEntryPtr
    -> X509CertPtr
    -> Word32   -- Reason
    -> IO BotanErrorCode

-- TODO: CRL_Entry PEM / BER encode / decode (and for CRL too)

foreign import ccall unsafe botan_x509_crl_entry_get_serial_number
    :: Ptr Word8 -> Ptr CSize
    -> X509CRLEntryPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_crl_entry_get_expire_time
    :: Ptr Word64
    -> X509CRLEntryPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_crl_entry_get_reason_code
    :: Ptr Word32
    -> X509CRLEntryPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_crl_entry_get_extensions
    :: Ptr X509ExtensionsPtr
    -> X509CRLEntryPtr
    -> IO BotanErrorCode
