module Botan.Low.PubKey.SM2 where

import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.SM2

import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey

privKeyLoadSM2
    :: MP           -- ^ __scalar__
    -> ByteString   -- ^ __curve_name__
    -> IO PrivKey   -- ^ __key__
privKeyLoadSM2 = mkPrivKeyLoad1_name botan_privkey_load_sm2

pubKeyLoadSM2
    :: MP           -- ^ __public_x__
    -> MP           -- ^ __public_y__
    -> ByteString   -- ^ __curve_name__
    -> IO PubKey    -- ^ __key__
pubKeyLoadSM2 = mkPubKeyLoad2_name botan_pubkey_load_sm2

-- TODO:
-- pubKeySM2ComputeZA
--     :: ByteString       -- ^ __ident__
--     -> ByteString       -- ^ __hash_algo__
--     -> PubKey           -- ^ __key__
--     -> IO ByteString    -- ^ __out[]__
-- pubKeySM2omputeZA = undefined
