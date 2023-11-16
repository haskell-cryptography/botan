module Botan.Bindings.X509.DN where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.X509

data X509DNStruct
type X509DNPtr = Ptr X509DNStruct

foreign import ccall unsafe "&botan_x509_dn_destroy" botan_x509_dn_destroy :: FinalizerPtr X509DNStruct


foreign import ccall unsafe botan_x509_dn_create
    :: Ptr X509DNPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_dn_create_from_multimap
    :: Ptr X509DNPtr
    -> Ptr Word8 -> Ptr CSize
    -> Ptr Word8 -> Ptr CSize
    -> CSize
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_dn_to_string
    :: Ptr Word8 -> Ptr CSize
    -> X509DNPtr
    -> IO BotanErrorCode

-- NOTE: Returns a bool success code
foreign import ccall unsafe botan_x509_dn_has_field
    :: X509DNPtr
    -> Ptr Word8 -> CSize
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_dn_get_first_attribute
    :: Ptr Word8 -> Ptr CSize
    -> X509DNPtr
    -> Ptr Word8 -> CSize
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_dn_get_attribute
    :: Ptr (Ptr Word8) -> Ptr CSize -> Ptr CSize
    -> X509DNPtr
    -> Ptr Word8 -> CSize
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_dn_contents
    :: Ptr (Ptr Word8) -> Ptr CSize -> Ptr (Ptr Word8) -> Ptr CSize -> Ptr CSize
    -> X509DNPtr
    -> IO BotanErrorCode

foreign import ccall unsafe botan_x509_dn_add_attribute
    :: X509DNPtr
    -> Ptr Word8 -> CSize
    -> Ptr Word8 -> CSize
    -> IO BotanErrorCode
