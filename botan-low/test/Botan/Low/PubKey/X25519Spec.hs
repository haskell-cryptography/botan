module Botan.Low.PubKey.X25519Spec
( spec
) where

import Test.Prelude

import Botan.Low.RNG
import Botan.Low.PubKey
import Botan.Low.PubKey.X25519

spec :: Spec
spec = do
    it "privKeyX25519GetPrivKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Curve25519" "" rng
        exportedPrivKey <- privKeyX25519GetPrivKey privKey
        pass
    it "pubKeyX25519GetPubKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Curve25519" "" rng
        pubKey <- privKeyExportPubKey privKey
        exportedPubKey <- pubKeyX25519GetPubKey pubKey
        pass
    it "privKeyLoadX25519" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Curve25519" "" rng
        exportedPrivKey <- privKeyX25519GetPrivKey privKey
        loadedPrivKey <- privKeyLoadX25519 exportedPrivKey
        pass
    it "pubKeyLoadX25519" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "Curve25519" "" rng
        pubKey <- privKeyExportPubKey privKey
        exportedPubKey <- pubKeyX25519GetPubKey pubKey
        loadedPubKey <- pubKeyLoadX25519 exportedPubKey
        pass
