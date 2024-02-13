module Botan.Low.PubKey.ECDH where

import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.ECDH

import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey

privKeyLoadECDH
    :: MP           -- ^ @scalar@
    -> ByteString   -- ^ @curve_name@
    -> IO PrivKey   -- ^ @key@
privKeyLoadECDH = mkPrivKeyLoad1_name botan_privkey_load_ecdh

pubKeyLoadECDH
    :: MP           -- ^ @public_x@
    -> MP           -- ^ @public_y@
    -> ByteString   -- ^ @curve_name@
    -> IO PubKey    -- ^ @key@
pubKeyLoadECDH = mkPubKeyLoad2_name botan_pubkey_load_ecdh
