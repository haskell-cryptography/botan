module Main where

import           Test.Prelude

import           Botan.Low.PubKey
import           Botan.Low.PubKey.Ed25519
import           Botan.Low.RNG

main :: IO ()
main = hspec $ do
    it "privKeyEd25519GetPrivKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Ed25519" "" rng
        exportedPrivKey <- privKeyEd25519GetPrivKey privKey
        pass
    it "pubKeyEd25519GetPubKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Ed25519" "" rng
        pubKey <- privKeyExportPubKey privKey
        exportedPubKey <- pubKeyEd25519GetPubKey pubKey
        pass
    it "privKeyLoadEd25519" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Ed25519" "" rng
        exportedPrivKey <- privKeyEd25519GetPrivKey privKey
        loadedPrivKey <- privKeyLoadEd25519 exportedPrivKey
        pass
    it "pubKeyLoadEd25519" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Ed25519" "" rng
        pubKey <- privKeyExportPubKey privKey
        exportedPubKey <- pubKeyEd25519GetPubKey pubKey
        loadedPubKey <- pubKeyLoadEd25519 exportedPubKey
        pass
