module Botan.Low.PubKey.ECDSA where

import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.ECDSA

import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey

privKeyLoadECDSA
    :: MP           -- ^ @scalar@
    -> ByteString   -- ^ @curve_name@
    -> IO PrivKey   -- ^ @key@
privKeyLoadECDSA = mkPrivKeyLoad1_name botan_privkey_load_ecdsa

pubKeyLoadECDSA
    :: MP           -- ^ @public_x@
    -> MP           -- ^ @public_y@
    -> ByteString   -- ^ @curve_name@
    -> IO PubKey    -- ^ @key@
pubKeyLoadECDSA = mkPubKeyLoad2_name botan_pubkey_load_ecdsa
