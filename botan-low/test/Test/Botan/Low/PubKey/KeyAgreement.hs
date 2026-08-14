{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.PubKey.KeyAgreement (tests) where

import           Botan.Low.PubKey
import           Botan.Low.PubKey.KeyAgreement
import           Botan.Low.RNG
import           Control.Monad (forM_)
import           Data.ByteString
import qualified Data.ByteString as ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_keyAgreement" spec_keyAgreement
    specs_matrix <- testSpec "spec_keyAgreement_matrix" spec_keyAgreement_matrix
    pure $ testGroup "Test.Botan.Low.PubKey.KeyAgreement" [
        specs,
        specs_matrix
      ]

pks :: [(ByteString, ByteString)]
pks =
    [ ("DH", "modp/ietf/2048")
    , ("DH", "ffdhe/ietf/3072")
    , ("ECDH", "secp256r1")
    , ("ECDH", "secp384r1")
    , ("ECDH", "secp256k1")
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
    it "keyAgreement derives different keys for different salts" $ do
        rng <- rngInit "system"
        privKeyA <- privKeyCreate pk param rng
        privKeyB <- privKeyCreate pk param rng
        pubKeyB <- keyAgreementExportPublic privKeyB
        kaA <- keyAgreementCreate privKeyA "HKDF(SHA-256)"
        sharedKeyA1 <- keyAgreement kaA pubKeyB "salt-1"
        sharedKeyA2 <- keyAgreement kaA pubKeyB "salt-2"
        sharedKeyA1 `shouldNotBe` sharedKeyA2
        pass
    it "keyAgreement output size matches keyAgreementSize" $ do
        rng <- rngInit "system"
        privKeyA <- privKeyCreate pk param rng
        privKeyB <- privKeyCreate pk param rng
        pubKeyB <- keyAgreementExportPublic privKeyB
        kaA <- keyAgreementCreate privKeyA "HKDF(SHA-256)"
        kaSize <- keyAgreementSize kaA
        sharedKey <- keyAgreement kaA pubKeyB "salt"
        ByteString.length sharedKey `shouldBe` kaSize
        pass

kdfs :: [ByteString]
kdfs =
    [ "HKDF(SHA-256)"
    , "HKDF(SHA-384)"
    , "KDF2(SHA-256)"
    ]

type PkSpec = (ByteString, ByteString)
type KdfSpec = ByteString

cases :: [(PkSpec, KdfSpec)]
cases =
    [ (pkSpec, kdf)
    | pkSpec <- pks
    , kdf <- kdfs
    ]

caseTestName :: (PkSpec, KdfSpec) -> String
caseTestName ((pk, param), kdf) =
    chars $ pk <> paramPart <> " / " <> kdf
  where
    paramPart
        | param == "" = ""
        | otherwise   = " " <> param

spec_keyAgreement_matrix :: Spec
spec_keyAgreement_matrix = do
    forM_ cases $ \ ((pk, param), kdf) ->
        it ("keyAgreement " <> caseTestName ((pk, param), kdf)) $ do
            rng <- rngInit "system"
            privKeyA <- privKeyCreate pk param rng
            pubKeyA <- keyAgreementExportPublic privKeyA
            privKeyB <- privKeyCreate pk param rng
            pubKeyB <- keyAgreementExportPublic privKeyB
            kaA <- keyAgreementCreate privKeyA kdf
            kaB <- keyAgreementCreate privKeyB kdf
            sharedKeyA <- keyAgreement kaA pubKeyB "salt"
            sharedKeyB <- keyAgreement kaB pubKeyA "salt"
            sharedKeyA `shouldBe` sharedKeyB
            pass
