{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.PubKey.KeyAgreement (tests) where

import           Botan.Low.PubKey
import           Botan.Low.PubKey.KeyAgreement
import           Botan.Low.RNG
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_keyAgreement" spec_keyAgreement
    pure $ testGroup "Test.Botan.Low.PubKey.KeyAgreement" [
        specs
      ]

-- TODO: More thorough test with different KDFs and curves / groups
pks :: [(ByteString, ByteString)]
pks =
    [ ("DH", "modp/ietf/1024")
    , ("ECDH", "secp256r1")
    , ("Curve25519", "")
    ]

pkTestName :: (ByteString, ByteString) -> String
pkTestName (pk, param) = chars $ pk <> " " <> param

spec_keyAgreement :: Spec
spec_keyAgreement = testSuite pks pkTestName $ \ (pk, param) -> do
    it "keyAgreementCreate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        _ka <- keyAgreementCreate privKey "HKDF(SHA-256)"
        pass
    it "keyAgreementExportPublic" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        _ka <- keyAgreementCreate privKey "HKDF(SHA-256)"
        _pubKey <- keyAgreementExportPublic privKey
        pass
    it "keyAgreementSize" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        ka <- keyAgreementCreate privKey "HKDF(SHA-256)"
        _kaSz <- keyAgreementSize ka
        pass
    it "keyAgreement" $ do
        rng <- rngInit "system"
        privKeyA <- privKeyCreate pk param rng
        pubKeyA <- keyAgreementExportPublic privKeyA
        privKeyB <- privKeyCreate pk param rng
        pubKeyB <- keyAgreementExportPublic privKeyB
        kaA <- keyAgreementCreate privKeyA "HKDF(SHA-256)"
        kaB <- keyAgreementCreate privKeyB "HKDF(SHA-256)"
        sharedKeyA <- keyAgreement kaA pubKeyB "salt"
        sharedKeyB <- keyAgreement kaB pubKeyA "salt"
        sharedKeyA `shouldBe` sharedKeyB
        pass
