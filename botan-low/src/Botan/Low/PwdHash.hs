{-|
Module      : Botan.Low.PwdHash
Description : Password hashing
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

Derive a key from a passphrase
-}

module Botan.Low.PwdHash
(

-- * Password hashing

  PBKDFName
, pwdhash
, pwdhashTimed

-- * Password hashing algorithms

, pattern PBKDF2
, pbkdf2
, pattern Scrypt
, pattern Argon2d
, pattern Argon2i
, pattern Argon2id
, pattern Bcrypt_PBKDF
, pattern OpenPGP_S2K
, openPGP_S2K

) where

import           Botan.Bindings.PwdHash

import           Botan.Low.Error
import           Botan.Low.Hash
import           Botan.Low.MAC
import           Botan.Low.Prelude

type PBKDFName = ByteString

pattern PBKDF2
    ,   Scrypt
    ,   Argon2d
    ,   Argon2i
    ,   Argon2id
    ,   Bcrypt_PBKDF
    ,   OpenPGP_S2K
    :: PBKDFName

pattern PBKDF2 = BOTAN_PBKDF_PBKDF2
pattern Scrypt = BOTAN_PBKDF_SCRYPT
pattern Argon2d = BOTAN_PBKDF_ARGON2D
pattern Argon2i = BOTAN_PBKDF_ARGON2I
pattern Argon2id = BOTAN_PBKDF_ARGON2ID
pattern Bcrypt_PBKDF = BOTAN_PBKDF_BCRYPT_PBKDF
pattern OpenPGP_S2K = BOTAN_PBKDF_OPENPGP_S2K

-- NOTE: May require HMAC
pbkdf2 :: MACName -> PBKDFName
pbkdf2 m = PBKDF2 /$ m

openPGP_S2K:: HashName -> PBKDFName
openPGP_S2K h = OpenPGP_S2K /$ h

-- NOTE: Should passphrase be Text or ByteString? Text is implied by use of const char*
--  as well as the non-null context implied by passphrase_len == 0. ByteString for now.

-- | Password hash
--
-- 'pwdhash' and 'pwdhashTimed'\'s parameter order may be inconsistent.  See
-- botan-low\/test\/Botan\/Low\/PwdHashSpec.hs for more information.
pwdhash
    :: PBKDFName        -- ^ __algo__: PBKDF algorithm, e.g., "Scrypt" or "PBKDF2(SHA-256)"
    -> Int              -- ^ __param1__: the first PBKDF algorithm parameter
    -> Int              -- ^ __param2__: the second PBKDF algorithm parameter (may be zero if unneeded)
    -> Int              -- ^ __param3__: the third PBKDF algorithm parameter (may be zero if unneeded)
    -> Int              -- ^ __out_len__: the desired length of the key to produce
    -> ByteString       -- ^ __passphrase__: the password to derive the key from
    -> ByteString       -- ^ __salt[]__: a randomly chosen salt
    -> IO ByteString    -- ^ __out[]__: buffer to store the derived key, must be of out_len bytes
pwdhash algo p1 p2 p3 outLen passphrase salt = allocBytes outLen $ \ outPtr -> do
    asCString algo $ \ algoPtr -> do
        asCStringLen passphrase $ \ passphrasePtr passphraseLen -> do
            asBytesLen salt $ \ saltPtr saltLen -> do
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

-- | Timed password hash
--
-- 'pwdhash' and 'pwdhashTimed'\'s parameter order may be inconsistent. See
-- botan-low\/test\/Botan\/Low\/PwdHashSpec.hs for more information.
pwdhashTimed
    :: PBKDFName                    -- ^ __algo__: PBKDF algorithm, e.g., "Scrypt" or "PBKDF2(SHA-256)"
    -> Int                          -- ^ __msec__: the desired runtime in milliseconds
    -> Int                          -- ^ __out_len__: the desired length of the key to produce
    -> ByteString                   -- ^ __passphrase__: the password to derive the key from
    -> ByteString                   -- ^ __salt[]__: a randomly chosen salt
    -> IO (Int,Int,Int,ByteString)  -- ^ __out[]__: buffer to store the derived key, must be of out_len bytes
pwdhashTimed algo msec outLen passphrase salt = alloca $ \ p1Ptr -> alloca $ \ p2Ptr -> alloca $ \ p3Ptr -> do
    out <- allocBytes outLen $ \ outPtr -> do
        asCString algo $ \ algoPtr -> do
            asCStringLen passphrase $ \ passphrasePtr passphraseLen -> do
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
    return (p1,p2,p3,out)
