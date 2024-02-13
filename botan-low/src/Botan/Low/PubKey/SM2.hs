module Botan.Low.PubKey.SM2 where

import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.SM2

import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey

privKeyLoadSM2
    :: MP           -- ^ @scalar@
    -> ByteString   -- ^ @curve_name@
    -> IO PrivKey   -- ^ @key@
privKeyLoadSM2 = mkPrivKeyLoad1_name botan_privkey_load_sm2
 
pubKeyLoadSM2
    :: MP           -- ^ @public_x@
    -> MP           -- ^ @public_y@
    -> ByteString   -- ^ @curve_name@
    -> IO PubKey    -- ^ @key@
pubKeyLoadSM2 = mkPubKeyLoad2_name botan_pubkey_load_sm2

-- TODO:
-- pubKeySM2ComputeZA
--     :: ByteString       -- ^ @ident@
--     -> ByteString       -- ^ @hash_algo@
--     -> PubKey           -- ^ @key@
--     -> IO ByteString    -- ^ @out[]@
-- pubKeySM2omputeZA = undefined
