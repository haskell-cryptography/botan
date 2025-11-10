{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.PubKey.Encrypt (tests) where

import           Botan.Low.PubKey
import           Botan.Low.PubKey.Encrypt
import           Botan.Low.RNG
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_encrypt" spec_encrypt
    pure $ testGroup "Test.Botan.Low.PubKey.Encrypt" [
        specs
      ]

pks :: [(ByteString, ByteString, ByteString)]
pks =
    [ ("RSA", "2048", "PKCS1v15")
    , ("SM2", "sm2p256v1", "SHA-256") -- NOTE: SM2 takes a hash rather than a padding
    , ("ElGamal", "modp/ietf/1024", "PKCS1v15")
    ]

pkTestName :: (ByteString, ByteString, ByteString) -> String
pkTestName (pk, param, padding) = chars $ pk <> " " <> param <> " " <> padding

spec_encrypt :: Spec
spec_encrypt = testSuite pks pkTestName $ \ (pk, param, padding) -> do
    it "encryptCreate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        _ctx <- encryptCreate pubKey padding
        pass
    it "encryptOutputLength" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        ctx <- encryptCreate pubKey padding
        _ <- encryptOutputLength ctx 128
        pass
    it "encrypt" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        ctx <- encryptCreate pubKey padding
        _ <- encrypt ctx rng "Fee fi fo fum!"
        pass
