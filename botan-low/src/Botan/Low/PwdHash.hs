{-|
Module      : Botan.Low.PwdHash
Description : Password hashing
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

This module is based on the [Password Based Key
Deriviation](https://botan.randombit.net/handbook/api_ref/pbkdf.html) section of
the C++ Botan documentation.
-}

module Botan.Low.PwdHash (
    -- * Available schemes
    -- $schemes
    PBKDFName
  , pattern PBKDF2
  , pbkdf2
  , pattern Scrypt
  , pattern Argon2d
  , pattern Argon2i
  , pattern Argon2id
  , pattern Bcrypt_PBKDF
  , pattern OpenPGP_S2K
  , openPGP_S2K
  -- * Password hashing
  , pwdhash
  , pwdhashTimed
  ) where

import           Botan.Bindings.PwdHash

import           Botan.Low.Error
import           Botan.Low.Hash
import           Botan.Low.Prelude

{-------------------------------------------------------------------------------
  Available schemes
-------------------------------------------------------------------------------}

-- $schemes
--
-- There are a number of schemes available to be used as the PBKDF algorithm for
-- 'pwdhash' and 'pwdhashTimed', which are listed in the [Available
-- Schemes](https://botan.randombit.net/handbook/api_ref/pbkdf.html#available-schemes)
-- section of the C++ Botan documentation. A pattern synonym for the name of
-- each of the available schemes is included in these Haskell bindings.

-- | The name of a key derivation scheme used as a PBKDF algorithm
type PBKDFName = ByteString

pattern PBKDF2
      , Scrypt
      , Argon2d
      , Argon2i
      , Argon2id
      , Bcrypt_PBKDF
      , OpenPGP_S2K
      :: PBKDFName

-- | Name of the @PBKDF2@ scheme
--
-- NOTE: @PBKDF2@ is not a valid scheme name to pass to 'pwdhash' or
-- 'pwdhashTimed' directly. Instead, the scheme name should be parameterised by
-- a hash function using 'pbkdf2'. For more information see the [Available
-- Schemes](https://botan.randombit.net/handbook/api_ref/pbkdf.html#available-schemes)
-- section of the C++ Botan documentation
pattern PBKDF2 = BOTAN_PBKDF_PBKDF2

-- | Create a valid scheme name for @PBKDF2@ parameterised over a hash function
-- name.
--
-- NOTE: "PBKDF(HMAC(SHA-256))" is equivalent to "PBKDF(SHA-256)". 'pbkdf2'
-- always outputs the latter given a hash function name.
pbkdf2 :: HashName -> PBKDFName
pbkdf2 m = PBKDF2 /$ m

-- | Name of the @Scrypt@ scheme
--
pattern Scrypt = BOTAN_PBKDF_SCRYPT

-- | Name of the @Argon2d@ scheme
pattern Argon2d = BOTAN_PBKDF_ARGON2D

-- | Name of the @Argon2i@ scheme
pattern Argon2i = BOTAN_PBKDF_ARGON2I

-- | Name of the @Argon2d@ scheme
pattern Argon2id = BOTAN_PBKDF_ARGON2ID

-- | Name of the @Bcrypt-PBKDF@ scheme
pattern Bcrypt_PBKDF = BOTAN_PBKDF_BCRYPT_PBKDF

-- | Name of the @OpenPGP-S2K@ scheme
--
-- NOTE: @OpenPGP-S2K@ is not a valid scheme name to pass to 'pwdhash' or
-- 'pwdhashTimed' directly. Instead, the scheme name should be parameterised by
-- a hash function using 'openPGP_S2K'. For more information see the [Available
-- Schemes](https://botan.randombit.net/handbook/api_ref/pbkdf.html#available-schemes)
-- section of the C++ Botan documentation
pattern OpenPGP_S2K = BOTAN_PBKDF_OPENPGP_S2K


-- | Create a valid scheme name for @openPGP-S2K@ parameterised over a hash
-- function name.
openPGP_S2K:: HashName -> PBKDFName
openPGP_S2K h = OpenPGP_S2K /$ h

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
pwdhash ::
     PBKDFName     -- ^ __algo__: PBKDF algorithm, e.g., "Scrypt" or "PBKDF2(SHA-256)"
  -> Int           -- ^ __param1__: the first PBKDF algorithm parameter
  -> Int           -- ^ __param2__: the second PBKDF algorithm parameter (may be zero if unneeded)
  -> Int           -- ^ __param3__: the third PBKDF algorithm parameter (may be zero if unneeded)
  -> Int           -- ^ __out_len__: the desired length of the key to produce
  -> ByteString    -- ^ __passphrase__: the password to derive the key from
  -> ByteString    -- ^ __salt[]__: a randomly chosen salt
  -> IO ByteString -- ^ __out[]__: buffer to store the derived key, must be of out_len bytes
pwdhash algo p1 p2 p3 outLen passphrase salt =
    allocBytes outLen $ \ outPtr ->
    asCString algo $ \ algoPtr ->
    asCStringLen passphrase $ \ passphrasePtr passphraseLen ->
    asBytesLen salt $ \ saltPtr saltLen ->
      throwBotanIfNegative_ $ botan_pwdhash
        (ConstPtr algoPtr)
        (fromIntegral p1)
        (fromIntegral p2)
        (fromIntegral p3)
        outPtr
        (fromIntegral outLen)
        (ConstPtr passphrasePtr)
        passphraseLen
        (ConstPtr saltPtr)
        saltLen

-- | Derive a cryptographic key from a passphrase using algorithm-specific
-- parameters that are tuned automatically for a desired running time of the
-- algorithm.
--
-- NOTE: for the @Argon2@ and @Scrypt@ PBKDF algorithms, 'pwdhashTimed' returns
-- parameters in a different order than the order in which they should be passed
-- to 'pwdhash'. This is a known issue with the Botan C++ library. See
-- <https://github.com/randombit/botan/issues/2144> for more information.
--
-- 'pwdhashTimed' always returns parameters in this order:
--
-- > (iterations, parallelism, memoryParam)
--
-- 'pwdhash' shoulds be given parameters in this order for the
-- @Argon2@ and @Scrypt@ algorithms:
--
-- > param1 = memoryParam
-- > param2 = iterations
-- > param3 = parallelism
--
pwdhashTimed ::
     -- | __algo__: PBKDF algorithm, e.g., "Scrypt" or "PBKDF2(SHA-256)"
    PBKDFName
     -- | __msec__: the desired runtime in milliseconds
  -> Int
     -- | __out_len__: the desired length of the key to produce
  -> Int
     -- | __passphrase__: the password to derive the key from
  -> ByteString
     -- | __salt[]__: a randomly chosen salt
  -> ByteString
     -- | A tuple of four elements (in order):
     --
     -- * __param1__: the first PBKDF algorithm parameter
     -- * __param2__: the second PBKDF algorithm parameter (may be zero if unneeded)
     -- * __param3__: the third PBKDF algorithm parameter (may be zero if unneeded)
     -- * __out[]__: buffer to store the derived key, must be of out_len bytes
  -> IO (Int, Int, Int, ByteString)
pwdhashTimed algo msec outLen passphrase salt =
    alloca $ \ p1Ptr ->
    alloca $ \ p2Ptr ->
    alloca $ \ p3Ptr -> do
      out <- allocBytes outLen $ \ outPtr ->
        asCString algo $ \ algoPtr ->
        asCStringLen passphrase $ \ passphrasePtr passphraseLen ->
        asBytesLen salt $ \ saltPtr saltLen -> do
          throwBotanIfNegative_ $ botan_pwdhash_timed
            (ConstPtr algoPtr)
            (fromIntegral msec)
            p1Ptr
            p2Ptr
            p3Ptr
            outPtr
            (fromIntegral outLen)
            (ConstPtr passphrasePtr)
            passphraseLen
            (ConstPtr saltPtr)
            saltLen
      p1 <- fromIntegral <$> peek p1Ptr
      p2 <- fromIntegral <$> peek p2Ptr
      p3 <- fromIntegral <$> peek p3Ptr
      return (p1, p2, p3, out)
