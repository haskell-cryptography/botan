{-|
Module      : Botan.Low.Error
Description : Error codes and exception handling
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.Error
( BotanErrorCode(..)
, pattern Success
, pattern InvalidIdentifier
, pattern InvalidInput
, pattern BadMAC
, pattern InsufficientBufferSpace
, pattern StringConversionError
, pattern ExceptionThrown
, pattern OutOfMemory
, pattern SystemError
, pattern InternalError
, pattern BadFlag
, pattern NullPointer
, pattern BadParameter
, pattern KeyNotSet
, pattern InvalidKeyLength
, pattern InvalidObjectState
, pattern NotImplemented
, pattern InvalidObject
, pattern TLSError
, pattern HttpError
, pattern RoughtimeError
, pattern UnknownError
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
, throwBotanCatchingSuccess
, throwBotanCatchingBool
, throwBotanCatchingInt
, throwBotanErrorWithCallstack
) where

import Data.Typeable

import Botan.Bindings.Error

import Botan.Low.Prelude

import qualified Data.ByteString        as ByteString
import qualified Data.ByteString.Char8  as Char8
import qualified Data.Text              as Text

-- | Botan error code data type
type BotanErrorCode = CInt

{-
Botan error code patterns
-}

pattern Success
    ,   InvalidIdentifier
    ,   InvalidInput
    ,   BadMAC
    ,   InsufficientBufferSpace
    ,   StringConversionError
    ,   ExceptionThrown
    ,   OutOfMemory
    ,   SystemError
    ,   InternalError
    ,   BadFlag
    ,   NullPointer
    ,   BadParameter
    ,   KeyNotSet
    ,   InvalidKeyLength
    ,   InvalidObjectState
    ,   NotImplemented
    ,   InvalidObject
    ,   TLSError
    ,   HttpError
    ,   RoughtimeError
    ,   UnknownError
    :: BotanErrorCode

pattern Success = BOTAN_FFI_SUCCESS
pattern InvalidIdentifier = BOTAN_FFI_INVALID_VERIFIER
pattern InvalidInput = BOTAN_FFI_ERROR_INVALID_INPUT
pattern BadMAC = BOTAN_FFI_ERROR_BAD_MAC
pattern InsufficientBufferSpace = BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE
pattern StringConversionError = BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR
pattern ExceptionThrown = BOTAN_FFI_ERROR_EXCEPTION_THROWN
pattern OutOfMemory = BOTAN_FFI_ERROR_OUT_OF_MEMORY
pattern SystemError = BOTAN_FFI_ERROR_SYSTEM_ERROR
pattern InternalError = BOTAN_FFI_ERROR_INTERNAL_ERROR
pattern BadFlag = BOTAN_FFI_ERROR_BAD_FLAG
pattern NullPointer = BOTAN_FFI_ERROR_NULL_POINTER
pattern BadParameter = BOTAN_FFI_ERROR_BAD_PARAMETER
pattern KeyNotSet = BOTAN_FFI_ERROR_KEY_NOT_SET
pattern InvalidKeyLength = BOTAN_FFI_ERROR_INVALID_KEY_LENGTH
pattern InvalidObjectState = BOTAN_FFI_ERROR_INVALID_OBJECT_STATE
pattern NotImplemented = BOTAN_FFI_ERROR_NOT_IMPLEMENTED
pattern InvalidObject = BOTAN_FFI_ERROR_INVALID_OBJECT
pattern TLSError = BOTAN_FFI_ERROR_TLS_ERROR
pattern HttpError = BOTAN_FFI_ERROR_HTTP_ERROR
pattern RoughtimeError = BOTAN_FFI_ERROR_ROUGHTIME_ERROR
pattern UnknownError = BOTAN_FFI_ERROR_UNKNOWN_ERROR

{-
Botan error code functions
-}

-- | Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.
botanErrorDescription :: BotanErrorCode -> IO String
botanErrorDescription e = do
    descPtr <- botan_error_description e
    peekCString (unConstPtr descPtr)

-- | Ditto "text"
botanErrorDescriptionText :: BotanErrorCode -> IO Text
botanErrorDescriptionText = fmap Text.pack . botanErrorDescription

-- | Ditto "bytes"
botanErrorDescriptionBytes :: BotanErrorCode -> IO ByteString
-- TODO: Use coerce + packCString?
botanErrorDescriptionBytes = fmap Char8.pack . botanErrorDescription

-- | Returns a static string stored in a thread local variable which contains the last exception message thrown.
--  WARNING: This string buffer is overwritten on the next call to the FFI layer
botanErrorLastExceptionMessage :: IO String
botanErrorLastExceptionMessage = do
    msgPtr <- botan_error_last_exception_message
    peekCString (unConstPtr msgPtr)

-- | Ditto "text"
botanErrorLastExceptionMessageText :: IO Text
botanErrorLastExceptionMessageText = fmap Text.pack botanErrorLastExceptionMessage

-- | Ditto "bytes"
botanErrorLastExceptionMessageBytes :: IO ByteString
-- TODO: Use coerce + packCString?
botanErrorLastExceptionMessageBytes = fmap Char8.pack botanErrorLastExceptionMessage

{-
Exceptions
-}

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

{-
Throwing exceptions
-}

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

-- TODO: Rename to throwBotanCatchingInvalidIdentifier, make:
-- throwBotanCatchingSuccess :: HasCallStack => IO BotanErrorCode -> IO Bool
-- throwBotanCatchingSuccess act = do
--     result <- act
--     case result of
--         BOTAN_FFI_SUCCESS           -> return True
--         _                           -> throwBotanErrorWithCallstack (fromIntegral result) callStack
-- NOTE: Catches 0 / Success as True and 1 / InvalidIdentifier as False, throws all other values
throwBotanCatchingSuccess :: HasCallStack => IO BotanErrorCode -> IO Bool
throwBotanCatchingSuccess act = do
    result <- act
    case result of
        BOTAN_FFI_SUCCESS           -> return True
        BOTAN_FFI_INVALID_VERIFIER  -> return False
        _                           -> throwBotanErrorWithCallstack (fromIntegral result) callStack

-- NOTE: Catches 1 as True and 0 as False, throws all other values
throwBotanCatchingBool :: HasCallStack => IO BotanErrorCode -> IO Bool
throwBotanCatchingBool act = do
    result <- act
    case result of
        0 -> return False
        1 -> return True
        _ -> throwBotanErrorWithCallstack result callStack


-- NOTE: Catches positive numbers including zero, throws all other values
-- Equivalent to fromIntegral . throwBotanIfNegative
throwBotanCatchingInt :: HasCallStack => IO BotanErrorCode -> IO Int
throwBotanCatchingInt act = do
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
