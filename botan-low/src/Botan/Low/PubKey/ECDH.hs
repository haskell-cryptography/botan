module Botan.Low.PubKey.ECDH where

import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.ECDH

import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey

privKeyLoadECDHIO :: MP -> ByteString -> IO PrivKey
privKeyLoadECDHIO = mkPrivKeyLoad1_name botan_privkey_load_ecdh

pubKeyLoadECDHIO :: MP -> MP -> ByteString -> IO PubKey
pubKeyLoadECDHIO = mkPubKeyLoad2_name botan_pubkey_load_ecdh
