{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.PubKey.Sign (tests) where

import           Botan.Low.PubKey
import           Botan.Low.PubKey.Sign
import           Botan.Low.RNG
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_sign" spec_sign
    pure $ testGroup "Test.Botan.Low.PubKey.Sign" [
        specs
      ]

ecGroup :: ByteString
ecGroup = "secp256r1"

dlGroup :: ByteString
dlGroup = "modp/ietf/1024"

sha :: ByteString
sha = "SHA-256"

-- TODO: More exhaustive testing in botan
-- pks :: [(PKName, PKParams, Padding)]
pks :: [(ByteString, ByteString, ByteString)]
pks =
    [ ("RSA", "2048", "EMSA4(SHA-256)") -- NOTE: It is not yet known if any of the others suppport EMSA
    , ("SM2", "sm2p256v1", "foo,SHA-256")
    , ("DSA", dlGroup, sha)
    , ("ECDSA", ecGroup, sha)
    , ("ECKCDSA", ecGroup, sha)
    , ("ECGDSA", ecGroup, sha)
    , ("GOST-34.10", ecGroup, sha)
    , ("Ed25519", "", "")
    , ("XMSS",  "XMSS-SHAKE_10_256", "")
    -- TODO: Dilithium-x-y
    , ("Dilithium", "", "")
    -- TODO: SPHINCS+
    ]

pkTestName :: (ByteString, ByteString, ByteString) -> String
pkTestName (pk, param, padding) = chars $ pk <> " " <> param <> " " <> padding

-- NOTE: Some algorithms do not support DER format encoding.
spec_sign :: Spec
spec_sign = testSuite pks pkTestName $ \ (pk, param, algo) -> do
    it "signCreate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        _ctx <- signCreate privKey algo StandardFormatSignature
        -- ctxDER <- signCreate privKey algo DERFormatSignature
        pass
    it "signOutputLength" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        ctx <- signCreate privKey algo StandardFormatSignature
        _sigLen <- signOutputLength ctx
        -- ctxDER <- signCreate privKey algo DERFormatSignature
        -- _ <- signOutputLength ctxDER
        pass
    it "signUpdate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        ctx <- signCreate privKey algo StandardFormatSignature
        signUpdate ctx "Fee fi fo fum!"
        pass
    it "signFinish" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        ctx <- signCreate privKey algo StandardFormatSignature
        signUpdate ctx "Fee fi fo fum!"
        _sig <- signFinish ctx rng
        pass
