module Botan.Low.PubKey.ECDH where

import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.ECDH

import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey

privKeyLoadECDH :: MP -> ByteString -> IO PrivKey
privKeyLoadECDH = mkPrivKeyLoad1_name botan_privkey_load_ecdh

pubKeyLoadECDH :: MP -> MP -> ByteString -> IO PubKey
pubKeyLoadECDH = mkPubKeyLoad2_name botan_pubkey_load_ecdh
