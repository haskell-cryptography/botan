module Main where

import           Test.Prelude

import           Botan.Low.PubKey
import           Botan.Low.PubKey.Decrypt
import           Botan.Low.PubKey.Encrypt
import           Botan.Low.RNG

pks =
    [ ("RSA", "2048", "PKCS1v15")
    , ("SM2", "sm2p256v1", "SHA-256") -- NOTE: Decrypt fails with InsufficientBufferSpace
    , ("ElGamal", "modp/ietf/1024", "PKCS1v15")
    ]

pkTestName :: (ByteString, ByteString, ByteString) -> String
pkTestName (pk, param, padding) = chars $ pk <> " " <> param <> " " <> padding

main :: IO ()
main = hspec $ testSuite pks pkTestName $ \ (pk, param, padding) -> do
    it "decryptCreate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        ctx <- decryptCreate privKey padding
        pass
    it "decryptOutputLength" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
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
