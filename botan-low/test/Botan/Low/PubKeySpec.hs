module Botan.Low.PubKeySpec
( spec
, pks
, pkTestName
) where

import Test.Prelude

import Botan.Low.RNG
import Botan.Low.PubKey

ecGroup :: ByteString
ecGroup = "secp256r1"

dlGroup :: ByteString
dlGroup = "modp/ietf/1024"

-- TODO: More exhaustive testing in botan
-- pks :: [(PKName, PKParams)]
pks :: [(ByteString, ByteString)]
pks =
    [ ("RSA", "2048")
    , ("SM2", ecGroup)
    , ("ElGamal", dlGroup)
    , ("DSA", dlGroup)
    , ("ECDSA", ecGroup)
    , ("ECKCDSA", ecGroup)
    , ("ECGDSA", ecGroup)
    , ("GOST-34.10", ecGroup)
    , ("Ed25519", "")
    , ("XMSS",  "XMSS-SHAKE_10_256")    -- NOTE: XMSS is noticeably slower than other keys and
                                        -- the _16 and _20 variants are exponentially slower
    , ("DH", dlGroup)
    , ("ECDH", ecGroup)
    , ("Curve25519", "")
    -- TODO: Dilithium-x-y
    , ("Dilithium", "")
    -- TODO: Kyber-x-y
    , ("Kyber", "")
    -- TODO: SPHINCS+
    -- https://github.com/randombit/botan/blob/a303f4af1504e7ac349dd798190924ea08ead9b7/src/lib/pubkey/sphincsplus/sphincsplus_common/sp_parameters.cpp#L155
    -- , ("SPHINCS+", "sha2-128s-r3.1") -- Not working
    , ("McEliece", "")
    ]

pkTestName :: (ByteString, ByteString) -> String
pkTestName (pk, param) = chars $ pk <> " " <> param

-- NOTE: These tests are going to be very slow if we create new keys every time
spec :: Spec
spec = testSuite pks pkTestName $ \ (pk, param) -> do
    it "privKeyCreate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pass
    it "privKeyCheckKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        privKeyCheckKey privKey rng CheckKeyNone
        -- privKeyCheckKey privKey rng CheckKeyExpensiveTests
        pass
    it "privKeyExport" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        privKeyDER <- privKeyExport privKey PrivKeyExportDER
        privKeyPEM <- privKeyExport privKey PrivKeyExportPEM
        pass
    it "privKeyLoad" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        privKeyDER <- privKeyExport privKey PrivKeyExportDER
        privKeyPEM <- privKeyExport privKey PrivKeyExportPEM
        privKeyLoad privKeyDER ""
        privKeyLoad privKeyPEM ""
        pass
    it "privKeyAlgoName" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        privKeyAlgoName privKey
        pass
    it "privKeyGetField" $ do
        pending
    it "privKeyExportPubKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        pass
    it "pubKeyCheckKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        pubKeyCheckKey pubKey rng CheckKeyNone
        -- pubKeyCheckKey pubKey rng CheckKeyExpensiveTests
        pass
    it "pubKeyExport" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        pubKeyDER <- pubKeyExport pubKey PrivKeyExportDER
        pubKeyPEM <- pubKeyExport pubKey PrivKeyExportPEM
        pass
    it "pubKeyLoad" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        pubKeyDER <- pubKeyExport pubKey PrivKeyExportDER
        pubKeyPEM <- pubKeyExport pubKey PrivKeyExportPEM
        pubKeyLoad pubKeyDER
        pubKeyLoad pubKeyPEM
        pass
    it "pubKeyAlgoName" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        pubKeyAlgoName pubKey
        pass
    it "pubKeyEstimatedStrength" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        pubKeyEstimatedStrength pubKey
        pass
    it "pubKeyFingerprint" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        pubKeyFingerprint pubKey "SHA-256"
        pass
    it "pubKeyGetField" $ do
        pending
