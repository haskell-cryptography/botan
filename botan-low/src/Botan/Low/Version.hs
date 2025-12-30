{-|
Module      : Botan.Low.Version
Description : Botan version info
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

This module is based on the
[Versioning](https://botan.randombit.net/handbook/api_ref/ffi.html#versioning)
section of the C Botan FFI documentation.
-}

module Botan.Low.Version (
    botanFFIAPIVersion
  , botanFFISupportsAPI
  , botanVersionString
  , botanVersionMajor
  , botanVersionMinor
  , botanVersionPatch
  , botanVersionDatestamp
  ) where

import qualified Botan.Bindings.Version as BB
import           Botan.Low.Error.Internal (throwBotanCatchingInvalidInput)
import           Botan.Low.Internal.ByteString
import           Data.ByteString (ByteString)
import           HsBindgen.Runtime.ConstPtr (ConstPtr (..))
import           Prelude

-- | Returns the version of the currently supported FFI API. This is expressed
-- in the form YYYYMMDD of the release date of this version of the API.
botanFFIAPIVersion :: IO Int
botanFFIAPIVersion = fromIntegral <$> BB.botan_ffi_api_version

-- | Returns 'True' iff the FFI version specified is supported by this library,
-- otherwise returns 'False'.
--
-- The expression @'botanFFIAPIVersion' >>= 'botanFFISupportsAPI'@  will always
-- evaluate to 'True'. A particular version of the library may also support
-- other (older) versions of the FFI API.
botanFFISupportsAPI :: Int -> IO Bool
botanFFISupportsAPI version = do
    throwBotanCatchingInvalidInput $ BB.botan_ffi_supports_api (fromIntegral version)

botanVersionString :: IO ByteString
botanVersionString = BB.botan_version_string >>= peekCString . (.unConstPtr)

-- | Returns the major version of the library
botanVersionMajor :: IO Int
botanVersionMajor = fromIntegral <$> BB.botan_version_major

-- | Returns the minor version of the library
botanVersionMinor :: IO Int
botanVersionMinor = fromIntegral <$> BB.botan_version_minor

-- | Returns the patch version of the library
botanVersionPatch :: IO Int
botanVersionPatch = fromIntegral <$> BB.botan_version_patch

-- | Returns the date this version was released as an integer YYYYMMDD, or 0 if
-- an unreleased version
botanVersionDatestamp :: IO Int
botanVersionDatestamp = fromIntegral <$> BB.botan_version_datestamp
