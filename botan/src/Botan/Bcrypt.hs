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

-- |A bcrypt security level
data Security
    = Fast
    | Good
    | Strong

-- |Convert a bcrypt security level to an integer factor
bcryptFactor :: Security -> Int
bcryptFactor Fast   = 12
bcryptFactor Good   = 14
bcryptFactor Strong = 16

type Password = ByteString -- NOTE: Should actualy be Text
type BcryptDigest = ByteString

-- |This function is unsafe as it may block for an indeterminate
--  amount of time
unsafeBcryptGenerate
    :: Password     -- ^ The password to check against
    -> Security     -- ^ A work factor to slow down guessing attack
    -> BcryptDigest
unsafeBcryptGenerate = unsafePerformIO2 bcryptGenerate
{-# NOINLINE unsafeBcryptGenerate #-}

-- |Create a password hash using Bcrypt
--
--  Output is formatted bcrypt $2a$...
bcryptGenerate
    :: Password         -- ^ The password to check against
    -> Security         -- ^ A work factor to slow down guessing attack
    -> IO BcryptDigest
bcryptGenerate = bcryptGenerateWith System

bcryptGenerateWith
    :: RNG              -- ^ A random number generator
    -> Password         -- ^ The password to check against
    -> Security         -- ^ A work factor to slow down guessing attack
    -> IO BcryptDigest
bcryptGenerateWith rng pass security = do
    r <- rngCtxInitIO rng
    rngCtxReseedIO r 32
    bcryptGenerateIO pass r (bcryptFactor security)

-- |Check a previously created digest
--
--  Returns True iff this password / digest combination is valid,
--  False if the combination is not valid (but otherwise well formed),
--  and otherwise throws an exception on error
bcryptValidate
    :: Password     -- ^ The password to check against
    -> BcryptDigest -- ^ The stored hash to check against
    -> Bool
bcryptValidate = unsafePerformIO2 bcryptIsValidIO
{-# NOINLINE bcryptValidate #-}
