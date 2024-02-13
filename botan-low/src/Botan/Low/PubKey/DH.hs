{-|
Module      : Botan.Low.DSA
Description : Algorithm specific key operations: Diffie Hellman
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.DH where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.DH

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey

privKeyLoadDH
    :: MP           -- ^ @p@: prime order of a Z_p group
    -> MP           -- ^ @g@: group generator
    -> MP           -- ^ @x@: private key
    -> IO PrivKey   -- ^ @key@: variable populated with key material
privKeyLoadDH = mkPrivKeyLoad3 botan_privkey_load_dh

pubKeyLoadDH
    :: MP           -- ^ @p@: prime order of a Z_p group
    -> MP           -- ^ @g@: group generator
    -> MP           -- ^ @y@: public key
    -> IO PubKey    -- ^ @key@: variable populated with key material
pubKeyLoadDH = mkPubKeyLoad3 botan_pubkey_load_dh
