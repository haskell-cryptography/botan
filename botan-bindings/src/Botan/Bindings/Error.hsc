{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP
           , PatternSynonyms #-}

module Botan.Bindings.Error where

#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
import           Foreign.Ptr
#endif
import           Foreign.C.Types

#include <botan-3/botan/ffi.h>



pattern BOTAN_FFI_SUCCESS
      , BOTAN_FFI_INVALID_VERIFIER
      , BOTAN_FFI_ERROR_INVALID_INPUT
      , BOTAN_FFI_ERROR_BAD_MAC
      , BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE
      , BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR
      , BOTAN_FFI_ERROR_EXCEPTION_THROWN
      , BOTAN_FFI_ERROR_OUT_OF_MEMORY
      , BOTAN_FFI_ERROR_SYSTEM_ERROR
      , BOTAN_FFI_ERROR_INTERNAL_ERROR
      , BOTAN_FFI_ERROR_BAD_FLAG
      , BOTAN_FFI_ERROR_NULL_POINTER
      , BOTAN_FFI_ERROR_BAD_PARAMETER
      , BOTAN_FFI_ERROR_KEY_NOT_SET
      , BOTAN_FFI_ERROR_INVALID_KEY_LENGTH
      , BOTAN_FFI_ERROR_INVALID_OBJECT_STATE
      , BOTAN_FFI_ERROR_NOT_IMPLEMENTED
      , BOTAN_FFI_ERROR_INVALID_OBJECT
      , BOTAN_FFI_ERROR_TLS_ERROR
      , BOTAN_FFI_ERROR_HTTP_ERROR
      , BOTAN_FFI_ERROR_ROUGHTIME_ERROR
      , BOTAN_FFI_ERROR_UNKNOWN_ERROR
     :: (Eq a, Num a) => a
pattern BOTAN_FFI_SUCCESS                         = #const BOTAN_FFI_SUCCESS
pattern BOTAN_FFI_INVALID_VERIFIER                = #const BOTAN_FFI_INVALID_VERIFIER
pattern BOTAN_FFI_ERROR_INVALID_INPUT             = #const BOTAN_FFI_ERROR_INVALID_INPUT
pattern BOTAN_FFI_ERROR_BAD_MAC                   = #const BOTAN_FFI_ERROR_BAD_MAC
pattern BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE = #const BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE
pattern BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR   = #const BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR
pattern BOTAN_FFI_ERROR_EXCEPTION_THROWN          = #const BOTAN_FFI_ERROR_EXCEPTION_THROWN
pattern BOTAN_FFI_ERROR_OUT_OF_MEMORY             = #const BOTAN_FFI_ERROR_OUT_OF_MEMORY
pattern BOTAN_FFI_ERROR_SYSTEM_ERROR              = #const BOTAN_FFI_ERROR_SYSTEM_ERROR
pattern BOTAN_FFI_ERROR_INTERNAL_ERROR            = #const BOTAN_FFI_ERROR_INTERNAL_ERROR
pattern BOTAN_FFI_ERROR_BAD_FLAG                  = #const BOTAN_FFI_ERROR_BAD_FLAG
pattern BOTAN_FFI_ERROR_NULL_POINTER              = #const BOTAN_FFI_ERROR_NULL_POINTER
pattern BOTAN_FFI_ERROR_BAD_PARAMETER             = #const BOTAN_FFI_ERROR_BAD_PARAMETER
pattern BOTAN_FFI_ERROR_KEY_NOT_SET               = #const BOTAN_FFI_ERROR_KEY_NOT_SET
pattern BOTAN_FFI_ERROR_INVALID_KEY_LENGTH        = #const BOTAN_FFI_ERROR_INVALID_KEY_LENGTH
pattern BOTAN_FFI_ERROR_INVALID_OBJECT_STATE      = #const BOTAN_FFI_ERROR_INVALID_OBJECT_STATE
pattern BOTAN_FFI_ERROR_NOT_IMPLEMENTED           = #const BOTAN_FFI_ERROR_NOT_IMPLEMENTED
pattern BOTAN_FFI_ERROR_INVALID_OBJECT            = #const BOTAN_FFI_ERROR_INVALID_OBJECT
pattern BOTAN_FFI_ERROR_TLS_ERROR                 = #const BOTAN_FFI_ERROR_TLS_ERROR
pattern BOTAN_FFI_ERROR_HTTP_ERROR                = #const BOTAN_FFI_ERROR_HTTP_ERROR
pattern BOTAN_FFI_ERROR_ROUGHTIME_ERROR           = #const BOTAN_FFI_ERROR_ROUGHTIME_ERROR
pattern BOTAN_FFI_ERROR_UNKNOWN_ERROR             = #const BOTAN_FFI_ERROR_UNKNOWN_ERROR



foreign import capi "botan-3/botan/ffi.h botan_error_description"
  botan_error_description
    :: CInt                -- ^ err
    -> IO (ConstPtr CChar)

foreign import capi "botan-3/botan/ffi.h botan_error_last_exception_message"
  botan_error_last_exception_message :: IO (ConstPtr CChar)
