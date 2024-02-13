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
    :: MP           -- ^ @p@
    -> MP           -- ^ @q@
    -> MP           -- ^ @e@
    -> IO PrivKey   -- ^ @key@
privKeyLoadRSA = mkPrivKeyLoad3 botan_privkey_load_rsa

privKeyLoadRSA_PKCS1
    :: ByteString   -- ^ @bits@
    -> IO PrivKey   -- ^ @key@
privKeyLoadRSA_PKCS1 = mkCreateObjectCBytesLen createPrivKey botan_privkey_load_rsa_pkcs1

privKeyRSAGetPrivKey
    :: PrivKey          -- ^ @rsa_key@
    -> Word32           -- ^ @flags@
    -> IO ByteString    -- ^ @out@
-- WRONG: privKeyRSAGetPrivKey = mkCreateObjectCBytesLen1 botan_privkey_rsa_get_privkey
privKeyRSAGetPrivKey = mkWithObjectGetterCBytesLen1 withPrivKey
    $ \ rsa_key flags out out_len -> botan_privkey_rsa_get_privkey rsa_key out out_len flags

pubKeyLoadRSA
    :: MP           -- ^ @n@
    -> MP           -- ^ @e@
    -> IO PubKey    -- ^ @key@
pubKeyLoadRSA = mkPubKeyLoad2 botan_pubkey_load_rsa
