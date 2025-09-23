{-|
Module      : Botan.Low.RSA
Description : Algorithm specific key operations: RSA
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.RSA (
    privKeyLoadRSA
  , privKeyLoadRSA_PKCS1
  , privKeyRSAGetPrivKey
  , pubKeyLoadRSA
  ) where

import           Botan.Bindings.PubKey.RSA

import           Botan.Low.MPI
import           Botan.Low.Prelude
import           Botan.Low.PubKey
import           Botan.Low.Remake

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
