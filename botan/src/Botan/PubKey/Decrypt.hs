{-|
Module      : Botan.Decrypt
Description : Public Key Decryption
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.Decrypt
(

-- * Thing
-- $introduction

-- * Usage
-- $usage

-- * Public Key Decryption

-- ** Data type
, PKDecrypt(..)

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

import Botan.Bindings.PubKey.Decrypt

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

pkDecrypt :: (MonadRandomIO m) => PKDecrypt -> ByteString -> IO ByteString
pkDecrypt = undefined
