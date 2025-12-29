module Botan.Low.PubKey.ECDH (
    privKeyLoadECDH
  , pubKeyLoadECDH
  ) where

import           Botan.Bindings.PubKey.ECDH
import           Botan.Low.MPI
import           Botan.Low.PubKey
import           Data.ByteString (ByteString)

privKeyLoadECDH
    :: MP           -- ^ __scalar__
    -> ByteString   -- ^ __curve_name__
    -> IO PrivKey   -- ^ __key__
privKeyLoadECDH = mkPrivKeyLoad1_name botan_privkey_load_ecdh

pubKeyLoadECDH
    :: MP           -- ^ __public_x__
    -> MP           -- ^ __public_y__
    -> ByteString   -- ^ __curve_name__
    -> IO PubKey    -- ^ __key__
pubKeyLoadECDH = mkPubKeyLoad2_name botan_pubkey_load_ecdh
