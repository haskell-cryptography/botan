{-|
Module      : Botan.PubKey.Verify
Description : Signature Verification
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.PubKey.Verify
(

-- * Thing
-- $introduction

-- * Usage
-- $usage

-- * Public Key Signature Verification

-- ** Data type
  PKVerify(..)

-- ** Destructor
, destroyPKVerify

-- ** Initializers
, newPKVerify

-- ** Algorithm
, pkVerifyUpdate
, pkVerifyFinish

) where

import qualified Data.ByteString as ByteString

import Data.Bool

import qualified Botan.Low.PubKey.Sign as Low

import Botan.Error
import Botan.Hash
import Botan.Prelude
import Botan.PubKey
import Botan.RNG

{- $introduction

-}

{- $usage

-}

--
-- Public Key Signatures
--

-- Data type
data PKVerify

-- ** Destructor
destroyPKVerify :: (MonadIO m) => PKVerify -> m ()
destroyPKVerify = undefined

-- ** Initializers

data PKVerifyAlgo
data PKVerifyatureFormat
data PKVerifyature

newPKVerify :: (MonadIO m) => PubKey -> PKSignAlgo -> PKSignatureFormat -> m PKVerify
newPKVerify = undefined

-- Idiomatic algorithm

pkVerify :: PubKey -> PKSignAlgo -> PKSignatureFormat -> ByteString -> PKSignature -> PK
pkVerify = undefined 

-- ** Mutable Algorithm

pkVerifyUpdate :: (MonadIO m) => PKVerify -> ByteString -> m ()
pkVerifyUpdate = undefined

pkVerifyFinish :: (MonadIO m) => PKVerify -> PKSignature -> m Bool
pkVerifyFinish = undefined


