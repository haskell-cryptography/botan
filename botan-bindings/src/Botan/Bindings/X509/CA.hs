module Botan.Bindings.X509.CA where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.MPI
import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.Sign
import Botan.Bindings.RNG
import Botan.Bindings.X509

-- Certificate Authority
data X509CAStruct
type X509CAPtr = Ptr X509CAStruct

-- Certificate Signing Request, rename to that / CSR at higher levels
data PKCS10RequestStruct
type PKCS10RequestPtr = Ptr PKCS10RequestStruct

data X509ExtensionsStruct
type X509ExtensionsPtr = Ptr X509ExtensionsStruct

foreign import ccall unsafe botan_x509_ca_create
    :: Ptr X509CAPtr
    -> X509CertPtr
    -> PrivKeyPtr
    -> Ptr CChar
    -> RNGPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_ca_create_padding
    :: Ptr X509CAPtr
    -> X509CertPtr
    -> PrivKeyPtr
    -> Ptr CChar
    -> Ptr CChar
    -> RNGPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_ca_destroy
    :: X509CAPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_ca_sign_request
    :: Ptr X509CertPtr
    -> X509CAPtr
    -> PKCS10RequestPtr
    -> RNGPtr
    -> Word64
    -> Word64
    -> IO BotanErrorCode

-- foreign import ccall unsafe botan_x509_ca_sign_request_serial
--     :: Ptr X509CertPtr
--     -> X509CAPtr
--     -> PKCS10RequestPtr
--     -> RNGPtr
--     -> MPPtr
--     -> Word64
--     -> Word64
--     -> IO BotanErrorCode

-- foreign import ccall unsafe botan_x509_ca_make_cert
--     :: Ptr X509CertPtr
--     -> SignPtr
--     -> RNGPtr
--     -> MPPtr
--     -> Ptr CChar
--     -> PubKeyPtr
--     -> Word64
--     -> Word64
--     -> Ptr Word8 -> CSize
--     -> Ptr Word8 -> CSize
--     -> X509ExtensionsPtr
--     -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_ca_make_cert_serial
    :: Ptr X509CertPtr
    -> SignPtr
    -> RNGPtr
    -> MPPtr
    -> Ptr CChar
    -> PubKeyPtr
    -> Word64
    -> Word64
    -> Ptr Word8 -> CSize
    -> Ptr Word8 -> CSize
    -> X509ExtensionsPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_ca_choose_extensions
    :: Ptr X509ExtensionsPtr
    -> PKCS10RequestPtr
    -> X509CertPtr
    -> Ptr CChar
    -> IO BotanErrorCode

-- TODO: Move to Botan.Bindings.X509.CSR    

data X509CertOptionsStruct
type X509CertOptionsPtr = Ptr X509CertOptionsStruct

foreign import ccall unsafe botan_x509_create_cert_req
    :: Ptr PKCS10RequestPtr
    -> X509CertOptionsPtr
    -> PrivKeyPtr
    -> Ptr CChar
    -> RNGPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_csr_create
    :: Ptr PKCS10RequestPtr
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
