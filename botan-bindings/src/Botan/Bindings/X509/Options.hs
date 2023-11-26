module Botan.Bindings.X509.Options where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.X509
import Botan.Bindings.X509.Extensions

data X509CertOptionsStruct
type X509CertOptionsPtr = Ptr X509CertOptionsStruct

foreign import ccall unsafe "&botan_x509_cert_options_destroy" botan_x509_cert_options_destroy :: FinalizerPtr X509CertOptionsStruct

foreign import ccall unsafe botan_x509_cert_options_create
    :: Ptr X509CertOptionsPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_create_common
    :: Ptr X509CertOptionsPtr
    -> Ptr CChar
    -> Ptr CChar
    -> Ptr CChar
    -> Ptr CChar
    -> Word32
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_common_name
    :: X509CertOptionsPtr
    -> Ptr CChar
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_country
    :: X509CertOptionsPtr
    -> Ptr CChar
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_organization
    :: X509CertOptionsPtr
    -> Ptr CChar
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_org_unit
    :: X509CertOptionsPtr
    -> Ptr CChar
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_more_org_units
    :: X509CertOptionsPtr
    -> Ptr (Ptr CChar) -> CSize
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_locality
    :: X509CertOptionsPtr
    -> Ptr CChar
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_state
    :: X509CertOptionsPtr
    -> Ptr CChar
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_serial_number
    :: X509CertOptionsPtr
    -> Ptr CChar
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_email
    :: X509CertOptionsPtr
    -> Ptr CChar
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_uri
    :: X509CertOptionsPtr
    -> Ptr CChar
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_ip
    :: X509CertOptionsPtr
    -> Ptr CChar
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_dns
    :: X509CertOptionsPtr
    -> Ptr CChar
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_more_dns
    :: X509CertOptionsPtr
    -> Ptr (Ptr CChar) -> CSize
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_xmpp
    :: X509CertOptionsPtr
    -> Ptr CChar
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_challenge
    :: X509CertOptionsPtr
    -> Ptr CChar
    -> IO BotanErrorCode

-- // Or _set_not_before
foreign import ccall unsafe botan_x509_cert_options_set_start
    :: X509CertOptionsPtr
    -> Word64
    -> IO BotanErrorCode

-- // Or _set_not_after
foreign import ccall unsafe botan_x509_cert_options_set_end
    :: X509CertOptionsPtr
    -> Word64
    -> IO BotanErrorCode

-- // TODO: Convenience functions for set_start_duration, set_expires

foreign import ccall unsafe botan_x509_cert_options_set_is_ca
    :: X509CertOptionsPtr
    -> CBool
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_path_limit
    :: X509CertOptionsPtr
    -> CSize
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_padding_scheme
    :: X509CertOptionsPtr
    -> Ptr CChar
    -> IO BotanErrorCode

-- // Or _set_key_usage
-- // NOTE: key constraints use unsigned int in ffi, definitely need to give it something proper
foreign import ccall unsafe botan_x509_cert_options_set_key_constraints
    :: X509CertOptionsPtr
    -> CUInt
    -> IO BotanErrorCode

-- // NOTE: Technically should take OIDs but no data type for that
-- // TODO: Create list / spreadsheet of FFI data type mappings
foreign import ccall unsafe botan_x509_cert_options_set_ex_constraints
    :: X509CertOptionsPtr
    -> Ptr (Ptr CChar) -> CSize
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_cert_options_set_extensions
    :: X509CertOptionsPtr
    -> X509ExtensionsPtr
    -> IO BotanErrorCode

-- TODO: botan_x509_cert_options getters

-- TODO: botan_x509_cert_options functions (above is just members)
-- There's only a few though so its easy
