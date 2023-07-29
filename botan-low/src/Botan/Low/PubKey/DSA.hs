module Botan.Low.PubKey.DSA where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.DSA

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey

privKeyLoadDSA :: MP -> MP -> MP -> MP -> IO PrivKey
privKeyLoadDSA = mkPrivKeyLoad4 botan_privkey_load_dsa

pubKeyLoadDSA :: MP -> MP -> MP -> MP -> IO PubKey
pubKeyLoadDSA = mkPubKeyLoad4 botan_pubkey_load_dsa
