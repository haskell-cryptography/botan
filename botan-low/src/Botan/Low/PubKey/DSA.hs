{-|
Module      : Botan.Low.DSA
Description : Algorithm specific key operations: DSA
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
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
    :: RNG          -- ^ @rng@: initialized PRNG
    -> Int          -- ^ @pbits@: length of the key in bits. Must be between in range (1024, 3072)
                    --   and multiple of 64. Bit size of the prime 'p'
    -> Int          -- ^ @qbits@: qbits order of the subgroup. Must be in range (160, 256) and multiple
                    --   of 8
    -> IO PrivKey   -- ^ @key@: handler to the resulting key
privKeyCreateDSA rng pbits qbits = withRNG rng $ \ botanRNG -> do
    createPrivKey $ \ out -> botan_privkey_create_dsa
        out
        botanRNG
        (fromIntegral pbits)
        (fromIntegral qbits)
        
privKeyLoadDSA 
    :: MP           -- ^ @p@
    -> MP           -- ^ @q@
    -> MP           -- ^ @g@
    -> MP           -- ^ @x@
    -> IO PrivKey   -- ^ @key@
privKeyLoadDSA = mkPrivKeyLoad4 botan_privkey_load_dsa

pubKeyLoadDSA
    :: MP           -- ^ @p@
    -> MP           -- ^ @q@
    -> MP           -- ^ @g@
    -> MP           -- ^ @y@
    -> IO PubKey    -- ^ @key@
pubKeyLoadDSA = mkPubKeyLoad4 botan_pubkey_load_dsa
