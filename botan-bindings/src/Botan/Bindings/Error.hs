module Botan.Bindings.Error where

import Botan.Bindings.Prelude

-- TODO: Maybe use *.hsc for this one file (or Botan/Enums.hsc)

-- | Error values below -10000 are reserved for the application (these can be returned from view functions).
type BotanErrorCode = CInt

-- | Generally returned to indicate success
pattern BOTAN_FFI_SUCCESS = 0 :: BotanErrorCode

-- | NOTE: this value is positive, but still represents an error condition. In indicates that the function completed successfully, but the value provided was not correct. For example botan_bcrypt_is_valid returns this value if the password did not match the hash.
pattern BOTAN_FFI_INVALID_VERIFIER = 1 :: BotanErrorCode

-- | The input was invalid. (Currently this error return is not used.)
pattern BOTAN_FFI_ERROR_INVALID_INPUT = -1 :: BotanErrorCode

-- | While decrypting in an AEAD mode, the tag failed to verify.
pattern BOTAN_FFI_ERROR_BAD_MAC = -2 :: BotanErrorCode

-- | Functions which write a variable amount of space return this if the indicated buffer length was insufficient to write the data. In that case, the output length parameter is set to the size that is required.
pattern BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE = -10 :: BotanErrorCode

-- | A string view function which attempts to convert a string to a specified charset, and fails, can use this function to indicate the error.
pattern BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR = -11 :: BotanErrorCode

-- | An exception was thrown while processing this request, but no further details are available.
--  NOTE: If the environment variable BOTAN_FFI_PRINT_EXCEPTIONS is set to any non-empty value, then any exception which is caught by the FFI layer will first print the exception message to stderr before returning an error. This is sometimes useful for debugging.
pattern BOTAN_FFI_ERROR_EXCEPTION_THROWN = -20 :: BotanErrorCode

-- | Memory allocation failed
pattern BOTAN_FFI_ERROR_OUT_OF_MEMORY = -21 :: BotanErrorCode

-- | A system call failed
pattern BOTAN_FFI_ERROR_SYSTEM_ERROR = -22 :: BotanErrorCode

-- | An internal bug was encountered (please open a ticket on github)
pattern BOTAN_FFI_ERROR_INTERNAL_ERROR = -23 :: BotanErrorCode

-- | A value provided in a flag variable was unknown.
pattern BOTAN_FFI_ERROR_BAD_FLAG = -30 :: BotanErrorCode

-- | A null pointer was provided as an argument where that is not allowed.
pattern BOTAN_FFI_ERROR_NULL_POINTER = -31 :: BotanErrorCode

-- | An argument did not match the function.
pattern BOTAN_FFI_ERROR_BAD_PARAMETER = -32 :: BotanErrorCode

-- | An object that requires a key normally must be keyed before use (eg before encrypting or MACing data). If this is not done, the operation will fail and return this error code.
pattern BOTAN_FFI_ERROR_KEY_NOT_SET = -33 :: BotanErrorCode

-- | An invalid key length was provided with a call to foo_set_key.
pattern BOTAN_FFI_ERROR_INVALID_KEY_LENGTH = -34 :: BotanErrorCode

-- | An operation was invoked that makes sense for the object, but it is in the wrong state to perform it.
pattern BOTAN_FFI_ERROR_INVALID_OBJECT_STATE = -35 :: BotanErrorCode

-- | This is returned if the functionality is not available for some reason. For example if you call botan_hash_init with a named hash function which is not enabled, this error is returned.
pattern BOTAN_FFI_ERROR_NOT_IMPLEMENTED = -40 :: BotanErrorCode

-- | This is used if an object provided did not match the function. For example calling botan_hash_destroy on a botan_rng_t object will cause this error.
pattern BOTAN_FFI_ERROR_INVALID_OBJECT = -50 :: BotanErrorCode

pattern BOTAN_FFI_ERROR_TLS_ERROR = -75 :: BotanErrorCode
pattern BOTAN_FFI_ERROR_HTTP_ERROR = -76 :: BotanErrorCode
pattern BOTAN_FFI_ERROR_ROUGHTIME_ERROR = -77 :: BotanErrorCode

-- | Something bad happened, but we are not sure why or how.
pattern BOTAN_FFI_ERROR_UNKNOWN_ERROR = -100 :: BotanErrorCode

-- | const char* botan_error_description(int err);
foreign import ccall unsafe botan_error_description :: BotanErrorCode -> IO CString

-- | const char *botan_error_last_exception_message()
foreign import ccall unsafe botan_error_last_exception_message :: IO CString
