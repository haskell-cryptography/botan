module Botan.Low.PubKey.ECDSA (
    privKeyLoadECDSA
  , pubKeyLoadECDSA
  ) where

import           Botan.Bindings.PubKey.ECDSA
import           Botan.Low.MPI
import           Botan.Low.PubKey
import           Data.ByteString (ByteString)

privKeyLoadECDSA
    :: MP           -- ^ __scalar__
    -> ByteString   -- ^ __curve_name__
    -> IO PrivKey   -- ^ __key__
privKeyLoadECDSA = mkPrivKeyLoad1_name botan_privkey_load_ecdsa

pubKeyLoadECDSA
    :: MP           -- ^ __public_x__
    -> MP           -- ^ __public_y__
    -> ByteString   -- ^ __curve_name__
    -> IO PubKey    -- ^ __key__
pubKeyLoadECDSA = mkPubKeyLoad2_name botan_pubkey_load_ecdsa
