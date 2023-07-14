module Botan.Error
( BotanErrorCode(..)
, pattern BOTAN_FFI_SUCCESS
, pattern BOTAN_FFI_INVALID_VERIFIER
, pattern BOTAN_FFI_ERROR_INVALID_INPUT
, pattern BOTAN_FFI_ERROR_BAD_MAC
, pattern BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE
, pattern BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR
, pattern BOTAN_FFI_ERROR_EXCEPTION_THROWN
, pattern BOTAN_FFI_ERROR_OUT_OF_MEMORY
, pattern BOTAN_FFI_ERROR_SYSTEM_ERROR
, pattern BOTAN_FFI_ERROR_INTERNAL_ERROR
, pattern BOTAN_FFI_ERROR_BAD_FLAG
, pattern BOTAN_FFI_ERROR_NULL_POINTER
, pattern BOTAN_FFI_ERROR_BAD_PARAMETER
, pattern BOTAN_FFI_ERROR_KEY_NOT_SET
, pattern BOTAN_FFI_ERROR_INVALID_KEY_LENGTH
, pattern BOTAN_FFI_ERROR_INVALID_OBJECT_STATE
, pattern BOTAN_FFI_ERROR_NOT_IMPLEMENTED
, pattern BOTAN_FFI_ERROR_INVALID_OBJECT
, pattern BOTAN_FFI_ERROR_TLS_ERROR
, pattern BOTAN_FFI_ERROR_HTTP_ERROR
, pattern BOTAN_FFI_ERROR_ROUGHTIME_ERROR
, pattern BOTAN_FFI_ERROR_UNKNOWN_ERROR
, botanErrorDescription
, botanErrorLastExceptionMessage
, SomeBotanException(..)
, toBotanException
, fromBotanException
, InvalidInputException(..)
, BadMACException(..)
, InsufficientBufferSpaceException(..)
, StringConversionException(..)
, ExceptionThrownException(..)
, OutOfMemoryException(..)
, SystemErrorException(..)
, InternalErrorException(..)
, BadFlagException(..)
, NullPointerException(..)
, BadParameterException(..)
, KeyNotSetException(..)
, InvalidKeyLengthException(..)
, InvalidObjectStateException(..)
, NotImplementedException(..)
, InvalidObjectException(..)
, UnknownException(..)
, throwBotanError
, throwBotanIfNegative
, throwBotanIfNegative_
, throwBotanCatchingBool
, throwBotanCatchingPositive
, throwBotanErrorWithCallstack
) where

import Prelude

import Control.Exception
import Control.Monad

import Data.Maybe

import Data.Text (Text)

import Data.Typeable

import System.IO

import Foreign.C.String (CString(..))
import Foreign.C.Types (CInt(..))

import GHC.Stack

import Botan.Prelude

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

-- | Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.
botanErrorDescription :: BotanErrorCode -> IO Text
botanErrorDescription e = botan_error_description e >>= peekCStringText

-- | const char *botan_error_last_exception_message()
foreign import ccall unsafe botan_error_last_exception_message :: IO CString

-- | Returns a static string stored in a thread local variable which contains the last exception message thrown.
--  WARNING: This string buffer is overwritten on the next call to the FFI layer
botanErrorLastExceptionMessage :: IO Text
botanErrorLastExceptionMessage = botan_error_last_exception_message >>= peekCStringText

-- | The SomeBotanException type is the root of the botan exception type hierarchy.
data SomeBotanException = forall e . Exception e => SomeBotanException e

instance Show SomeBotanException where
    show (SomeBotanException e) = show e

instance Exception SomeBotanException

toBotanException :: Exception e => e -> SomeException
toBotanException = toException . SomeBotanException

fromBotanException :: Exception e => SomeException -> Maybe e
fromBotanException x = do
    SomeBotanException a <- fromException x
    cast a

data InvalidVerifierException
    = InvalidVerifierException BotanErrorCode CallStack
    deriving (Show)

instance Exception InvalidVerifierException where
    toException = toBotanException
    fromException = fromBotanException

data InvalidInputException
    = InvalidInputException BotanErrorCode CallStack
    deriving (Show)

instance Exception InvalidInputException where
    toException = toBotanException
    fromException = fromBotanException

data BadMACException
    = BadMACException BotanErrorCode CallStack
    deriving (Show)

instance Exception BadMACException where
    toException = toBotanException
    fromException = fromBotanException

data InsufficientBufferSpaceException
    = InsufficientBufferSpaceException BotanErrorCode CallStack
    deriving (Show)

instance Exception InsufficientBufferSpaceException where
    toException = toBotanException
    fromException = fromBotanException

data StringConversionException
    = StringConversionException BotanErrorCode CallStack
    deriving (Show)

instance Exception StringConversionException where
    toException = toBotanException
    fromException = fromBotanException

data ExceptionThrownException
    = ExceptionThrownException BotanErrorCode CallStack
    deriving (Show)

instance Exception ExceptionThrownException where
    toException = toBotanException
    fromException = fromBotanException

data OutOfMemoryException
    = OutOfMemoryException BotanErrorCode CallStack
    deriving (Show)

instance Exception OutOfMemoryException where
    toException = toBotanException
    fromException = fromBotanException

data SystemErrorException
    = SystemErrorException BotanErrorCode CallStack
    deriving (Show)

instance Exception SystemErrorException where
    toException = toBotanException
    fromException = fromBotanException

data InternalErrorException
    = InternalErrorException BotanErrorCode CallStack
    deriving (Show)

instance Exception InternalErrorException where
    toException = toBotanException
    fromException = fromBotanException

data BadFlagException
    = BadFlagException BotanErrorCode CallStack
    deriving (Show)

instance Exception BadFlagException where
    toException = toBotanException
    fromException = fromBotanException

data NullPointerException
    = NullPointerException BotanErrorCode CallStack
    deriving (Show)

instance Exception NullPointerException where
    toException = toBotanException
    fromException = fromBotanException

data BadParameterException
    = BadParameterException BotanErrorCode CallStack
    deriving (Show)

instance Exception BadParameterException where
    toException = toBotanException
    fromException = fromBotanException

data KeyNotSetException
    = KeyNotSetException BotanErrorCode CallStack
    deriving (Show)

instance Exception KeyNotSetException where
    toException = toBotanException
    fromException = fromBotanException

data InvalidKeyLengthException
    = InvalidKeyLengthException BotanErrorCode CallStack
    deriving (Show)

instance Exception InvalidKeyLengthException where
    toException = toBotanException
    fromException = fromBotanException

data InvalidObjectStateException
    = InvalidObjectStateException BotanErrorCode CallStack
    deriving (Show)

instance Exception InvalidObjectStateException where
    toException = toBotanException
    fromException = fromBotanException

data NotImplementedException
    = NotImplementedException BotanErrorCode CallStack
    deriving (Show)

instance Exception NotImplementedException where
    toException = toBotanException
    fromException = fromBotanException

data InvalidObjectException
    = InvalidObjectException BotanErrorCode CallStack
    deriving (Show)

instance Exception InvalidObjectException where
    toException = toBotanException
    fromException = fromBotanException
    
data UnknownException
    = UnknownException BotanErrorCode CallStack
    deriving (Show)

instance Exception UnknownException where
    toException = toBotanException
    fromException = fromBotanException

throwBotanError :: HasCallStack => BotanErrorCode -> IO a
throwBotanError r = throwBotanErrorWithCallstack r callStack

throwBotanIfNegative :: HasCallStack => IO BotanErrorCode -> IO BotanErrorCode
throwBotanIfNegative act = do
    e <- act
    when (e < 0) $ throwBotanErrorWithCallstack (fromIntegral e) callStack
    return e

throwBotanIfNegative_ :: HasCallStack => IO BotanErrorCode -> IO ()
throwBotanIfNegative_ act = do
    e <- act
    when (e < 0) $ throwBotanErrorWithCallstack (fromIntegral e) callStack


-- NOTE: Catches Success as True and InvalidIdentifier as False, throws all other values
throwBotanCatchingBool :: HasCallStack => IO BotanErrorCode -> IO Bool
throwBotanCatchingBool act = do
    result <- act
    when (result < 0) $ throwBotanErrorWithCallstack (fromIntegral result) callStack
    case result of
        BOTAN_FFI_SUCCESS           -> return True
        -- _                           -> return False
        BOTAN_FFI_INVALID_VERIFIER  -> return False
        _                           -> throwBotanErrorWithCallstack (fromIntegral result) callStack


-- NOTE: Catches positive numbers including zero, throws all other values
throwBotanCatchingPositive :: HasCallStack => IO BotanErrorCode -> IO Int
throwBotanCatchingPositive act = do
    result <- act
    when (result < 0) $ throwBotanErrorWithCallstack (fromIntegral result) callStack
    return (fromIntegral result)

throwBotanErrorWithCallstack :: BotanErrorCode -> CallStack -> IO a
throwBotanErrorWithCallstack e cs =  case e of
    -- BOTAN_FFI_SUCCESS                           -> throwIO $ SUCCESS e cs
    BOTAN_FFI_INVALID_VERIFIER                  -> throwIO $ InvalidVerifierException e cs
    BOTAN_FFI_ERROR_INVALID_INPUT               -> throwIO $ InvalidInputException e cs
    BOTAN_FFI_ERROR_BAD_MAC                     -> throwIO $ BadMACException e cs
    BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE   -> throwIO $ InsufficientBufferSpaceException e cs
    BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR     -> throwIO $ StringConversionException e cs
    BOTAN_FFI_ERROR_EXCEPTION_THROWN            -> throwIO $ ExceptionThrownException e cs
    BOTAN_FFI_ERROR_OUT_OF_MEMORY               -> throwIO $ OutOfMemoryException e cs
    BOTAN_FFI_ERROR_SYSTEM_ERROR                -> throwIO $ SystemErrorException e cs
    BOTAN_FFI_ERROR_INTERNAL_ERROR              -> throwIO $ InternalErrorException e cs
    BOTAN_FFI_ERROR_BAD_FLAG                    -> throwIO $ BadFlagException e cs
    BOTAN_FFI_ERROR_NULL_POINTER                -> throwIO $ NullPointerException e cs
    BOTAN_FFI_ERROR_BAD_PARAMETER               -> throwIO $ BadParameterException e cs
    BOTAN_FFI_ERROR_KEY_NOT_SET                 -> throwIO $ KeyNotSetException e cs
    BOTAN_FFI_ERROR_INVALID_KEY_LENGTH          -> throwIO $ InvalidKeyLengthException e cs
    BOTAN_FFI_ERROR_INVALID_OBJECT_STATE        -> throwIO $ InvalidObjectStateException e cs
    BOTAN_FFI_ERROR_NOT_IMPLEMENTED             -> throwIO $ NotImplementedException e cs
    BOTAN_FFI_ERROR_INVALID_OBJECT              -> throwIO $ InvalidObjectException e cs
    _                                           -> throwIO $ UnknownException e cs
