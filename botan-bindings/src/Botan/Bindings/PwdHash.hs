{-|
Module      : Botan.Bindings.PwdHash
Description : Password hashing
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

This module is based on the [Password Based Key
Deriviation](https://botan.randombit.net/handbook/api_ref/pbkdf.html) section of
the C++ API reference.
-}

{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE OverloadedStrings #-}

module Botan.Bindings.PwdHash (
    botan_pwdhash
  , botan_pwdhash_timed
    -- * Available schemes
    -- $available-schemes
  , pattern BOTAN_PBKDF_PBKDF2
  , pattern BOTAN_PBKDF_SCRYPT
  , pattern BOTAN_PBKDF_ARGON2D
  , pattern BOTAN_PBKDF_ARGON2I
  , pattern BOTAN_PBKDF_ARGON2ID
  , pattern BOTAN_PBKDF_BCRYPT_PBKDF
  , pattern BOTAN_PBKDF_OPENPGP_S2K
  ) where

import           Botan.Bindings.ConstPtr
import           Data.String
import           Data.Word
import           Foreign.C.Types
import           Foreign.Ptr

{-------------------------------------------------------------------------------
  Password hashing
-------------------------------------------------------------------------------}

-- | Derive a cryptographic key from a passphrase using algorithm-specific parameters
--
-- NOTE: the interpretation of parameters @param1@, @param2@, and @param3@ are
-- different depending on the PBKDF algorithm that is picked. See the
-- documentation of the
-- [@from_params@](https://botan.randombit.net/handbook/api_ref/pbkdf.html#passwordhash)
-- C++ function for more information about the meaning of the parameters.
--
foreign import capi safe "botan/ffi.h botan_pwdhash"
  botan_pwdhash
    :: ConstPtr CChar  -- ^ __algo__: PBKDF algorithm, e.g., "PBKDF2(SHA-256)" or "Scrypt"
    -> CSize           -- ^ __param1__: the first PBKDF algorithm parameter
    -> CSize           -- ^ __param2__: the second PBKDF algorithm parameter (may be zero if unneeded)
    -> CSize           -- ^ __param3__: the third PBKDF algorithm parameter (may be zero if unneeded)
    -> Ptr Word8       -- ^ __out[]__: buffer to store the derived key, must be of out_len bytes
    -> CSize           -- ^ __out_len__: the desired length of the key to produce
    -> ConstPtr CChar  -- ^ __passphrase__: the password to derive the key from
    -> CSize           -- ^ __passphrase_len__: if > 0, specifies length of password. If len == 0, then
                       -- strlen will be called on passphrase to compute the length.
    -> ConstPtr Word8  -- ^ __salt[]__: a randomly chosen salt
    -> CSize           -- ^ __salt_len__: length of salt in bytes
    -> IO CInt         -- ^ 0 on success, a negative value on failure

-- | Derive a cryptographic key from a passphrase using algorithm-specific
-- parameters that are tuned automatically for a desired running time of the
-- algorithm.
--
-- NOTE: for the @Argon2@ and @Scrypt@ PBKDF algorithms, 'botan_pwdhash_timed'
-- returns parameters in a different order than the order in which they should
-- be passed to 'botan_pwdhash'. This is a known issue with the Botan C++
-- library. See <https://github.com/randombit/botan/issues/2144> for more
-- information.
--
-- 'botan_pwdhash_timed' always returns parameters in this order:
--
-- > (iterations, parallelism, memoryParam)
--
-- 'botan_pwdhash' shoulds be given parameters in this order for the
-- @Argon2@ and @Scrypt@ algorithms:
--
-- > param1 = memoryParam
-- > param2 = iterations
-- > param3 = parallelism
--
foreign import capi safe "botan/ffi.h botan_pwdhash_timed"
  botan_pwdhash_timed
    :: ConstPtr CChar  -- ^ __algo__: PBKDF algorithm, e.g., "Scrypt" or "PBKDF2(SHA-256)"
    -> Word32          -- ^ __msec__: the desired runtime in milliseconds
    -> Ptr CSize       -- ^ __param1__: will be set to the first PBKDF algorithm parameter
    -> Ptr CSize       -- ^ __param2__: will be set to the second PBKDF algorithm parameter (may be zero if unneeded)
    -> Ptr CSize       -- ^ __param3__: will be set to the third PBKDF algorithm parameter (may be zero if unneeded)
    -> Ptr Word8       -- ^ __out[]__: buffer to store the derived key, must be of out_len bytes
    -> CSize           -- ^ __out_len__: the desired length of the key to produce
    -> ConstPtr CChar  -- ^ __passphrase__: the password to derive the key from
    -> CSize           -- ^ __passphrase_len__: if > 0, specifies length of password. If len == 0, then
                       --   strlen will be called on passphrase to compute the length.
    -> ConstPtr Word8  -- ^ __salt[]__: a randomly chosen salt
    -> CSize           -- ^ __salt_len__: length of salt in bytes
    -> IO CInt         -- ^ 0 on success, a negative value on failure

{-------------------------------------------------------------------------------
  Available schemes
-------------------------------------------------------------------------------}

{- $available-schemes

A number of algorithms are available to be used as password derivation schemes.
An algorithm is selected by passing the /algorithm specification name/ of the
algorithm as a string to the password hashing functions. In some cases an
algorithm specification name is just the /algorithm name/, like @"Scrypt"@. In
other cases an algorithm specification name is a combination of an algorithm
name paired with some parameters, such as @"PKBDF2(SHA-256)"@ where @"PBKDF2"@
is the algorithm name followed by a single parameter. Pattern synonyms are
included for each available /algorithm name/. Where necessary, such as in the
@"PBKDF2"@ case, these algorithm names should be manually extended to full
algorithm specification names.

See the [Available
Schemes](https://botan.randombit.net/handbook/api_ref/pbkdf.html#available-schemes)
section of the C++ API reference for more information about available schemes.
-}

pattern BOTAN_PBKDF_PBKDF2
      , BOTAN_PBKDF_SCRYPT
      , BOTAN_PBKDF_ARGON2D
      , BOTAN_PBKDF_ARGON2I
      , BOTAN_PBKDF_ARGON2ID
      , BOTAN_PBKDF_BCRYPT_PBKDF
      , BOTAN_PBKDF_OPENPGP_S2K
      :: (Eq a, IsString a) => a

-- |
-- >>> BOTAN_PBKDF_PBKDF2 @String
-- "PBKDF2"
pattern BOTAN_PBKDF_PBKDF2 = "PBKDF2"

-- |
-- >>> BOTAN_PBKDF_SCRYPT @String
-- "Scrypt"
pattern BOTAN_PBKDF_SCRYPT = "Scrypt"

-- |
-- >>> BOTAN_PBKDF_ARGON2D @String
-- "Argon2d"
pattern BOTAN_PBKDF_ARGON2D = "Argon2d"

-- |
-- >>> BOTAN_PBKDF_ARGON2I @String
-- "Argon2i"
pattern BOTAN_PBKDF_ARGON2I = "Argon2i"

-- |
-- >>> BOTAN_PBKDF_ARGON2ID @String
-- "Argon2id"
pattern BOTAN_PBKDF_ARGON2ID = "Argon2id"

-- |
-- >>> BOTAN_PBKDF_BCRYPT_PBKDF @String
-- "Bcrypt-PBKDF"
pattern BOTAN_PBKDF_BCRYPT_PBKDF = "Bcrypt-PBKDF"

-- |
-- >>> BOTAN_PBKDF_OPENPGP_S2K @String
-- "OpenPGP-S2K"
pattern BOTAN_PBKDF_OPENPGP_S2K = "OpenPGP-S2K"
