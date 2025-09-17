{-|
Module      : Botan.Low.DSA
Description : Algorithm specific key operations: DSA
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.DSA where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.DSA

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey
import Botan.Low.RNG

privKeyCreateDSA
    :: RNG          -- ^ __rng__: initialized PRNG
    -> Int          -- ^ __pbits__: length of the key in bits. Must be between in range (1024, 3072)
                    --   and multiple of 64. Bit size of the prime 'p'
    -> Int          -- ^ __qbits__: qbits order of the subgroup. Must be in range (160, 256) and multiple
                    --   of 8
    -> IO PrivKey   -- ^ __key__: handler to the resulting key
privKeyCreateDSA rng pbits qbits = withRNG rng $ \ botanRNG -> do
    createPrivKey $ \ out -> botan_privkey_create_dsa
        out
        botanRNG
        (fromIntegral pbits)
        (fromIntegral qbits)

privKeyLoadDSA
    :: MP           -- ^ __p__
    -> MP           -- ^ __q__
    -> MP           -- ^ __g__
    -> MP           -- ^ __x__
    -> IO PrivKey   -- ^ __key__
privKeyLoadDSA = mkPrivKeyLoad4 botan_privkey_load_dsa

pubKeyLoadDSA
    :: MP           -- ^ __p__
    -> MP           -- ^ __q__
    -> MP           -- ^ __g__
    -> MP           -- ^ __y__
    -> IO PubKey    -- ^ __key__
pubKeyLoadDSA = mkPubKeyLoad4 botan_pubkey_load_dsa
