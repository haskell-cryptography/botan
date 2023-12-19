{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.Version where

import Botan.Bindings.Prelude

foreign import capi safe "botan/ffi.h botan_ffi_api_version"
    botan_ffi_api_version :: IO Word32

foreign import capi safe "botan/ffi.h botan_ffi_supports_api"
    botan_ffi_supports_api :: Word32 -> IO CInt

foreign import capi safe "botan/ffi.h botan_version_string"
    botan_version_string :: IO (ConstPtr CChar)

foreign import capi safe "botan/ffi.h botan_version_major"
    botan_version_major :: IO Word32

foreign import capi safe "botan/ffi.h botan_version_minor"
    botan_version_minor :: IO Word32

foreign import capi safe "botan/ffi.h botan_version_patch"
    botan_version_patch :: IO Word32

foreign import capi safe "botan/ffi.h botan_version_datestamp"
    botan_version_datestamp :: IO Word32
