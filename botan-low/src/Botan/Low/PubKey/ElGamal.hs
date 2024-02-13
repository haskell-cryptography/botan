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

privKeyCreateElGamal
    :: RNG          -- ^ @rng@: initialized PRNG
    -> Int          -- ^ @pbits@: length of the key in bits. Must be at least 1024
    -> Int          -- ^ @qbits@: order of the subgroup. Must be at least 160
    -> IO PrivKey   -- ^ @key@: handler to the resulting key
privKeyCreateElGamal rng pbits qbits = withRNG rng $ \ botanRNG -> do
    createPrivKey $ \ out -> botan_privkey_create_elgamal
        out
        botanRNG
        (fromIntegral pbits)
        (fromIntegral qbits)

privKeyLoadElGamal
    :: MP           -- ^ @p@: prime order of a Z_p group
    -> MP           -- ^ @g@: group generator
    -> MP           -- ^ @x@: public key
    -> IO PrivKey   -- ^ @key@: variable populated with key material
privKeyLoadElGamal = mkPrivKeyLoad3 botan_privkey_load_elgamal

pubKeyLoadElGamal
    :: MP           -- ^ @p@: prime order of a Z_p group
    -> MP           -- ^ @g@: group generator
    -> MP           -- ^ @y@: private key
    -> IO PubKey    -- ^ @key@: variable populated with key material
pubKeyLoadElGamal = mkPubKeyLoad3 botan_pubkey_load_elgamal
