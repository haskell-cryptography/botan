{-|
Module      : Botan.Decrypt
Description : Public Key Decryption
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.PubKey.Decrypt (

  -- * Thing
  -- $introduction

  -- * Usage
  -- $usage

  -- * Public Key Decryption

    pkDecrypt
  , pkDecryptOutputLength

  -- * Mutable interface

  -- ** Data type
  , PKDecrypt

  -- ** Destructor
  , destroyPKDecrypt

  -- ** Initializers
  , newPKDecrypt

  -- ** Accessors
  , getPKDecryptOutputLength

  -- ** Algorithm
  , pkDecryptWith

  ) where

import qualified Botan.Low.PubKey.Decrypt as Low

import           Botan.Prelude
import           Botan.PubKey


{- $introduction

-}

{- $usage

-}

--
-- Public Key Decryption
--

pkDecrypt :: PrivKey -> PKPadding -> ByteString -> Maybe ByteString
pkDecrypt pk padding ciphertext = unsafePerformIO $ do
    ctx <- newPKDecrypt pk padding
    -- TODO: Return nothing on catch error
    pt <- pkDecryptWith ctx ciphertext
    return $ Just pt
{-# NOINLINE pkDecrypt #-}

pkDecryptOutputLength :: PrivKey -> PKPadding -> Int -> Int
pkDecryptOutputLength pk padding i = unsafePerformIO $ do
    ctx <- newPKDecrypt pk padding
    getPKDecryptOutputLength ctx i
{-# NOINLINE pkDecryptOutputLength #-}

-- Data type

-- TODO: Maybe rename MutablePKDecrypt or PKDecryptor
type PKDecrypt = Low.Decrypt

-- Destructor

destroyPKDecrypt :: (MonadIO m) => PKDecrypt -> m ()
destroyPKDecrypt = liftIO . Low.decryptDestroy

-- Initializers

newPKDecrypt :: (MonadIO m) => PrivKey -> PKPadding -> m PKDecrypt
newPKDecrypt pk padding = liftIO $ Low.decryptCreate pk (pkPaddingName padding)

-- Accessors

-- TODO: Verify
getPKDecryptOutputLength :: (MonadIO m) => PKDecrypt -> Int -> m Int
getPKDecryptOutputLength pkd i = liftIO $ Low.decryptOutputLength pkd i

-- Algorithm

pkDecryptWith :: (MonadIO m) => PKDecrypt -> ByteString -> m ByteString
pkDecryptWith pkd bs = liftIO $ Low.decrypt pkd bs
