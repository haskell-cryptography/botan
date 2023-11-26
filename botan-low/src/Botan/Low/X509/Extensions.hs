module Botan.Low.X509.Extensions where

import Botan.Low.Error
import Botan.Low.Prelude
import Botan.Low.X509

import Botan.Bindings.X509.Extensions

newtype X509Extensions = MkX509Extensions { getX509ExtensionsForeignPtr :: ForeignPtr X509ExtensionsStruct }

withX509ExtensionsPtr :: X509Extensions -> (X509ExtensionsPtr -> IO a) -> IO a
withX509ExtensionsPtr = withForeignPtr . getX509ExtensionsForeignPtr

x509ExtensionsDestroy :: X509Extensions -> IO ()
x509ExtensionsDestroy exts = finalizeForeignPtr (getX509ExtensionsForeignPtr exts)

newtype X509Extension = MkX509Extension { getX509ExtensionForeignPtr :: ForeignPtr X509ExtensionStruct }

withX509ExtensionPtr :: X509Extension -> (X509ExtensionPtr -> IO a) -> IO a
withX509ExtensionPtr = withForeignPtr . getX509ExtensionForeignPtr

x509ExtensionDestroy :: X509Extension -> IO ()
x509ExtensionDestroy exts = finalizeForeignPtr (getX509ExtensionForeignPtr exts)

-- TODO: See C FFI for discussion on pending implementation

