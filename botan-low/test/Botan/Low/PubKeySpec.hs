module Main where

import           Test.Prelude

import           Botan.Low.MPI
import           Botan.Low.PubKey
import           Botan.Low.RNG

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

-- NOTE: Known fields are: n, e, p, q, g, a, b
--  ECGroup PrivKey: x plus all in PubKey
--  EGGroup PubKey: public_x, public_y, base_x, base_y, p, a, b, cofactor, order
--  DLGroup PubKey: p, q, g, y (not all groups have all four)
--  DLGroup PrivKey: p, q, g, x, y
--  RSA PubKey: p, q, d, c, d1, d2
--  RSA PrivKey: n, e, d, p, q, d1, d2, c

ecGroupPrivFields = [ "x" , "public_x", "public_y", "base_x", "base_y", "p", "a", "b", "cofactor", "order" ]
ecGroupPubFields = [ "public_x", "public_y", "base_x", "base_y", "p", "a", "b", "cofactor", "order" ]

dlGroupPrivFields = [ "p", "q", "g", "x", "y" ]
dlGroupPubFields = [ "p", "q", "g", "y" ]

privKeyFields "RSA"        = [ "p", "q", "d", "n", "e"] -- TODO: Check
privKeyFields "SM2"        = ecGroupPrivFields
privKeyFields "ElGamal"    = dlGroupPrivFields
privKeyFields "DSA"        = dlGroupPrivFields
privKeyFields "ECDSA"      = ecGroupPrivFields
privKeyFields "ECKCDSA"    = ecGroupPrivFields
privKeyFields "ECGDSA"     = ecGroupPrivFields
privKeyFields "GOST-34.10" = ecGroupPrivFields
privKeyFields "Ed25519"    = [] -- TODO
privKeyFields "XMSS"       = [] -- TODO
privKeyFields "DH"         = dlGroupPrivFields
privKeyFields "ECDH"       = ecGroupPrivFields
privKeyFields "Curve25519" = [] -- TODO
privKeyFields "Dilithium"  = [] -- TODO
privKeyFields "Kyber"      = [] -- TODO
privKeyFields "McEliece"   = [] -- TODO

pubKeyFields "RSA"        = [ "n", "e" ]
pubKeyFields "SM2"        = ecGroupPubFields
pubKeyFields "ElGamal"    = dlGroupPubFields
pubKeyFields "DSA"        = dlGroupPubFields
pubKeyFields "ECDSA"      = ecGroupPubFields
pubKeyFields "ECKCDSA"    = ecGroupPubFields
pubKeyFields "ECGDSA"     = ecGroupPubFields
pubKeyFields "GOST-34.10" = ecGroupPubFields
pubKeyFields "Ed25519"    = [] -- TODO
pubKeyFields "XMSS"       = [] -- TODO
pubKeyFields "DH"         = dlGroupPubFields
pubKeyFields "ECDH"       = ecGroupPubFields
pubKeyFields "Curve25519" = [] -- TODO
pubKeyFields "Dilithium"  = [] -- TODO
pubKeyFields "Kyber"      = [] -- TODO
pubKeyFields "McEliece"   = [] -- TODO

-- NOTE: These tests are going to be very slow if we create new keys every time
main :: IO ()
main = hspec $ testSuite pks pkTestName $ \ (pk, param) -> do
    it "privKeyCreate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pass
    it "privKeyCheckKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        privKeyCheckKey privKey rng CheckKeyNormalTests
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
    it "privKeyExportPubKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        pass
    it "pubKeyCheckKey" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        pubKeyCheckKey pubKey rng CheckKeyNormalTests
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
    describe "privKeyGetField" $ do
        forM_ (privKeyFields pk) $ \ field -> do
            it (chars field) $ do
                rng <- rngInit "system"
                privKey <- privKeyCreate pk param rng
                mp <- mpInit
                privKeyGetField mp privKey field
                pass
    describe "pubKeyGetField" $ do
        forM_ (pubKeyFields pk) $ \ field -> do
            it (chars field) $ do
                rng <- rngInit "system"
                privKey <- privKeyCreate pk param rng
                pubKey <- privKeyExportPubKey privKey
                mp <- mpInit
                pubKeyGetField mp pubKey field
                pass
