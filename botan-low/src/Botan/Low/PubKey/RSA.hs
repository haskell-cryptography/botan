{-|
Module      : Botan.Low.RSA
Description : Algorithm specific key operations: RSA
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.RSA where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.RSA

import Botan.Low.Error
import Botan.Low.Remake
import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey

-- /*
-- * Algorithm specific key operations: RSA
-- */

privKeyLoadRSA
    :: MP           -- ^ __p__
    -> MP           -- ^ __q__
    -> MP           -- ^ __e__
    -> IO PrivKey   -- ^ __key__
privKeyLoadRSA = mkPrivKeyLoad3 botan_privkey_load_rsa

privKeyLoadRSA_PKCS1
    :: ByteString   -- ^ __bits__
    -> IO PrivKey   -- ^ __key__
privKeyLoadRSA_PKCS1 = mkCreateObjectCBytesLen createPrivKey botan_privkey_load_rsa_pkcs1

privKeyRSAGetPrivKey
    :: PrivKey          -- ^ __rsa_key__
    -> Word32           -- ^ __flags__
    -> IO ByteString    -- ^ __out__
-- WRONG: privKeyRSAGetPrivKey = mkCreateObjectCBytesLen1 botan_privkey_rsa_get_privkey
privKeyRSAGetPrivKey = mkWithObjectGetterCBytesLen1 withPrivKey
    $ \ rsa_key flags out out_len -> botan_privkey_rsa_get_privkey rsa_key out out_len flags

pubKeyLoadRSA
    :: MP           -- ^ __n__
    -> MP           -- ^ __e__
    -> IO PubKey    -- ^ __key__
pubKeyLoadRSA = mkPubKeyLoad2 botan_pubkey_load_rsa
