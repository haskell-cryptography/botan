{-|
Module      : Botan.Bindings.PwdHash
Description : Password hashing
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

Derive a key from a passphrase
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PwdHash where

import Botan.Bindings.Prelude

-- | Derive a key from a passphrase using algorithm-specific parameters
foreign import capi safe "botan/ffi.h botan_pwdhash"
    botan_pwdhash
      :: ConstPtr CChar  -- ^ algo PBKDF algorithm, e.g., "PBKDF2(SHA-256)" or "Scrypt"
      -> CSize           -- ^ param1 the first PBKDF algorithm parameter
      -> CSize           -- ^ param2 the second PBKDF algorithm parameter (may be zero if unneeded)
      -> CSize           -- ^ param3 the third PBKDF algorithm parameter (may be zero if unneeded)
      -> Ptr Word8       -- ^ out[] buffer to store the derived key, must be of out_len bytes
      -> CSize           -- ^ out_len the desired length of the key to produce
      -> ConstPtr CChar  -- ^ passphrase the password to derive the key from
      -> CSize           -- ^ passphrase_len if > 0, specifies length of password. If len == 0, then
                        --   strlen will be called on passphrase to compute the length.
      -> ConstPtr Word8  -- ^ salt[] a randomly chosen salt
      -> CSize           -- ^ salt_len length of salt in bytes
      -> IO CInt         -- ^ 0 on success, a negative value on failure


-- | Derive a key from a passphrase using parameters generated over a specific duration
foreign import capi safe "botan/ffi.h botan_pwdhash_timed"
    botan_pwdhash_timed
      :: ConstPtr CChar  -- ^ algo PBKDF algorithm, e.g., "Scrypt" or "PBKDF2(SHA-256)"
      -> Word32          -- ^ msec the desired runtime in milliseconds
      -> Ptr CSize       -- ^ param1 will be set to the first password hash parameter
      -> Ptr CSize       -- ^ param2 will be set to the second password hash parameter
      -> Ptr CSize       -- ^ param3 will be set to the third password hash parameter
      -> Ptr Word8       -- ^ out[] buffer to store the derived key, must be of out_len bytes
      -> CSize           -- ^ out_len the desired length of the key to produce
      -> ConstPtr CChar  -- ^ passphrase the password to derive the key from
      -> CSize           -- ^ passphrase_len if > 0, specifies length of password. If len == 0, then
                         --   strlen will be called on passphrase to compute the length.
      -> ConstPtr Word8  -- ^ salt[] a randomly chosen salt
      -> CSize           -- ^ salt_len length of salt in bytes
      -> IO CInt         -- ^ 0 on success, a negative value on failure
