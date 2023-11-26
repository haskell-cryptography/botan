module Botan.Low.X509.DN where

import Botan.Low.Error
import Botan.Low.Prelude
import Botan.Low.X509

import Botan.Bindings.X509.DN

newtype X509DN = MkX509DN { getX509DNForeignPtr :: ForeignPtr X509DNStruct }

withX509DNPtr :: X509DN -> (X509DNPtr -> IO a) -> IO a
withX509DNPtr = withForeignPtr . getX509DNForeignPtr

x509DNDestroy :: X509DN -> IO ()
x509DNDestroy exts = finalizeForeignPtr (getX509DNForeignPtr exts)

-- foreign import ccall unsafe botan_x509_dn_create
--     :: Ptr X509DNPtr
--     -> IO BotanErrorCode

-- foreign import ccall unsafe botan_x509_dn_create_from_multimap
--     :: Ptr X509DNPtr
--     -> Ptr Word8 -> Ptr CSize
--     -> Ptr Word8 -> Ptr CSize
--     -> CSize
--     -> IO BotanErrorCode

-- foreign import ccall unsafe botan_x509_dn_to_string
--     :: Ptr Word8 -> Ptr CSize
--     -> X509DNPtr
--     -> IO BotanErrorCode

-- -- NOTE: Returns a bool success code
-- foreign import ccall unsafe botan_x509_dn_has_field
--     :: X509DNPtr
--     -> Ptr Word8 -> CSize
--     -> IO BotanErrorCode

-- foreign import ccall unsafe botan_x509_dn_get_first_attribute
--     :: Ptr Word8 -> Ptr CSize
--     -> X509DNPtr
--     -> Ptr Word8 -> CSize
--     -> IO BotanErrorCode

-- foreign import ccall unsafe botan_x509_dn_get_attribute
--     :: Ptr (Ptr Word8) -> Ptr CSize -> Ptr CSize
--     -> X509DNPtr
--     -> Ptr Word8 -> CSize
--     -> IO BotanErrorCode

-- foreign import ccall unsafe botan_x509_dn_contents
--     :: Ptr (Ptr Word8) -> Ptr CSize -> Ptr (Ptr Word8) -> Ptr CSize -> Ptr CSize
--     -> X509DNPtr
--     -> IO BotanErrorCode

-- foreign import ccall unsafe botan_x509_dn_add_attribute
--     :: X509DNPtr
--     -> Ptr Word8 -> CSize
--     -> Ptr Word8 -> CSize
--     -> IO BotanErrorCode
