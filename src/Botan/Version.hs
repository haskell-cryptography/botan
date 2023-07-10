{-# LANGUAGE CApiFFI #-}

module Botan.Version
( botanFFIAPIVersion
, botanFFISupportsAPI
, botanVersionText
, botanVersionMajor
, botanVersionMinor
, botanVersionPatch
, botanVersionDatestamp
) where

import Prelude (($),($!), fromIntegral)

import Control.Monad

import Data.Bool

import Data.Int (Int)
import Data.Word (Word32)

import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Unsafe as ByteString

import Data.Text (Text)
import qualified Data.Text as Text
import qualified Data.Text.Foreign as Text

import System.IO
import System.IO.Unsafe

import Foreign.C.String (CString(..))
import Foreign.C.Types (CInt(..))

import Botan.Prelude

-- https://botan.randombit.net/handbook/api_ref/ffi.html#versioning

-- NOTE: Regarding unsafeDupablePerormIO:
--  https://botan.randombit.net/handbook/api_ref/footguns.html#multithreaded-access

-- | uint32_t botan_ffi_api_version()
foreign import ccall unsafe botan_ffi_api_version :: IO Word32

-- | Returns the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.
botanFFIAPIVersion :: Int
botanFFIAPIVersion = fromIntegral $ unsafeDupablePerformIO $ botan_ffi_api_version

-- | int botan_ffi_supports_api(uint32_t version)
foreign import ccall unsafe botan_ffi_supports_api :: Word32 -> IO CInt

-- | Returns 0 iff the FFI version specified is supported by this library. Otherwise returns -1. The expression botan_ffi_supports_api(botan_ffi_api_version()) will always evaluate to 0. A particular version of the library may also support other (older) versions of the FFI API.
botanFFISupportsAPI :: Int -> Bool
botanFFISupportsAPI version = unsafeDupablePerformIO $ do
    supports <- botan_ffi_supports_api $ fromIntegral version
    case supports of
        0 -> return True
        _ -> return False

-- | const char *botan_version_string()
foreign import ccall unsafe botan_version_string :: IO CString

-- | Returns a free-form string describing the version. The return value is a statically allocated string.
botanVersionText :: Text
botanVersionText = unsafeDupablePerformIO $ botan_version_string >>= peekCStringText

-- | uint32_t botan_version_major()
foreign import ccall unsafe botan_version_major :: IO Word32

-- | Returns the major version of the library
botanVersionMajor :: Int
botanVersionMajor = fromIntegral $ unsafeDupablePerformIO $ botan_version_major

-- | uint32_t botan_version_minor()
foreign import ccall unsafe botan_version_minor :: IO Word32

-- | Returns the minor version of the library
botanVersionMinor :: Int
botanVersionMinor = fromIntegral $ unsafeDupablePerformIO $ botan_version_minor

-- | uint32_t botan_version_patch()
foreign import ccall unsafe botan_version_patch :: IO Word32

-- | Returns the patch version of the library
botanVersionPatch :: Int
botanVersionPatch = fromIntegral $ unsafeDupablePerformIO $ botan_version_patch

-- | uint32_t botan_version_datestamp()
foreign import ccall unsafe botan_version_datestamp :: IO Word32

-- | Returns the date this version was released as an integer YYYYMMDD, or 0 if an unreleased version
botanVersionDatestamp :: Int
botanVersionDatestamp = fromIntegral $ unsafeDupablePerformIO $ botan_version_datestamp
