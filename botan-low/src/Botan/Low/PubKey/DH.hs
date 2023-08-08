{-|
Module      : Botan.Low.DSA
Description : Algorithm specific key operations: Diffie Hellman
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.DH where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.DH

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey

privKeyLoadDHIO :: MP -> MP -> MP -> IO PrivKey
privKeyLoadDHIO = mkPrivKeyLoad3 botan_privkey_load_dh

pubKeyLoadDHIO :: MP -> MP -> MP -> IO PubKey
pubKeyLoadDHIO = mkPubKeyLoad3 botan_pubkey_load_dh
