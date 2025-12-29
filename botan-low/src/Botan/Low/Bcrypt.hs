{-|
Module      : Botan.Low.Bcrypt
Description : Bcrypt password hashing
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

Generate and validate Bcrypt password hashes
-}

module Botan.Low.Bcrypt (

  -- * Bcrypt
  -- $introduction

  -- * Usage
  -- $usage

  -- * Generate a bcrypt digest
    bcryptGenerate

  -- * Validate a bcrypt digest
  , bcryptIsValid

  -- * Work factor
  , BcryptWorkFactor
  , pattern BcryptFast
  , pattern BcryptGood
  , pattern BcryptStrong
  , BcryptPassword
  , BcryptDigest

  ) where

import           Botan.Bindings.Bcrypt
import           Botan.Bindings.ConstPtr (ConstPtr (..))
import           Botan.Low.Error.Internal
import           Botan.Low.Internal.ByteString
import           Botan.Low.RNG
import           Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import           Foreign.Marshal.Alloc
import           Foreign.Ptr
import           Foreign.Storable

{- $introduction

`bcrypt` is a password-hashing algorithm designed to protect your passwords
against hackers using an expensive key setup phase. Instead of storing a user's
password in plaintext in the database, the server may instead generate a salted
bcrypt digest upon signup, and verify it upon login.

The `bcrypt` implementation provided by `botan` generates a random salt for you
automatically. A work factor of 12 or greater is recommended.

-}

{- $usage

To generate a bcrypt digest:

> import Botan.Low.RNG
> import Botan.Low.Bcrypt
>
> -- The user has sent us a username and password in order to sign up
> onUserSignup :: ByteString -> ByteString -> IO ()
> onUserSignup username password = do
>     rng <- rngInit "user"
>     digest <- bcryptGenerate password rng 12
>     createAndStoreNewUser username digest

To validate a bcrypt digest:

> import Botan.Low.RNG
> import Botan.Low.Bcrypt
>
> -- The user has sent us a username and password in order to log in
> onUserLogin :: ByteString -> ByteString -> IO Bool
> onUserLogin username password = do
>     rng <- rngInit "user"
>     digestMaybe <- getStoredUserDigest username
>     case digestMaybe of
>         Nothing     -> return False
>         Just digest -> bcryptIsValid password digest

-}

-- | A work factor to slow down guessing attacks.
type BcryptWorkFactor = Int

pattern BcryptFast
    ,   BcryptGood
    ,   BcryptStrong
    ::  BcryptWorkFactor

-- | Should not cause noticable CPU usage
pattern BcryptFast    = BOTAN_BCRYPT_WORK_FACTOR_FAST

-- | May cause noticable CPU usage
pattern BcryptGood    = BOTAN_BCRYPT_WORK_FACTOR_GOOD

-- | May block for several seconds
pattern BcryptStrong  = BOTAN_BCRYPT_WORK_FACTOR_STRONG

-- | A bcrypt password.
type BcryptPassword = ByteString

-- | A bcrypt-hashed password digest.
type BcryptDigest = ByteString

{- |
Create a password hash using Bcrypt

> rng <- rngInit "user"
> digest <- bcryptGenerate password rng 12

Output is formatted bcrypt $2a$...
-}
bcryptGenerate
    :: BcryptPassword   -- ^ __password__: The password
    -> RNG              -- ^ __rng__: A random number generator
    -> BcryptWorkFactor -- ^ __work_factor__: How much work to do to slow down guessing attacks. A value of 12 to 16 is probably fine.
    -> IO BcryptDigest
bcryptGenerate password rng factor = asCString password $ \ passwordPtr -> do
   withRNG rng $ \ botanRNG -> do
        alloca $ \ szPtr -> do
            -- NOTE: bcrypt max pass size should be < 72 in general, we'll
            -- do 80 for safety
            poke szPtr 80
            allocaBytes 80 $ \ outPtr -> do
                throwBotanIfNegative_ $ botan_bcrypt_generate
                    outPtr
                    szPtr
                    (ConstPtr passwordPtr)
                    botanRNG
                    (fromIntegral factor)
                    0   -- "@param flags should be 0 in current API revision, all other uses are reserved"
                ByteString.packCString (castPtr outPtr)

{- |
Check a previously created password hash

> valid <- bcryptIsValid password digest
> if valid ...

Returns True iff this password/hash combination is valid,
False if the combination is not valid (but otherwise well formed),
and otherwise throws an exception on error.
-}
bcryptIsValid
    :: BcryptPassword   -- ^ __password__: The password to check against
    -> BcryptDigest     -- ^ __hash__: The stored hash to check against
    -> IO Bool
bcryptIsValid password hash = asCString password $ \ passwordPtr -> do
    asCString hash $ \ hashPtr -> do
        throwBotanCatchingSuccess $ botan_bcrypt_is_valid (ConstPtr passwordPtr) (ConstPtr hashPtr)
