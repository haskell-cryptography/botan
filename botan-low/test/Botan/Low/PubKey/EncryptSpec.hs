module Main where

import Test.Prelude

import Botan.Low.PubKey
import Botan.Low.PubKey.Encrypt
import Botan.Low.RNG

-- NOTE: SM2 encrypt fails with InsufficientBufferSpace unless sm2p256v1 is used as the
--  curve when creating the key (but creating the key and the encryption context do not fail)

pks =
    [ ("RSA", "2048", "PKCS1v15")
    , ("SM2", "sm2p256v1", "SHA-256") -- NOTE: SM2 takes a hash rather than a padding
    , ("ElGamal", "modp/ietf/1024", "PKCS1v15")
    ]

pkTestName :: (ByteString, ByteString, ByteString) -> String
pkTestName (pk, param, padding) = chars $ pk <> " " <> param <> " " <> padding

main :: IO ()
main = hspec $ testSuite pks pkTestName $ \ (pk, param, padding) -> do
    it "encryptCreate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        ctx <- encryptCreate pubKey padding
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
