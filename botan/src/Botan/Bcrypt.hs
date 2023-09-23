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
import Botan.RNG

-- TODO: Should we just re-export bcryptGenerateIO?
--  Ditto question for any other function using RNGCtx
-- ANSWER: No. We want to make this user friendly,
--  this means changes for the better

-- TODO: Keep / rename?
-- |Create a password hash using Bcrypt
--
--  Output is formatted bcrypt $2a$...
--
--  This function is unsafe because it mutates the state of the RNGCtx
unsafeBcryptGenerate
    :: ByteString   -- ^ The password
    -> RNGCtx       -- ^ A random number generator
    -> Int          -- ^ A work factor to slow down guessing attacks (a value of 12 to 16 is probably fine).
    -> ByteString
unsafeBcryptGenerate = unsafePerformIO3 bcryptGenerateIO
{-# NOINLINE unsafeBcryptGenerate #-}

-- TODO: Keep / rename?
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

--
-- A better implementation
--

-- TODO: Get rid of underscores after solidifying

data Security
    = Fast
    | Good
    | Strong

_bcryptFactor :: Security -> Int
_bcryptFactor Fast   = 12
_bcryptFactor Good   = 14
_bcryptFactor Strong = 16

type Password = ByteString -- NOTE: Should actualy be Text
type BcryptDigest = ByteString

-- NOTE: Probably get rid of the original unsafeBcryptGenerate, in favor of this new one
_unsafeBcryptGenerate :: Password -> Security -> BcryptDigest
_unsafeBcryptGenerate = unsafePerformIO2 _bcryptGenerate
{-# NOINLINE _unsafeBcryptGenerate #-}

-- NOTE: Uses system RNG
_bcryptGenerate :: Password -> Security -> IO BcryptDigest
_bcryptGenerate pass = _bcryptGenerateWith pass System

-- WARNING: Does not seed RNG
_bcryptGenerateWith :: Password -> RNG -> Security -> IO BcryptDigest
_bcryptGenerateWith pass rng security = do
    r <- rngCtxInitIO rng
    bcryptGenerateIO pass r (_bcryptFactor security)

_bcryptValidate
    :: Password     -- ^ The password to check against
    -> BcryptDigest -- ^ The stored hash to check against
    -> Bool
_bcryptValidate = unsafePerformIO2 bcryptIsValidIO
{-# NOINLINE _bcryptValidate #-}
