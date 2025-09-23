{-|
Module      : Botan.PubKey.Verify
Description : Signature Verification
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.PubKey.Verify (

  -- * Thing
  -- $introduction

  -- * Usage
  -- $usage

  -- * Public Key Signature Verification

  -- TODO: Rename pkVerifySignature?
    pkVerify

  -- ** Data type
  , PKVerify

  -- ** Destructor
  , destroyPKVerify

  -- ** Initializers
  , newPKVerify

  -- ** Algorithm
  , pkVerifyUpdate
  , pkVerifyFinish

  ) where

import qualified Botan.Low.PubKey.Verify as Low

import           Botan.Prelude
import           Botan.PubKey
import           Botan.PubKey.Sign

{- $introduction

-}

{- $usage

-}

--
-- Public Key Signatures
--

pkVerify :: PubKey -> PKSignAlgo -> PKSignatureFormat -> ByteString -> PKSignature -> Bool
pkVerify pk algo fmt msg sig = unsafePerformIO $ do
    verifier <- newPKVerify pk algo fmt
    pkVerifyUpdate verifier msg
    pkVerifyFinish verifier sig
{-# NOINLINE pkVerify #-}

-- Data type
type PKVerify = Low.Verify

-- ** Destructor
destroyPKVerify :: (MonadIO m) => PKVerify -> m ()
destroyPKVerify = liftIO . Low.verifyDestroy

-- ** Initializers

newPKVerify :: (MonadIO m) => PubKey -> PKSignAlgo -> PKSignatureFormat -> m PKVerify
newPKVerify pk algo fmt = liftIO $ Low.verifyCreate pk (signAlgoName algo) fmt

-- ** Mutable Algorithm

pkVerifyUpdate :: (MonadIO m) => PKVerify -> ByteString -> m ()
pkVerifyUpdate verifier msg = liftIO $ Low.verifyUpdate verifier msg

pkVerifyFinish :: (MonadIO m) => PKVerify -> PKSignature -> m Bool
pkVerifyFinish verifier sig = liftIO $ Low.verifyFinish verifier sig
