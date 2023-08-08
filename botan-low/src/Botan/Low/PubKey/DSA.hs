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

privKeyCreateDSAIO :: RNGCtx -> Int -> Int -> IO PrivKey
privKeyCreateDSAIO rng pbits qbits = withRNGPtr rng $ \ rngPtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_privkey_create_dsa outPtr rngPtr (fromIntegral pbits) (fromIntegral qbits)
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_privkey_destroy out
        return $ MkPrivKey foreignPtr

privKeyLoadDSAIO :: MP -> MP -> MP -> MP -> IO PrivKey
privKeyLoadDSAIO = mkPrivKeyLoad4 botan_privkey_load_dsa

pubKeyLoadDSAIO :: MP -> MP -> MP -> MP -> IO PubKey
pubKeyLoadDSAIO = mkPubKeyLoad4 botan_pubkey_load_dsa
