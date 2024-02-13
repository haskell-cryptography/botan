{-|
Module      : Botan.Low.Ed25519
Description : Algorithm specific key operations: Ed25519
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.Ed25519 where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.Ed25519

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.PubKey
import Botan.Low.Remake

-- /*
-- * Algorithm specific key operations: Ed25519
-- */

-- NOTE: Input must be exactly 32 bytes long
privKeyLoadEd25519
    :: ByteString       -- ^ @privkey[32]@
    -> IO PrivKey       -- ^ @key@
privKeyLoadEd25519 = mkCreateObjectCBytes createPrivKey botan_privkey_load_ed25519

-- NOTE: Input must be exactly 32 bytes long
pubKeyLoadEd25519
    :: ByteString       -- ^ @pubkey[32]@
    -> IO PubKey        -- ^ @key@
pubKeyLoadEd25519 = mkCreateObjectCBytes createPubKey botan_pubkey_load_ed25519

privKeyEd25519GetPrivKey
    :: PrivKey          -- ^ @output[64]@
    -> IO ByteString    -- ^ @key@
privKeyEd25519GetPrivKey sk = withPrivKey sk $ \ skPtr -> do
    allocBytes 64 $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_privkey_ed25519_get_privkey skPtr outPtr

pubKeyEd25519GetPubKey
    :: PubKey           -- ^ @pubkey[32]@
    -> IO ByteString    -- ^ @key@
pubKeyEd25519GetPubKey pk = withPubKey pk $ \ pkPtr -> do
    allocBytes 32 $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_pubkey_ed25519_get_pubkey pkPtr outPtr
