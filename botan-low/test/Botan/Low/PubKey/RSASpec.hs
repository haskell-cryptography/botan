module Main where

import Test.Prelude

import Botan.Low.MPI
import Botan.Low.RNG
import Botan.Low.PubKey
import Botan.Low.PubKey.RSA

rsaSizes = [ "2048" ]

-- TODO: Consolidate
privKeyField :: PrivKey -> ByteString -> IO MP
privKeyField privKey field = do
    mp <- mpInit
    privKeyGetField mp privKey field
    return mp

-- TODO: Consolidate
pubKeyField :: PubKey -> ByteString -> IO MP
pubKeyField pubKey field = do
    mp <- mpInit
    pubKeyGetField mp pubKey field
    return mp

main :: IO ()
main = hspec $ testSuite rsaSizes chars $ \ rsaSize -> do
    it "privKeyLoadRSA" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "RSA" rsaSize rng
        p <- privKeyField privKey "p"
        q <- privKeyField privKey "q"
        e <- privKeyField privKey "e"
        loadedKey <- privKeyLoadRSA p q e
        pass
    it "pubKeyLoadRSA" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "RSA" rsaSize rng
        pubKey <- privKeyExportPubKey privKey
        n <- pubKeyField pubKey "n"
        e <- pubKeyField pubKey "e"
        loadedKey <- pubKeyLoadRSA n e
        pass
