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

  pkEncrypt
, pkEncryptOutputLength

-- ** Data type
, PKEncrypt(..)

-- ** Destructor
, destroyPKEncrypt

-- ** Initializers
, newPKEncrypt

-- ** Accessors
, getPKEncryptOutputLength

-- ** Algorithm
, pkEncryptWith

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

pkEncrypt :: PubKey -> PKPadding -> ByteString -> Maybe ByteString
pkEncrypt pk padding plaintext = unsafePerformIO $ do
    ctx <- newPKEncrypt pk padding
    -- TODO: Return nothing on catch error
    ciphertext <- pkEncryptWith ctx plaintext
    return $ Just ciphertext
{-# NOINLINE pkEncrypt #-}

pkEncryptOutputLength :: PubKey -> PKPadding -> Int -> Int
pkEncryptOutputLength pk padding i = unsafePerformIO $ do
    ctx <- newPKEncrypt pk padding
    getPKEncryptOutputLength ctx i
{-# NOINLINE pkEncryptOutputLength #-}

-- Data type

-- TODO: Maybe rename MutablePKEncrypt or PKEncryptor
type PKEncrypt = Low.Encrypt

-- Destructor

destroyPKEncrypt :: (MonadIO m) => PKEncrypt -> m ()
destroyPKEncrypt = liftIO . Low.encryptDestroy

-- Initializers

newPKEncrypt :: (MonadIO m) => PubKey -> PKPadding -> m PKEncrypt
newPKEncrypt pk padding = liftIO $ Low.encryptCreate pk (pkPaddingName padding)

-- Accessors

-- TODO: Verify
getPKEncryptOutputLength :: (MonadIO m) => PKEncrypt -> Int -> m Int
getPKEncryptOutputLength pkd i = liftIO $ Low.encryptOutputLength pkd i

-- Algorithm

pkEncryptWith :: (MonadRandomIO m) => PKEncrypt -> ByteString -> m ByteString
pkEncryptWith pkd bs = do
    rng <- getRNG
    liftIO $ Low.encrypt pkd rng bs
