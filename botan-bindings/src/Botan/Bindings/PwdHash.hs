{-|
Module      : Botan.Bindings.PwdHash
Description : Password hashing
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

Derive a key from a passphrase
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PwdHash (
    pattern BOTAN_PBKDF_PBKDF2
  , pattern BOTAN_PBKDF_SCRYPT
  , pattern BOTAN_PBKDF_ARGON2D
  , pattern BOTAN_PBKDF_ARGON2I
  , pattern BOTAN_PBKDF_ARGON2ID
  , pattern BOTAN_PBKDF_BCRYPT_PBKDF
  , pattern BOTAN_PBKDF_OPENPGP_S2K
  , botan_pwdhash
  , botan_pwdhash_timed
  ) where

import           Botan.Bindings.Prelude

pattern BOTAN_PBKDF_PBKDF2
    ,   BOTAN_PBKDF_SCRYPT
    ,   BOTAN_PBKDF_ARGON2D
    ,   BOTAN_PBKDF_ARGON2I
    ,   BOTAN_PBKDF_ARGON2ID
    ,   BOTAN_PBKDF_BCRYPT_PBKDF
    ,   BOTAN_PBKDF_OPENPGP_S2K
    ::  (Eq a, IsString a) => a

pattern BOTAN_PBKDF_PBKDF2 = "PBKDF2"
pattern BOTAN_PBKDF_SCRYPT = "Scrypt"
pattern BOTAN_PBKDF_ARGON2D = "Argon2d"
pattern BOTAN_PBKDF_ARGON2I = "Argon2i"
pattern BOTAN_PBKDF_ARGON2ID = "Argon2id"
pattern BOTAN_PBKDF_BCRYPT_PBKDF = "Bcrypt-PBKDF"
pattern BOTAN_PBKDF_OPENPGP_S2K = "OpenPGP-S2K"

-- | Derive a key from a passphrase using algorithm-specific parameters
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
                          --   strlen will be called on passphrase to compute the length.
        -> ConstPtr Word8  -- ^ __salt[]__: a randomly chosen salt
        -> CSize           -- ^ __salt_len__: length of salt in bytes
        -> IO CInt         -- ^ 0 on success, a negative value on failure


-- | Derive a key from a passphrase using parameters generated over a specific duration
foreign import capi safe "botan/ffi.h botan_pwdhash_timed"
    botan_pwdhash_timed
        :: ConstPtr CChar  -- ^ __algo__: PBKDF algorithm, e.g., "Scrypt" or "PBKDF2(SHA-256)"
        -> Word32          -- ^ __msec__: the desired runtime in milliseconds
        -> Ptr CSize       -- ^ __param1__: will be set to the first password hash parameter
        -> Ptr CSize       -- ^ __param2__: will be set to the second password hash parameter
        -> Ptr CSize       -- ^ __param3__: will be set to the third password hash parameter
        -> Ptr Word8       -- ^ __out[]__: buffer to store the derived key, must be of out_len bytes
        -> CSize           -- ^ __out_len__: the desired length of the key to produce
        -> ConstPtr CChar  -- ^ __passphrase__: the password to derive the key from
        -> CSize           -- ^ __passphrase_len__: if > 0, specifies length of password. If len == 0, then
                           --   strlen will be called on passphrase to compute the length.
        -> ConstPtr Word8  -- ^ __salt[]__: a randomly chosen salt
        -> CSize           -- ^ __salt_len__: length of salt in bytes
        -> IO CInt         -- ^ 0 on success, a negative value on failure
