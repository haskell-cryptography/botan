{-|
Module      : Botan.Bcrypt
Description : Bcrypt password hashing
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

Generate and validate Bcrypt password hashes
-}

module Botan.Bcrypt (

  -- * Bcrypt
  -- $introduction

  -- * Usage
  -- $usage

  -- * Work factors
    WorkFactor(..)
  , workFactor
  , toWorkFactor

  -- * Generating a bcrypt digest
  , Password
  , BcryptDigest
  , bcryptGenerate
  , bcryptGenerateRNG
  , unsafeBcryptGenerateRNG

  -- * Validating a bcrypt digest
  , bcryptValidate
  , unsafeBcryptValidate

  ) where

import qualified Botan.Low.Bcrypt as Low

import           Botan.Prelude
import           Botan.RNG

{- $introduction

Bcrypt is an adaptive password-hashing algorithm designed to protect against brute force and
rainbow table attacks. It contains a work factor that may be increased to increase resistance
as computing power increases.

Bcrypt produces digests suitable for secure storage and validation.

Bcrypt is designed to be an expensive operation, and can block for some time. It also performs
this same operation upon validation.
-}

{- $usage

=== Directly using an `RNG` context

Direct usage is very simple

> main = do
>     rng <- newRNG Autoseeded
>     dg <- bcryptGenerateRNG rng "Fee fi fo fum!" Fast
>     print dg
>     valid <- bcryptValidate "Fee fi fo fum!" dg
>     print valid

=== Implicitly using `MonadRandomIO`

> main = do
>     dg <- bcryptGenerate "Fee fi fo fum!" Fast
>     print dg
>     valid <- bcryptValidate "Fee fi fo fum!" dg
>     print valid

-}

-- | An work factor representing the level of security
data WorkFactor
    = Fast
    | Good
    | Strong
    | WorkFactor Low.BcryptWorkFactor
    deriving stock (Show)

instance Eq WorkFactor where
    a == b = (workFactor a == workFactor b)

instance Ord WorkFactor where
    a <= b = (workFactor a <= workFactor b)

-- | Convert a work factor to an integer
workFactor :: WorkFactor -> Low.BcryptWorkFactor
workFactor Fast            = Low.BcryptFast
workFactor Good            = Low.BcryptGood
workFactor Strong          = Low.BcryptStrong
workFactor (WorkFactor wf) = wf

toWorkFactor :: Low.BcryptWorkFactor -> WorkFactor
toWorkFactor Low.BcryptFast   = Fast
toWorkFactor Low.BcryptGood   = Good
toWorkFactor Low.BcryptStrong = Strong
toWorkFactor wf               = WorkFactor wf

type Password = ByteString -- NOTE: Should actually be Text

{- |
A bcrypt password hash

It should be formatted is formatted bcrypt $2a${wf}$... where wf is some integer work factor.
-}
type BcryptDigest = ByteString

{- |
Generate a `BcryptDigest` password hash using Bcrypt

Output is formatted bcrypt $2a$...
-}
bcryptGenerate
    :: (MonadRandomIO m)
    => Password         -- ^ The password to check against
    -> WorkFactor       -- ^ A work factor to slow down guessing attack
    -> m BcryptDigest
bcryptGenerate pass wf = do
    rng <- getRNG
    bcryptGenerateRNG rng pass wf

{- |
Generate a `BcryptDigest` password hash using Bcrypt

Uses the provided RNG.
-}
bcryptGenerateRNG
    :: (MonadIO m)
    => RNG          -- ^ A random number generator
    -> Password     -- ^ The password to check against
    -> WorkFactor   -- ^ A work factor to slow down guessing attack
    -> m BcryptDigest
bcryptGenerateRNG rng pass wf = liftIO $ Low.bcryptGenerate pass rng (workFactor wf)

{- |
This function is unsafe as it may block for an indeterminate amount of time
-}
unsafeBcryptGenerateRNG
    :: RNG          -- ^ A random number generator
    -> Password     -- ^ The password to check against
    -> WorkFactor   -- ^ A work factor to slow down guessing attack
    -> BcryptDigest
unsafeBcryptGenerateRNG = unsafePerformIO3 bcryptGenerateRNG
{-# NOINLINE unsafeBcryptGenerateRNG #-}

{- |
Check a previously created digest

Returns True iff this password / digest combination is valid,
False if the combination is not valid (but otherwise well formed),
and otherwise throws an exception on error
-}
bcryptValidate
    :: (MonadIO m)
    => Password     -- ^ The password to check against
    -> BcryptDigest -- ^ The stored hash to check against
    -> m Bool
bcryptValidate pass dg = liftIO $ Low.bcryptIsValid pass dg
{-# NOINLINE bcryptValidate #-}

{- |
Check a previously created digest, unsafely.

This function is unsafe as it may block for an indeterminate amount of time
-}
unsafeBcryptValidate
    :: Password     -- ^ The password to check against
    -> BcryptDigest -- ^ The stored hash to check against
    -> Bool
unsafeBcryptValidate = unsafePerformIO2 Low.bcryptIsValid
{-# NOINLINE unsafeBcryptValidate #-}

-- TODO: bcryptDigestWorkFactor :: BcryptDigest -> Int
-- TODO: bcryptDigestWorkFactor :: BcryptDigest -> WorkFactor
