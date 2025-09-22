{-|
Module      : Botan.KeyEncapsulation
Description : Key Encapsulation
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.PubKey.KeyEncapsulation
(

-- * Thing
-- $introduction

-- * Usage
-- $usage

-- * KEM Encryption

  kemEncrypt
, kemDecrypt

-- ** Associated types

, KEMSharedKey(..)
, KEMEncapsulatedKey(..)

-- ** Accessors

, kemSharedKeyLength
, kemEncapsulatedKeyLength

-- ** Data type
,  KEMEncrypt(..)

-- ** Destructor
, destroyKEMEncrypt

-- ** Initializers
, newKEMEncrypt

-- ** Accessors
, kemEncryptSharedKeyLength
, kemEncryptEncapsulatedKeyLength

-- ** Mutable Algorithm
, kemEncryptCreateSharedKey

-- * KEM Decryption

-- ** Data type
, KEMDecrypt(..)

-- ** Destructor
, destroyKEMDecrypt

-- ** Initializers
, newKEMDecrypt

-- ** Accessors
, kemDecryptSharedKeyLength

-- ** Mutable Algorithm
, kemDecryptSharedKey

) where

import qualified Data.ByteString as ByteString

import qualified Botan.Low.PubKey.KeyEncapsulation as Low

import           Botan.Error
import           Botan.KDF
import           Botan.Prelude
import           Botan.PubKey
import           Botan.RNG

{- $introduction

-}

{- $usage

-}

--
-- Idiomatic interface
--

kemEncrypt = undefined

kemDecrypt = undefined

-- Associated types

type KEMSharedKey = Low.KEMSharedKey
type KEMEncapsulatedKey = Low.KEMEncapsulatedKey

-- Accessors

kemSharedKeyLength = undefined

kemEncapsulatedKeyLength = undefined


-- Idiomatic algorithm

--
-- Mutable interface
--

-- KEM Encryption

data KEMEncrypt

-- Destructor

destroyKEMEncrypt :: (MonadIO m) => KEMEncrypt -> m ()
destroyKEMEncrypt = undefined

-- Initializers

newKEMEncrypt :: (MonadIO m) => PubKey -> KDF -> m KEMEncrypt
newKEMEncrypt = undefined

-- Accessors

kemEncryptEncapsulatedKeyLength :: (MonadIO m) => KEMEncrypt -> m Int
kemEncryptEncapsulatedKeyLength = undefined

-- Accessory functions

kemEncryptSharedKeyLength :: (MonadIO m) => KEMEncrypt -> Int -> m Int
kemEncryptSharedKeyLength = undefined

-- Mutable algorithm

kemEncryptCreateSharedKey :: (MonadRandomIO m) => KEMEncrypt -> ByteString -> Int -> m (KEMSharedKey,KEMEncapsulatedKey)
kemEncryptCreateSharedKey = undefined

-- KEM Decryption

data KEMDecrypt

-- Destructor

destroyKEMDecrypt  :: (MonadIO m) => KEMDecrypt -> m ()
destroyKEMDecrypt = undefined

-- Initializers

newKEMDecrypt :: (MonadIO m) => PrivKey -> KDF -> m KEMDecrypt
newKEMDecrypt = undefined

-- Accessory functions

kemDecryptSharedKeyLength :: (MonadIO m) => KEMDecrypt -> Int -> m Int
kemDecryptSharedKeyLength = undefined

-- Mutable algorithm

kemDecryptSharedKey :: (MonadIO m) => KEMDecrypt -> ByteString -> KEMEncapsulatedKey -> Int -> m KEMSharedKey
kemDecryptSharedKey  = undefined
