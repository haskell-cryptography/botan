{-|
Module      : Botan.Low.Ed25519
Description : Algorithm specific key operations: Ed25519
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.Ed25519 (
    privKeyLoadEd25519
  , pubKeyLoadEd25519
  , privKeyEd25519GetPrivKey
  , pubKeyEd25519GetPubKey
  ) where

import           Botan.Bindings.PubKey.Ed25519

import           Botan.Low.Error
import           Botan.Low.Prelude
import           Botan.Low.PubKey
import           Botan.Low.Remake

-- /*
-- * Algorithm specific key operations: Ed25519
-- */

-- NOTE: Input must be exactly 32 bytes long
privKeyLoadEd25519
    :: ByteString       -- ^ __privkey[32]__
    -> IO PrivKey       -- ^ __key__
privKeyLoadEd25519 = mkCreateObjectCBytes createPrivKey botan_privkey_load_ed25519

-- NOTE: Input must be exactly 32 bytes long
pubKeyLoadEd25519
    :: ByteString       -- ^ __pubkey[32]__
    -> IO PubKey        -- ^ __key__
pubKeyLoadEd25519 = mkCreateObjectCBytes createPubKey botan_pubkey_load_ed25519

privKeyEd25519GetPrivKey
    :: PrivKey          -- ^ __output[64]__
    -> IO ByteString    -- ^ __key__
privKeyEd25519GetPrivKey sk = withPrivKey sk $ \ skPtr -> do
    allocBytes 64 $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_privkey_ed25519_get_privkey skPtr outPtr

pubKeyEd25519GetPubKey
    :: PubKey           -- ^ __pubkey[32]__
    -> IO ByteString    -- ^ __key__
pubKeyEd25519GetPubKey pk = withPubKey pk $ \ pkPtr -> do
    allocBytes 32 $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_pubkey_ed25519_get_pubkey pkPtr outPtr
