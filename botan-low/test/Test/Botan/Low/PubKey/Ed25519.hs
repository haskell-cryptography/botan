{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.PubKey.Ed25519 (tests) where

import           Botan.Low.PubKey
import           Botan.Low.PubKey.Ed25519
import           Botan.Low.RNG
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_ed25519" spec_ed25519
    pure $ testGroup "Test.Botan.Low.PubKey.Ed25519" [
        specs
      ]

spec_ed25519 :: Spec
spec_ed25519 = do
    it "privKeyEd25519GetPrivKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Ed25519" "" rng
        _exportedPrivKey <- privKeyEd25519GetPrivKey privKey
        pass
    it "pubKeyEd25519GetPubKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Ed25519" "" rng
        pubKey <- privKeyExportPubKey privKey
        _exportedPubKey <- pubKeyEd25519GetPubKey pubKey
        pass
    it "privKeyLoadEd25519" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Ed25519" "" rng
        exportedPrivKey <- privKeyEd25519GetPrivKey privKey
        _loadedPrivKey <- privKeyLoadEd25519 exportedPrivKey
        pass
    it "pubKeyLoadEd25519" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Ed25519" "" rng
        pubKey <- privKeyExportPubKey privKey
        exportedPubKey <- pubKeyEd25519GetPubKey pubKey
        _loadedPubKey <- pubKeyLoadEd25519 exportedPubKey
        pass
