module Botan.Bindings.X509.Extensions where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.X509

data X509ExtensionStruct
type X509ExtensionPtr = Ptr X509ExtensionStruct

foreign import ccall unsafe "&botan_x509_cert_ext_destroy" botan_x509_cert_ext_destroy :: FinalizerPtr X509ExtensionStruct

data X509ExtensionsStruct
type X509ExtensionsPtr = Ptr X509ExtensionsStruct

foreign import ccall unsafe "&botan_x509_exts_destroy" botan_x509_exts_destroy :: FinalizerPtr X509ExtensionsStruct


-- TODO: See C FFI for discussion on pending implementation

