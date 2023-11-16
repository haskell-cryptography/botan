module Botan.Bindings.X509.CRL where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.X509
import Botan.Bindings.X509.Ext

-- Certificate Authority
data X509CRLEntryStruct
type X509CRLEntryPtr = Ptr X509CRLEntryStruct

-- TODO: More CRL functions

-- TODO: These functions are only bound to declarations, and the functions are currently not implemented
-- Do not use them yet, it will just crash

foreign import ccall unsafe "&botan_x509_crl_entry_destroy" botan_x509_crl_entry_destroy :: FinalizerPtr X509CRLEntryStruct

foreign import ccall unsafe botan_x509_crl_entry_create
    :: Ptr X509CRLEntryPtr
    -> X509CertPtr
    -> Word32
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
