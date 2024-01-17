{-|
Module      : Botan.Decrypt
Description : Public Key Decryption
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.PubKey.Decrypt
(

-- * Thing
-- $introduction

-- * Usage
-- $usage

-- * Public Key Decryption

-- ** Data type
  PKDecrypt(..)

-- ** Destructor
, destroyPKDecrypt

-- ** Initializers
, newPKDecrypt

-- ** Accessors
, pkDecryptOutputLength

-- ** Algorithm
, pkDecrypt

) where

import qualified Data.ByteString as ByteString

import qualified Botan.Low.PubKey.Decrypt as Low

import Botan.Error
import Botan.Prelude
import Botan.PubKey
import Botan.RNG


{- $introduction

-}

{- $usage

-}

--
-- Public Key Decryption
--

-- Data type

data PKDecrypt

-- Destructor

destroyPKDecrypt :: (MonadIO m) => PKDecrypt -> m ()
destroyPKDecrypt = undefined

-- Initializers

newPKDecrypt :: (MonadIO m) => PubKey -> PKPadding -> m PKDecrypt
newPKDecrypt = undefined

-- Accessors

pkDecryptOutputLength :: PKDecrypt -> Int -> Int
pkDecryptOutputLength = undefined

-- Algorithm

-- TODO: Probably doesn't require MonadRandomIO
pkDecrypt :: (MonadRandomIO m) => PKDecrypt -> ByteString -> m ByteString
pkDecrypt = undefined
