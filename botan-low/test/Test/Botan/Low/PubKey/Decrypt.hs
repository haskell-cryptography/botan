{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.PubKey.Decrypt (tests) where

import           Botan.Low.PubKey
import           Botan.Low.PubKey.Decrypt
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
    specs <- testSpec "spec_decrypt" spec_decrypt
    pure $ testGroup "Test.Botan.Low.PubKey.Decrypt" [
        specs
        -- TODO: temporarily disabled because the test suite fails. See issue
        -- #33.
      | False
      ]

pks :: [(ByteString, ByteString, ByteString)]
pks =
    [ ("RSA", "2048", "PKCS1v15")
    , ("SM2", "sm2p256v1", "SHA-256") -- NOTE: Decrypt fails with InsufficientBufferSpace
    , ("ElGamal", "modp/ietf/1024", "PKCS1v15")
    ]

pkTestName :: (ByteString, ByteString, ByteString) -> String
pkTestName (pk, param, padding) = chars $ pk <> " " <> param <> " " <> padding

spec_decrypt :: Spec
spec_decrypt = testSuite pks pkTestName $ \ (pk, param, padding) -> do
    it "decryptCreate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        _pubKey <- privKeyExportPubKey privKey
        _ctx <- decryptCreate privKey padding
        pass
    it "decryptOutputLength" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        _pubKey <- privKeyExportPubKey privKey
        ctx <- decryptCreate privKey padding
        _ <- decryptOutputLength ctx 128
        pass
    it "decrypt" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        ectx <- encryptCreate pubKey padding
        dctx <- decryptCreate privKey padding
        encrypted <- encrypt ectx rng "Fee fi fo fum!"
        decrypted <- decrypt dctx encrypted
        decrypted `shouldBe` "Fee fi fo fum!"
        pass
