{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.PubKey.X25519 (tests) where

import           Botan.Low.PubKey
import           Botan.Low.PubKey.X25519
import           Botan.Low.RNG
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_x25519" spec_x25519
    pure $ testGroup "Test.Botan.Low.PubKey.X25519" [
        specs
      ]

spec_x25519 :: Spec
spec_x25519 = do
    it "privKeyX25519GetPrivKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Curve25519" "" rng
        _exportedPrivKey <- privKeyX25519GetPrivKey privKey
        pass
    it "pubKeyX25519GetPubKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Curve25519" "" rng
        pubKey <- privKeyExportPubKey privKey
        _exportedPubKey <- pubKeyX25519GetPubKey pubKey
        pass
    it "privKeyLoadX25519" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Curve25519" "" rng
        exportedPrivKey <- privKeyX25519GetPrivKey privKey
        _loadedPrivKey <- privKeyLoadX25519 exportedPrivKey
        pass
    it "pubKeyLoadX25519" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Curve25519" "" rng
        pubKey <- privKeyExportPubKey privKey
        exportedPubKey <- pubKeyX25519GetPubKey pubKey
        _loadedPubKey <- pubKeyLoadX25519 exportedPubKey
        pass
