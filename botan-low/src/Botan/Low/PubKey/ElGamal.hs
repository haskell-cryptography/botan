{-|
Module      : Botan.Low.ElGamal
Description : Algorithm specific key operations: ElGamal
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.ElGamal where

import qualified Data.ByteString as ByteString

import           Botan.Bindings.PubKey
import           Botan.Bindings.PubKey.ElGamal

import           Botan.Low.Error
import           Botan.Low.Make
import           Botan.Low.MPI
import           Botan.Low.Prelude
import           Botan.Low.PubKey
import           Botan.Low.RNG

-- /*
-- * Algorithm specific key operations: ElGamal
-- */

privKeyCreateElGamal
    :: RNG          -- ^ __rng__: initialized PRNG
    -> Int          -- ^ __pbits__: length of the key in bits. Must be at least 1024
    -> Int          -- ^ __qbits__: order of the subgroup. Must be at least 160
    -> IO PrivKey   -- ^ __key__: handler to the resulting key
privKeyCreateElGamal rng pbits qbits = withRNG rng $ \ botanRNG -> do
    createPrivKey $ \ out -> botan_privkey_create_elgamal
        out
        botanRNG
        (fromIntegral pbits)
        (fromIntegral qbits)

privKeyLoadElGamal
    :: MP           -- ^ __p__: prime order of a Z_p group
    -> MP           -- ^ __g__: group generator
    -> MP           -- ^ __x__: public key
    -> IO PrivKey   -- ^ __key__: variable populated with key material
privKeyLoadElGamal = mkPrivKeyLoad3 botan_privkey_load_elgamal

pubKeyLoadElGamal
    :: MP           -- ^ __p__: prime order of a Z_p group
    -> MP           -- ^ __g__: group generator
    -> MP           -- ^ __y__: private key
    -> IO PubKey    -- ^ __key__: variable populated with key material
pubKeyLoadElGamal = mkPubKeyLoad3 botan_pubkey_load_elgamal
