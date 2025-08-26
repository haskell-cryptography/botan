module Botan.Bindings.X509.CSR where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
-- import Botan.Bindings.MPI
import Botan.Bindings.PubKey
-- import Botan.Bindings.PubKey.Sign
import Botan.Bindings.RNG
import Botan.Bindings.X509
import Botan.Bindings.X509.Extensions
import Botan.Bindings.X509.Options

-- Certificate Signing Request, rename to that / CSR at higher levels
data X509CSRStruct
type X509CSRPtr = Ptr X509CSRStruct

foreign import ccall unsafe "&botan_x509_csr_destroy" botan_x509_csr_destroy :: FinalizerPtr X509CSRStruct

foreign import ccall unsafe botan_x509_create_cert_req
    :: Ptr X509CSRPtr
    -> X509CertOptionsPtr
    -> PrivKeyPtr
    -> Ptr CChar
    -> RNGPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_csr_create
    :: Ptr X509CSRPtr
    -> PrivKeyPtr
    -> Ptr Word8 -> CSize
    -> X509ExtensionsPtr
    -> Ptr CChar
    -> RNGPtr
    -> Ptr CChar
    -> Ptr CChar
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_create_self_signed_cert
    :: Ptr X509CertPtr
    -> X509CertOptionsPtr
    -> PrivKeyPtr
    -> Ptr CChar
    -> RNGPtr
    -> IO BotanErrorCode

