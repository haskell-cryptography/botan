{-|
Module      : Botan.Low.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.Version
( botanFFIAPIVersion
, botanFFISupportsAPI
, botanVersionText
, botanVersionMajor
, botanVersionMinor
, botanVersionPatch
, botanVersionDatestamp
) where

import Data.Bool

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Unsafe as ByteString

import qualified Data.Text as Text
import qualified Data.Text.Foreign as Text

import System.IO.Unsafe

import Botan.Bindings.Version

import Botan.Low.Prelude
import Botan.Low.Error (throwBotanCatchingSuccess)

-- https://botan.randombit.net/handbook/api_ref/ffi.html#versioning

-- | Returns the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.
botanFFIAPIVersion :: IO Int
botanFFIAPIVersion = fromIntegral <$> botan_ffi_api_version

-- | Returns 0 iff the FFI version specified is supported by this library. Otherwise returns -1. The expression botan_ffi_supports_api(botan_ffi_api_version()) will always evaluate to 0. A particular version of the library may also support other (older) versions of the FFI API.
botanFFISupportsAPI :: Int -> IO Bool
botanFFISupportsAPI version = do
    supports <- botan_ffi_supports_api $ fromIntegral version
    case supports of
        0 -> return True
        _ -> return False
-- TODO: botanFFISupportsAPI = throwBotanCatchingSuccess . botan_ffi_supports_api . fromIntegral
--      AFTER renaming current throwBotanCatchingSuccess to throwBotanCatchingInvalidIdentifier

-- | Returns a free-form string describing the version. The return value is a statically allocated string.
botanVersionText :: IO Text
botanVersionText = botan_version_string >>= peekCStringText

-- | Returns the major version of the library
botanVersionMajor :: IO Int
botanVersionMajor = fromIntegral <$> botan_version_major

-- | Returns the minor version of the library
botanVersionMinor :: IO Int
botanVersionMinor = fromIntegral <$> botan_version_minor

-- | Returns the patch version of the library
botanVersionPatch :: IO Int
botanVersionPatch = fromIntegral <$> botan_version_patch

-- | Returns the date this version was released as an integer YYYYMMDD, or 0 if an unreleased version
botanVersionDatestamp :: IO Int
botanVersionDatestamp = fromIntegral <$> botan_version_datestamp
