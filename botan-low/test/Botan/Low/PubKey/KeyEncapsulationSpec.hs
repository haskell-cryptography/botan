module Main (main) where

import           Test.Prelude

import           Botan.Low.PubKey
import           Botan.Low.PubKey.KeyEncapsulation
import           Botan.Low.RNG

pks :: [(ByteString, ByteString, ByteString)]
pks =
    [ ( "RSA", "2048", "HKDF(SHA-256)")
    , ( "Kyber", "", "HKDF(SHA-256)")
    , ( "McEliece", "", "HKDF(SHA-256)")
    ]

pkTestName :: (ByteString, ByteString, ByteString) -> String
pkTestName (pk, param, kdf) = chars $ pk <> " " <> param <> " " <> kdf

main :: IO ()
main = hspec $ testSuite pks pkTestName $ \ (pk, param, _kdf) -> do
    it "kemEncryptCreate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        _kem <- kemEncryptCreate pubKey "HKDF(SHA-256)"
        pass
    it "kemEncryptSharedKeyLength" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        kem <- kemEncryptCreate pubKey "HKDF(SHA-256)"
        _sharedKeyLength <- kemEncryptSharedKeyLength kem 256
        pass
    it "kemEncryptEncapsulatedKeyLength" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        kem <- kemEncryptCreate pubKey "HKDF(SHA-256)"
        _encapsulatedKeyLength <- kemEncryptEncapsulatedKeyLength kem
        pass
    it "kemEncryptCreateSharedKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        kem <- kemEncryptCreate pubKey "HKDF(SHA-256)"
        (_sharedKey, _encapsulatedKey) <- kemEncryptCreateSharedKey kem rng "salt" 256
        pass
    it "kemDecryptCreate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        _kem <- kemDecryptCreate privKey "HKDF(SHA-256)"
        pass
    it "kemDecryptSharedKeyLength" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        kem <- kemDecryptCreate privKey "HKDF(SHA-256)"
        _sharedKeyLen <- kemDecryptSharedKeyLength kem 256
        pass
    it "kemDecryptSharedKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        encryptCtx <- kemEncryptCreate pubKey "HKDF(SHA-256)"
        (sharedKey, encapsulatedKey) <- kemEncryptCreateSharedKey encryptCtx rng "salt" 256
        decryptCtx <- kemDecryptCreate privKey "HKDF(SHA-256)"
        decryptedSharedKey <- kemDecryptSharedKey decryptCtx "salt" encapsulatedKey 256
        sharedKey `shouldBe` decryptedSharedKey
        pass
