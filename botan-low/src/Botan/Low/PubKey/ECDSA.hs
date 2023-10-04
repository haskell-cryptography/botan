module Botan.Low.PubKey.ECDSA where

import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.ECDSA

import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey


privKeyLoadECDSA :: MP -> ByteString -> IO PrivKey
privKeyLoadECDSA = mkPrivKeyLoad1_name botan_privkey_load_ecdsa

pubKeyLoadECDSA :: MP -> MP -> ByteString -> IO PubKey
pubKeyLoadECDSA = mkPubKeyLoad2_name botan_pubkey_load_ecdsa
