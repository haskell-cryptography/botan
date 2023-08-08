{-|
Module      : Botan.Bcrypt
Description : Bcrypt password hashing
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

Generate and validate Bcrypt password hashes
-}

module Botan.Bcrypt where

import qualified Data.ByteString as ByteString

import Botan.Low.Bcrypt
import Botan.Low.RNG

import Botan.Error
import Botan.Prelude
-- import Botan.RNG

-- TODO: Should we just re-export bcryptGenerateIO?
--  Ditto question for any other function using RNGCtx
{-
-- |Create a password hash using Bcrypt
--
--  Output is formatted bcrypt $2a$...
bcryptGenerate
    :: ByteString   -- ^ The password
    -> RNGCtx       -- ^ A random number generator
    -> Int          -- ^ A work factor to slow down guessing attacks (a value of 12 to 16 is probably fine).
    -> ByteString
bcryptGenerate = unsafePerformIO3 bcryptGenerateIO
{-# NOINLINE bcryptGenerate #-}
-}

-- |Check a previously created password hash
--
--  Returns True iff this password/hash combination is valid,
--  False if the combination is not valid (but otherwise well formed),
--  and otherwise throws an exception on error
bcryptIsValid
    :: ByteString   -- ^ The password to check against
    -> ByteString   -- ^ The stored hash to check against
    -> Bool
bcryptIsValid = unsafePerformIO2 bcryptIsValidIO
{-# NOINLINE bcryptIsValid #-}
