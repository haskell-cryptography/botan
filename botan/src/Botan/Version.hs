module Botan.Version
( botanFFIAPIVersion
, botanFFISupportsAPI
, botanVersionText
, botanVersionMajor
, botanVersionMinor
, botanVersionPatch
, botanVersionDatestamp
) where

import System.IO.Unsafe

import qualified Botan.Low.Version as Low

import qualified Data.Text.Encoding as Text

import Botan.Prelude

-- https://botan.randombit.net/handbook/api_ref/ffi.html#versioning

-- | Returns the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.
botanFFIAPIVersion :: Int
botanFFIAPIVersion = unsafeDupablePerformIO Low.botanFFIAPIVersion

-- | Returns 0 iff the FFI version specified is supported by this library. Otherwise returns -1. The expression botan_ffi_supports_api(botan_ffi_api_version()) will always evaluate to 0. A particular version of the library may also support other (older) versions of the FFI API.
botanFFISupportsAPI :: Int -> Bool
botanFFISupportsAPI version = unsafeDupablePerformIO $ Low.botanFFISupportsAPI version

-- | Returns a free-form string describing the version. The return value is a statically allocated string.
botanVersionText :: Text
botanVersionText = unsafeDupablePerformIO $ fmap Text.decodeUtf8 Low.botanVersionString

-- | Returns the major version of the library
botanVersionMajor :: Int
botanVersionMajor = unsafeDupablePerformIO Low.botanVersionMajor

-- | Returns the minor version of the library
botanVersionMinor :: Int
botanVersionMinor = unsafeDupablePerformIO Low.botanVersionMinor

-- | Returns the patch version of the library
botanVersionPatch :: Int
botanVersionPatch = unsafeDupablePerformIO Low.botanVersionPatch

-- | Returns the date this version was released as an integer YYYYMMDD, or 0 if an unreleased version
botanVersionDatestamp :: Int
botanVersionDatestamp = unsafeDupablePerformIO Low.botanVersionDatestamp
