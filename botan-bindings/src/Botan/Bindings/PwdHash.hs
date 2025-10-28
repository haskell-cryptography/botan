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

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PwdHash (
    botan_pwdhash
  , botan_pwdhash_timed
    -- * Available schemes
    -- $schemes
  , pattern BOTAN_PBKDF_PBKDF2
  , pattern BOTAN_PBKDF_SCRYPT
  , pattern BOTAN_PBKDF_ARGON2D
  , pattern BOTAN_PBKDF_ARGON2I
  , pattern BOTAN_PBKDF_ARGON2ID
  , pattern BOTAN_PBKDF_BCRYPT_PBKDF
  , pattern BOTAN_PBKDF_OPENPGP_S2K
  ) where

import           Botan.Bindings.Prelude


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

-- $schemes
--
-- There are a number of schemes available to be used as the PBKDF algorithm for
-- 'botan_pwdhash' and 'botan_pwdhash_timed', which are listed in the [Available
-- Schemes](https://botan.randombit.net/handbook/api_ref/pbkdf.html#available-schemes)
-- section of the C++ API reference. A pattern synonym for the
-- name of each of the available schemes is included in these Haskell bindings.

pattern BOTAN_PBKDF_PBKDF2
      , BOTAN_PBKDF_SCRYPT
      , BOTAN_PBKDF_ARGON2D
      , BOTAN_PBKDF_ARGON2I
      , BOTAN_PBKDF_ARGON2ID
      , BOTAN_PBKDF_BCRYPT_PBKDF
      , BOTAN_PBKDF_OPENPGP_S2K
      :: (Eq a, IsString a) => a

-- | Name of the @PBKDF2@ scheme
--
-- NOTE: @PBKDF2@ is not a valid scheme name to pass to 'botan_pwdhash' or
-- 'botan_pwdhash_timed' directly. Instead, the scheme name should be
-- parameterised by a hash function. For more information see the [Available
-- Schemes](https://botan.randombit.net/handbook/api_ref/pbkdf.html#available-schemes)
-- section of the C++ API reference.
pattern BOTAN_PBKDF_PBKDF2 = "PBKDF2"

-- | Name of the @Scrypt@ scheme
pattern BOTAN_PBKDF_SCRYPT = "Scrypt"

-- | Name of the @Argon2d@ scheme
pattern BOTAN_PBKDF_ARGON2D = "Argon2d"

-- | Name of the @Argon2i@ scheme
pattern BOTAN_PBKDF_ARGON2I = "Argon2i"

-- | Name of the @Argon2d@ scheme
pattern BOTAN_PBKDF_ARGON2ID = "Argon2id"

-- | Name of the @Bcrypt-PBKDF@ scheme
pattern BOTAN_PBKDF_BCRYPT_PBKDF = "Bcrypt-PBKDF"

-- | Name of the @OpenPGP-S2K@ scheme
--
-- NOTE: @OpenPGP-S2K@ is not a valid scheme name to pass to 'botan_pwdhash' or
-- 'botan_pwdhash_timed' directly. Instead, the scheme name should be
-- parameterised by a hash function. For more information see the [Available
-- Schemes](https://botan.randombit.net/handbook/api_ref/pbkdf.html#available-schemes)
-- section of the C++ API reference.
pattern BOTAN_PBKDF_OPENPGP_S2K = "OpenPGP-S2K"
