{-|
Module      : Botan.Low.Error
Description : Error codes and exception handling
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE DerivingVia #-}

module Botan.Low.Error.Internal (
    -- * Error codes
    BotanErrorCode
  , botanErrorDescription
  , BotanErrorMessage(..)
  , botanErrorLastExceptionMessage
    -- * Exception hierarchy
  , SomeBotanException(..)
  , toBotanException
  , fromBotanException
    -- ** Individual exceptions
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
    -- ** Throwing and catching
  , throwBotanError
  , throwBotanIfNegative
  , throwBotanIfNegative_
  , throwBotanCatchingInvalidVerifier
  , throwBotanCatchingInvalidInput
  , throwBotanCatchingBool
  , throwBotanCatching
  , throwBotanCatchingInt
  , throwBotanErrorWithCallstack
  ) where

import           Botan.Bindings.ConstPtr (ConstPtr (..))
import           Botan.Bindings.Error
import           Botan.Low.Internal.ByteString
import           Control.Exception
import           Control.Monad
import           Data.ByteString (ByteString)
import           Data.Typeable
import           Foreign.C.Types
import           GHC.Stack
import           Prelude

{-------------------------------------------------------------------------------
  Errors
-------------------------------------------------------------------------------}

newtype BotanErrorCode = BotanErrorCode CInt
  deriving stock (Show, Eq)

-- | Convert an error code into a string. Returns "Unknown error" if the error
-- code is not a known one.
botanErrorDescription :: BotanErrorCode -> IO ByteString
botanErrorDescription (BotanErrorCode e) = do
    descPtr <- botan_error_description e
    peekCString (unConstPtr descPtr)

newtype BotanErrorMessage = BotanErrorMessage ByteString
  deriving newtype Show

-- | Returns a static string stored in a thread local variable which contains
--  the last exception message thrown. WARNING: This string buffer is
--  overwritten on the next call to the FFI layer
botanErrorLastExceptionMessage :: IO BotanErrorMessage
botanErrorLastExceptionMessage = do
    msgPtr <- botan_error_last_exception_message
    BotanErrorMessage <$> peekCString (unConstPtr msgPtr)

{-------------------------------------------------------------------------------
  Exception hierarchy
-------------------------------------------------------------------------------}

-- | The SomeBotanException type is the root of the botan exception type
-- hierarchy.
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

newtype ViaSomeBotanException e = ViaSomeBotanException e
  deriving stock Show

instance (Show e, Typeable e) => Exception (ViaSomeBotanException e) where
  toException = toBotanException
  fromException = fromBotanException

{-------------------------------------------------------------------------------
  Individual exceptions
-------------------------------------------------------------------------------}

data InvalidVerifierException
    = InvalidVerifierException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException InvalidVerifierException

data InvalidInputException
    = InvalidInputException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException InvalidInputException

data BadMACException
    = BadMACException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException BadMACException

data InsufficientBufferSpaceException
    = InsufficientBufferSpaceException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException InsufficientBufferSpaceException

data StringConversionException
    = StringConversionException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException StringConversionException

data ExceptionThrownException
    = ExceptionThrownException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException ExceptionThrownException

data OutOfMemoryException
    = OutOfMemoryException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException OutOfMemoryException

data SystemErrorException
    = SystemErrorException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException SystemErrorException

data InternalErrorException
    = InternalErrorException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException InternalErrorException

data BadFlagException
    = BadFlagException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException BadFlagException

data NullPointerException
    = NullPointerException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException NullPointerException

data BadParameterException
    = BadParameterException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException BadParameterException

data KeyNotSetException
    = KeyNotSetException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException KeyNotSetException

data InvalidKeyLengthException
    = InvalidKeyLengthException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException InvalidKeyLengthException

data InvalidObjectStateException
    = InvalidObjectStateException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException InvalidObjectStateException

data NotImplementedException
    = NotImplementedException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException NotImplementedException

data InvalidObjectException
    = InvalidObjectException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException InvalidObjectException

data UnknownException
    = UnknownException BotanErrorCode BotanErrorMessage CallStack
    deriving stock (Show)
    deriving Exception via ViaSomeBotanException UnknownException

{-------------------------------------------------------------------------------
  Exceptions: throwing and catching
-------------------------------------------------------------------------------}

throwBotanError :: HasCallStack => CInt -> IO a
throwBotanError r = throwBotanErrorWithCallstack r callStack

throwBotanIfNegative :: HasCallStack => IO CInt -> IO CInt
throwBotanIfNegative act = do
    e <- act
    when (e < 0) $ throwBotanErrorWithCallstack e callStack
    return e

throwBotanIfNegative_ :: HasCallStack => IO CInt -> IO ()
throwBotanIfNegative_ act = do
    e <- act
    when (e < 0) $ throwBotanErrorWithCallstack e callStack

-- | 'throwBotanCatching' with @retCode = 'BOTAN_FFI_INVALID_VERIFIER'@.
throwBotanCatchingInvalidVerifier :: HasCallStack => IO CInt -> IO Bool
throwBotanCatchingInvalidVerifier = throwBotanCatching BOTAN_FFI_INVALID_VERIFIER

-- | 'throwBotanCatching' with @retCode = 'BOTAN_FFI_ERROR_INVALID_INPUT'@.
throwBotanCatchingInvalidInput :: HasCallStack => IO CInt -> IO Bool
throwBotanCatchingInvalidInput = throwBotanCatching BOTAN_FFI_ERROR_INVALID_INPUT

-- | @'throwBotanCatching' retCode action@ runs the @action@ and catches return
-- code 0 (Success) as True and @retCode@ as False. All other return codes are
-- thrown as exceptions.
throwBotanCatching :: HasCallStack => CInt -> IO CInt -> IO Bool
throwBotanCatching x act = do
    result <- act
    case result of
      BOTAN_FFI_SUCCESS -> return True
      _ | x == result   -> return False
        | otherwise     -> throwBotanErrorWithCallstack result callStack

-- NOTE: Catches 1 as True and 0 as False, throws all other values
throwBotanCatchingBool :: HasCallStack => IO CInt -> IO Bool
throwBotanCatchingBool act = do
    result <- act
    case result of
        0 -> return False
        1 -> return True
        _ -> throwBotanErrorWithCallstack result callStack

-- TODO: remove throwBotanCatchingInt. See issue #60.
--
-- NOTE: Catches positive numbers including zero, throws all other values
-- Equivalent to fromIntegral . throwBotanIfNegative
throwBotanCatchingInt :: HasCallStack => IO CInt -> IO Int
throwBotanCatchingInt act = do
    result <- act
    when (result < 0) $ throwBotanErrorWithCallstack result callStack
    return (fromIntegral result)

throwBotanErrorWithCallstack :: CInt -> CallStack -> IO a
throwBotanErrorWithCallstack e cs =  do
    emsg <- botanErrorLastExceptionMessage
    case e of
        -- Note: we do not include a case for @BOTAN_FFI_SUCCESS@ since it
        -- signals that the function call was successful.
        BOTAN_FFI_INVALID_VERIFIER                  -> throwIO $ InvalidVerifierException bec emsg cs
        BOTAN_FFI_ERROR_INVALID_INPUT               -> throwIO $ InvalidInputException bec emsg cs
        BOTAN_FFI_ERROR_BAD_MAC                     -> throwIO $ BadMACException bec emsg cs
        BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE   -> throwIO $ InsufficientBufferSpaceException bec emsg cs
        BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR     -> throwIO $ StringConversionException bec emsg cs
        BOTAN_FFI_ERROR_EXCEPTION_THROWN            -> throwIO $ ExceptionThrownException bec emsg cs
        BOTAN_FFI_ERROR_OUT_OF_MEMORY               -> throwIO $ OutOfMemoryException bec emsg cs
        BOTAN_FFI_ERROR_SYSTEM_ERROR                -> throwIO $ SystemErrorException bec emsg cs
        BOTAN_FFI_ERROR_INTERNAL_ERROR              -> throwIO $ InternalErrorException bec emsg cs
        BOTAN_FFI_ERROR_BAD_FLAG                    -> throwIO $ BadFlagException bec emsg cs
        BOTAN_FFI_ERROR_NULL_POINTER                -> throwIO $ NullPointerException bec emsg cs
        BOTAN_FFI_ERROR_BAD_PARAMETER               -> throwIO $ BadParameterException bec emsg cs
        BOTAN_FFI_ERROR_KEY_NOT_SET                 -> throwIO $ KeyNotSetException bec emsg cs
        BOTAN_FFI_ERROR_INVALID_KEY_LENGTH          -> throwIO $ InvalidKeyLengthException bec emsg cs
        BOTAN_FFI_ERROR_INVALID_OBJECT_STATE        -> throwIO $ InvalidObjectStateException bec emsg cs
        BOTAN_FFI_ERROR_NOT_IMPLEMENTED             -> throwIO $ NotImplementedException bec emsg cs
        BOTAN_FFI_ERROR_INVALID_OBJECT              -> throwIO $ InvalidObjectException bec emsg cs
        _                                           -> throwIO $ UnknownException bec emsg cs
  where
    bec = BotanErrorCode e
