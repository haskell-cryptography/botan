module Botan.Low.PubKey.ECDSA where

import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.ECDSA

import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey


privKeyLoadECDSAIO :: MP -> ByteString -> IO PrivKey
privKeyLoadECDSAIO = mkPrivKeyLoad1_name botan_privkey_load_ecdsa

pubKeyLoadECDSAIO :: MP -> MP -> ByteString -> IO PubKey
pubKeyLoadECDSAIO = mkPubKeyLoad2_name botan_pubkey_load_ecdsa
