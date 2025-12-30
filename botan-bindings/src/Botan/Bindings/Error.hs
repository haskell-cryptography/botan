{-|
Module      : Botan.Bindings.Error
Description : Error codes and exception handling
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

This module is based on the [Return
codes](https://botan.randombit.net/handbook/api_ref/ffi.html#return-codes)
section of the C Botan FFI documentation.
-}

module Botan.Bindings.Error (
    Types.BOTAN_FFI_ERROR (..)
  , pattern Types.BOTAN_FFI_SUCCESS
  , pattern Types.BOTAN_FFI_INVALID_VERIFIER
  , pattern Types.BOTAN_FFI_ERROR_INVALID_INPUT
  , pattern Types.BOTAN_FFI_ERROR_BAD_MAC
  , pattern Types.BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE
  , pattern Types.BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR
  , pattern Types.BOTAN_FFI_ERROR_EXCEPTION_THROWN
  , pattern Types.BOTAN_FFI_ERROR_OUT_OF_MEMORY
  , pattern Types.BOTAN_FFI_ERROR_SYSTEM_ERROR
  , pattern Types.BOTAN_FFI_ERROR_INTERNAL_ERROR
  , pattern Types.BOTAN_FFI_ERROR_BAD_FLAG
  , pattern Types.BOTAN_FFI_ERROR_NULL_POINTER
  , pattern Types.BOTAN_FFI_ERROR_BAD_PARAMETER
  , pattern Types.BOTAN_FFI_ERROR_KEY_NOT_SET
  , pattern Types.BOTAN_FFI_ERROR_INVALID_KEY_LENGTH
  , pattern Types.BOTAN_FFI_ERROR_INVALID_OBJECT_STATE
  , pattern Types.BOTAN_FFI_ERROR_NOT_IMPLEMENTED
  , pattern Types.BOTAN_FFI_ERROR_INVALID_OBJECT
  , pattern Types.BOTAN_FFI_ERROR_TLS_ERROR
  , pattern Types.BOTAN_FFI_ERROR_HTTP_ERROR
  , pattern Types.BOTAN_FFI_ERROR_ROUGHTIME_ERROR
  , pattern Types.BOTAN_FFI_ERROR_UNKNOWN_ERROR
  , Unsafe.botan_error_description
  , Unsafe.botan_error_last_exception_message
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.Unsafe as Unsafe
