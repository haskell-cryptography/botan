{-|
Module      : Botan.Low.Error
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

module Botan.Low.Error (
    -- * Error codes
    Internal.BotanErrorCode
  , Internal.botanErrorDescription
  , Internal.BotanErrorMessage(..)
  , Internal.botanErrorLastExceptionMessage
    -- * Exception hierarchy
  , Internal.SomeBotanException(..)
  , Internal.toBotanException
  , Internal.fromBotanException
    -- * Individual exceptions
  , Internal.InvalidInputException(..)
  , Internal.BadMACException(..)
  , Internal.InsufficientBufferSpaceException(..)
  , Internal.StringConversionException(..)
  , Internal.ExceptionThrownException(..)
  , Internal.OutOfMemoryException(..)
  , Internal.SystemErrorException(..)
  , Internal.InternalErrorException(..)
  , Internal.BadFlagException(..)
  , Internal.NullPointerException(..)
  , Internal.BadParameterException(..)
  , Internal.KeyNotSetException(..)
  , Internal.InvalidKeyLengthException(..)
  , Internal.InvalidObjectStateException(..)
  , Internal.NotImplementedException(..)
  , Internal.InvalidObjectException(..)
  , Internal.UnknownException(..)
  ) where

import           Botan.Low.Error.Internal as Internal
