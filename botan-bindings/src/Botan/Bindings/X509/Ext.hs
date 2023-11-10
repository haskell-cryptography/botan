module Botan.Bindings.X509.Ext where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.X509

data X509CertExtensionStruct
type X509CertExtensionPtr = Ptr X509CertExtensionStruct

foreign import ccall unsafe botan_x509_cert_ext_destroy
    :: X509CertExtensionPtr
    -> IO BotanErrorCode

data X509ExtensionsStruct
type X509ExtensionsPtr = Ptr X509ExtensionsStruct

foreign import ccall unsafe botan_x509_exts_destroy
    :: X509ExtensionsPtr
    -> IO BotanErrorCode

-- TODO: See C FFI for discussion on pending implementation