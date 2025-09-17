{-|
Module      : Botan.Low.DSA
Description : Algorithm specific key operations: Diffie Hellman
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
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
    :: MP           -- ^ __p__: prime order of a Z_p group
    -> MP           -- ^ __g__: group generator
    -> MP           -- ^ __x__: private key
    -> IO PrivKey   -- ^ __key__: variable populated with key material
privKeyLoadDH = mkPrivKeyLoad3 botan_privkey_load_dh

pubKeyLoadDH
    :: MP           -- ^ __p__: prime order of a Z_p group
    -> MP           -- ^ __g__: group generator
    -> MP           -- ^ __y__: public key
    -> IO PubKey    -- ^ __key__: variable populated with key material
pubKeyLoadDH = mkPubKeyLoad3 botan_pubkey_load_dh
