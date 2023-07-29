module Botan.Low.PubKey.DH where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.DH

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey

privKeyLoadDH :: MP -> MP -> MP -> IO PrivKey
privKeyLoadDH = mkPrivKeyLoad3 botan_privkey_load_dh

pubKeyLoadDH :: MP -> MP -> MP -> IO PubKey
pubKeyLoadDH = mkPubKeyLoad3 botan_pubkey_load_dh
