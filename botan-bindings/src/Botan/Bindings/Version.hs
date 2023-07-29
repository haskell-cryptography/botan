module Botan.Bindings.Version where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

-- https://botan.randombit.net/handbook/api_ref/ffi.html#versioning

-- NOTE: Regarding unsafeDupablePerormIO:
--  https://botan.randombit.net/handbook/api_ref/footguns.html#multithreaded-access

-- | uint32_t botan_ffi_api_version()
foreign import ccall unsafe botan_ffi_api_version :: IO Word32

-- | int botan_ffi_supports_api(uint32_t version)
foreign import ccall unsafe botan_ffi_supports_api :: Word32 -> IO CInt

-- | const char *botan_version_string()
foreign import ccall unsafe botan_version_string :: IO CString

-- | uint32_t botan_version_major()
foreign import ccall unsafe botan_version_major :: IO Word32

-- | uint32_t botan_version_minor()
foreign import ccall unsafe botan_version_minor :: IO Word32

-- | uint32_t botan_version_patch()
foreign import ccall unsafe botan_version_patch :: IO Word32

-- | uint32_t botan_version_datestamp()
foreign import ccall unsafe botan_version_datestamp :: IO Word32
