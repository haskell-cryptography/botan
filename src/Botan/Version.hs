{-# LANGUAGE CApiFFI #-}

module Botan.Version
( botanVersionString
) where

import Control.Monad
import System.IO

import Foreign.C.String

-- https://botan.randombit.net/handbook/api_ref/ffi.html#versioning

-- | const char *botan_version_string()
foreign import ccall unsafe botan_version_string :: IO CString
-- NOTE: We should be using `capi` instead of `ccall`, a la: 
--  https://wiki.haskell.org/Foreign_Function_Interface
-- However, this causes:
--  error: call to undeclared function 'botan_version_string'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
--  warning: incompatible integer to pointer conversion returning 'int' from a function with result type 'char *' [-Wint-conversion]

-- | Returns a free-form string describing the version. The return value is a statically allocated string.
botanVersionString :: IO ()
botanVersionString = botan_version_string >>= peekCString >>= putStrLn
