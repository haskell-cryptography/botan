module Botan.Bindings.X509.CA where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.MPI
import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.Sign
import Botan.Bindings.RNG
import Botan.Bindings.X509
import Botan.Bindings.X509.CSR
import Botan.Bindings.X509.Extensions
import Botan.Bindings.X509.Options

-- Certificate Authority
data X509CAStruct
type X509CAPtr = Ptr X509CAStruct

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

foreign import ccall unsafe "&botan_x509_ca_destroy" botan_x509_ca_destroy :: FinalizerPtr X509CAStruct

foreign import ccall unsafe botan_x509_ca_sign_request
    :: Ptr X509CertPtr
    -> X509CAPtr
    -> X509CSRPtr
    -> RNGPtr
    -> Word64
    -> Word64
    -> IO BotanErrorCode

-- foreign import ccall unsafe botan_x509_ca_sign_request_serial
--     :: Ptr X509CertPtr
--     -> X509CAPtr
--     -> X509CSRPtr
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
    -> X509CSRPtr
    -> X509CertPtr
    -> Ptr CChar
    -> IO BotanErrorCode
