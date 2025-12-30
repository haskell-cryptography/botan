{-|
Module      : Botan.Bindings.Version
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

module Botan.Bindings.Version (
    Unsafe.botan_ffi_api_version
  , Unsafe.botan_ffi_supports_api
  , Unsafe.botan_version_string
  , Unsafe.botan_version_major
  , Unsafe.botan_version_minor
  , Unsafe.botan_version_patch
  , Unsafe.botan_version_datestamp
  ) where

import qualified Botan.Bindings.Generated.Unsafe as Unsafe
