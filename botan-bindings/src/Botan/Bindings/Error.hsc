{-|
Module      : Botan.Bindings.Error
Description : Error codes and exception handling
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

Error values below -10000 are reserved for the application (these can be returned from view functions).
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.Error where

import Botan.Bindings.Prelude

#include <botan/ffi.h>

pattern BOTAN_FFI_SUCCESS
    ,   BOTAN_FFI_INVALID_VERIFIER
    ,   BOTAN_FFI_ERROR_INVALID_INPUT
    ,   BOTAN_FFI_ERROR_BAD_MAC
    ,   BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE
    ,   BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR
    ,   BOTAN_FFI_ERROR_EXCEPTION_THROWN
    ,   BOTAN_FFI_ERROR_OUT_OF_MEMORY
    ,   BOTAN_FFI_ERROR_SYSTEM_ERROR
    ,   BOTAN_FFI_ERROR_INTERNAL_ERROR
    ,   BOTAN_FFI_ERROR_BAD_FLAG
    ,   BOTAN_FFI_ERROR_NULL_POINTER
    ,   BOTAN_FFI_ERROR_BAD_PARAMETER
    ,   BOTAN_FFI_ERROR_KEY_NOT_SET
    ,   BOTAN_FFI_ERROR_INVALID_KEY_LENGTH
    ,   BOTAN_FFI_ERROR_INVALID_OBJECT_STATE
    ,   BOTAN_FFI_ERROR_NOT_IMPLEMENTED
    ,   BOTAN_FFI_ERROR_INVALID_OBJECT
    ,   BOTAN_FFI_ERROR_TLS_ERROR
    ,   BOTAN_FFI_ERROR_HTTP_ERROR
    ,   BOTAN_FFI_ERROR_ROUGHTIME_ERROR
    ,   BOTAN_FFI_ERROR_UNKNOWN_ERROR
    ::  (Eq a, Num a) => a

-- | Generally returned to indicate success
pattern BOTAN_FFI_SUCCESS = #const BOTAN_FFI_SUCCESS

-- | NOTE: this value is positive, but still represents an error condition. In indicates that the function completed successfully, but the value provided was not correct. For example botan_bcrypt_is_valid returns this value if the password did not match the hash.
pattern BOTAN_FFI_INVALID_VERIFIER = #const BOTAN_FFI_INVALID_VERIFIER

-- | The input was invalid. (Currently this error return is not used.)
pattern BOTAN_FFI_ERROR_INVALID_INPUT = #const BOTAN_FFI_ERROR_INVALID_INPUT

-- | While decrypting in an AEAD mode, the tag failed to verify.
pattern BOTAN_FFI_ERROR_BAD_MAC = #const BOTAN_FFI_ERROR_BAD_MAC

-- | Functions which write a variable amount of space return this if the indicated buffer length was insufficient to write the data. In that case, the output length parameter is set to the size that is required.
pattern BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE = #const BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE

-- | A string view function which attempts to convert a string to a specified charset, and fails, can use this function to indicate the error.
pattern BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR = #const BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR

-- | An exception was thrown while processing this request, but no further details are available.
pattern BOTAN_FFI_ERROR_EXCEPTION_THROWN = #const BOTAN_FFI_ERROR_EXCEPTION_THROWN

-- | Memory allocation failed
pattern BOTAN_FFI_ERROR_OUT_OF_MEMORY = #const BOTAN_FFI_ERROR_OUT_OF_MEMORY

-- | A system call failed
pattern BOTAN_FFI_ERROR_SYSTEM_ERROR = #const BOTAN_FFI_ERROR_SYSTEM_ERROR

-- | An internal bug was encountered (please open a ticket on github)
pattern BOTAN_FFI_ERROR_INTERNAL_ERROR = #const BOTAN_FFI_ERROR_INTERNAL_ERROR

-- | A value provided in a flag variable was unknown.
pattern BOTAN_FFI_ERROR_BAD_FLAG = #const BOTAN_FFI_ERROR_BAD_FLAG

-- | A null pointer was provided as an argument where that is not allowed.
pattern BOTAN_FFI_ERROR_NULL_POINTER = #const BOTAN_FFI_ERROR_NULL_POINTER

-- | An argument did not match the function.
pattern BOTAN_FFI_ERROR_BAD_PARAMETER = #const BOTAN_FFI_ERROR_BAD_PARAMETER

-- | An object that requires a key normally must be keyed before use (eg before encrypting or MACing data). If this is not done, the operation will fail and return this error code.
pattern BOTAN_FFI_ERROR_KEY_NOT_SET = #const BOTAN_FFI_ERROR_KEY_NOT_SET

-- | An invalid key length was provided with a call to foo_set_key.
pattern BOTAN_FFI_ERROR_INVALID_KEY_LENGTH = #const BOTAN_FFI_ERROR_INVALID_KEY_LENGTH

-- | An operation was invoked that makes sense for the object, but it is in the wrong state to perform it.
pattern BOTAN_FFI_ERROR_INVALID_OBJECT_STATE = #const BOTAN_FFI_ERROR_INVALID_OBJECT_STATE

-- | This is returned if the functionality is not available for some reason. For example if you call botan_hash_init with a named hash function which is not enabled, this error is returned.
pattern BOTAN_FFI_ERROR_NOT_IMPLEMENTED = #const BOTAN_FFI_ERROR_NOT_IMPLEMENTED

-- | This is used if an object provided did not match the function. For example calling botan_hash_destroy on a botan_rng_t object will cause this error.
pattern BOTAN_FFI_ERROR_INVALID_OBJECT = #const BOTAN_FFI_ERROR_INVALID_OBJECT

pattern BOTAN_FFI_ERROR_TLS_ERROR = #const BOTAN_FFI_ERROR_TLS_ERROR
pattern BOTAN_FFI_ERROR_HTTP_ERROR = #const BOTAN_FFI_ERROR_HTTP_ERROR
pattern BOTAN_FFI_ERROR_ROUGHTIME_ERROR = #const BOTAN_FFI_ERROR_ROUGHTIME_ERROR

-- | Something bad happened, but we are not sure why or how.
pattern BOTAN_FFI_ERROR_UNKNOWN_ERROR = #const BOTAN_FFI_ERROR_UNKNOWN_ERROR

foreign import capi safe "botan/ffi.h botan_error_description"
    botan_error_description
        :: CInt                -- ^ __err__
        -> IO (ConstPtr CChar)

foreign import capi safe "botan/ffi.h botan_error_last_exception_message"
    botan_error_last_exception_message
        :: IO (ConstPtr CChar)
