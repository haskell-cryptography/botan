module Botan.Low.PubKey.SM2 where

import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.SM2

import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey

privKeyLoadSM2 :: MP -> ByteString -> IO PrivKey
privKeyLoadSM2 = mkPrivKeyLoad1_name botan_privkey_load_sm2

pubKeyLoadSM2 :: MP -> MP -> ByteString -> IO PubKey
pubKeyLoadSM2 = mkPubKeyLoad2_name botan_pubkey_load_sm2

-- TODO:
-- pubKeySM2ComputeZA :: ByteString -> ByteString -> PubKey -> IO ByteString
-- pubKeySM2omputeZA = undefined
