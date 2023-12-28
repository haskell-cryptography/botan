{-|
Module      : Botan.Low.ElGamal
Description : Algorithm specific key operations: ElGamal
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.ElGamal where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.ElGamal

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.PubKey
import Botan.Low.RNG

-- /*
-- * Algorithm specific key operations: ElGamal
-- */

privKeyCreateElGamal :: RNG -> Int -> Int -> IO PrivKey
privKeyCreateElGamal rng pbits qbits = withRNG rng $ \ botanRNG -> do
    createPrivKey $ \ out -> botan_privkey_create_elgamal
        out
        botanRNG
        (fromIntegral pbits)
        (fromIntegral qbits)

privKeyLoadElGamal :: MP -> MP -> MP -> IO PrivKey
privKeyLoadElGamal = mkPrivKeyLoad3 botan_privkey_load_elgamal

pubKeyLoadElGamal :: MP -> MP -> MP -> IO PubKey
pubKeyLoadElGamal = mkPubKeyLoad3 botan_pubkey_load_elgamal
