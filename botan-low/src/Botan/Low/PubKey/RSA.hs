{-|
Module      : Botan.Low.RSA
Description : Algorithm specific key operations: RSA
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.RSA where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.RSA

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey

-- /*
-- * Algorithm specific key operations: RSA
-- */

privKeyLoadRSA :: MP -> MP -> MP -> IO PrivKey
privKeyLoadRSA = mkPrivKeyLoad3 botan_privkey_load_rsa

-- TODO: botan_privkey_load_rsa_pkcs1

-- TODO: botan_privkey_rsa_get_privkey

pubKeyLoadDSA :: MP -> MP -> IO PubKey
pubKeyLoadDSA = mkPubKeyLoad2 botan_pubkey_load_rsa
