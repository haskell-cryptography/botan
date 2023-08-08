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

-- /*
-- * Algorithm specific key operations: X25519
-- */

-- NOTE: Input must be exactly 32 bytes long
privKeyLoadX25519IO :: ByteString -> IO PrivKey
privKeyLoadX25519IO = mkInit_bytes MkPrivKey botan_privkey_load_x25519 botan_privkey_destroy

-- NOTE: Input must be exactly 32 bytes long
pubKeyLoadX25519IO :: ByteString -> IO PubKey
pubKeyLoadX25519IO = mkInit_bytes MkPubKey botan_pubkey_load_x25519 botan_pubkey_destroy

privKeyX25519GetPrivKeyIO :: PrivKey -> IO ByteString
privKeyX25519GetPrivKeyIO sk = withPrivKeyPtr sk $ \ skPtr -> do
    allocBytes 32 $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_privkey_x25519_get_privkey skPtr outPtr

pubKeyX25519GetPubKeyIO :: PubKey -> IO ByteString
pubKeyX25519GetPubKeyIO pk = withPubKeyPtr pk $ \ pkPtr -> do
    allocBytes 32 $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_pubkey_x25519_get_pubkey pkPtr outPtr
