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

privKeyCreateDSA :: RNG -> Int -> Int -> IO PrivKey
privKeyCreateDSA rng pbits qbits = withRNG rng $ \ botanRNG -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_privkey_create_dsa outPtr botanRNG (fromIntegral pbits) (fromIntegral qbits)
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_privkey_destroy out
        return $ MkPrivKey foreignPtr

privKeyLoadDSA :: MP -> MP -> MP -> MP -> IO PrivKey
privKeyLoadDSA = mkPrivKeyLoad4 botan_privkey_load_dsa

pubKeyLoadDSA :: MP -> MP -> MP -> MP -> IO PubKey
pubKeyLoadDSA = mkPubKeyLoad4 botan_pubkey_load_dsa
