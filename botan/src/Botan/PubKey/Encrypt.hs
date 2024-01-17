{-|
Module      : Botan.Encrypt
Description : Public Key Encryption
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.PubKey.Encrypt
(

-- * Thing
-- $introduction

-- * Usage
-- $usage

-- * Public Key Encryption

-- ** Data type
  PKEncrypt(..)

-- ** Destructor
, destroyPKEncrypt

-- ** Initializers
, newPKEncrypt

-- ** Accessors
, pkEncryptOutputLength

-- ** Algorithm
, pkEncrypt

) where

import qualified Data.ByteString as ByteString

import qualified Botan.Low.PubKey.Encrypt as Low

import Botan.Error
import Botan.Prelude
import Botan.PubKey
import Botan.RNG

{- $introduction

-}

{- $usage

-}

--
-- Public Key Encryption
--

-- Data type

data PKEncrypt

-- Destructor

destroyPKEncrypt :: (MonadIO m) => PKEncrypt -> m ()
destroyPKEncrypt = undefined

-- Initializers

newPKEncrypt :: (MonadIO m) => PubKey -> PKPadding -> m PKEncrypt
newPKEncrypt = undefined

-- Accessors

pkEncryptOutputLength :: PKEncrypt -> Int -> Int
pkEncryptOutputLength = undefined

-- Algorithm

pkEncrypt :: (MonadRandomIO m) => PKEncrypt -> ByteString -> m ByteString
pkEncrypt = undefined
