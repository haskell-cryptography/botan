module Botan.Low.PubKey.ElGamal where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.ElGamal

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey

-- /*
-- * Algorithm specific key operations: ElGamal
-- */

privKeyLoadElGamal :: MP -> MP -> MP -> IO PrivKey
privKeyLoadElGamal = mkPrivKeyLoad3 botan_privkey_load_elgamal

pubKeyLoadElGamal :: MP -> MP -> MP -> IO PubKey
pubKeyLoadElGamal = mkPubKeyLoad3 botan_pubkey_load_elgamal
