{-|
Module      : Botan.Low.X25519
Description : Algorithm specific key operations: X25519
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.X25519 where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey

import Botan.Bindings.PubKey.X25519

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey
import Botan.Low.Remake

-- /*
-- * Algorithm specific key operations: X25519
-- */

-- NOTE: X25519 is Curve25519:
--  lib/pubkey/curve25519/curve25519.h:
--      typedef Curve25519_PublicKey X25519_PublicKey;
--      typedef Curve25519_PrivateKey X25519_PrivateKey;

-- NOTE: Input must be exactly 32 bytes long
privKeyLoadX25519
    :: ByteString   -- ^ __privkey[32]__
    -> IO PrivKey   -- ^ __key__
privKeyLoadX25519 = mkCreateObjectCBytes createPrivKey botan_privkey_load_x25519

-- NOTE: Input must be exactly 32 bytes long
pubKeyLoadX25519
    :: ByteString   -- ^ __pubkey[32]__
    -> IO PubKey    -- ^ __key__
pubKeyLoadX25519 = mkCreateObjectCBytes createPubKey botan_pubkey_load_x25519

privKeyX25519GetPrivKey
    :: PrivKey          -- ^ __key__
    -> IO ByteString    -- ^ __output[32]__
privKeyX25519GetPrivKey sk = withPrivKey sk $ \ skPtr -> do
    allocBytes 32 $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_privkey_x25519_get_privkey skPtr outPtr

pubKeyX25519GetPubKey
    :: PubKey           -- ^ __key__
    -> IO ByteString    -- ^ __pubkey[32]__
pubKeyX25519GetPubKey pk = withPubKey pk $ \ pkPtr -> do
    allocBytes 32 $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_pubkey_x25519_get_pubkey pkPtr outPtr
