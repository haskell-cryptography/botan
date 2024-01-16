{-|
Module      : Botan.Encrypt
Description : Public Key Encryption
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.Encrypt
(

-- * Thing
-- $introduction

-- * Usage
-- $usage

-- * Public Key Encryption

-- ** Data type
, PKEncrypt(..)

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

import Botan.Bindings.PubKey.Encrypt

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.RNG
import Botan.Low.PubKey
import Botan.Low.Remake


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

pkEncrypt :: (MonadRandomIO m) => PKEncrypt -> ByteString -> IO ByteString
pkEncrypt = undefined
