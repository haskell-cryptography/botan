{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.PubKey.Verify (tests) where

import           Botan.Low.MPI
import           Botan.Low.PubKey
import           Botan.Low.PubKey.ECDSA
import           Botan.Low.PubKey.Sign
import           Botan.Low.PubKey.Verify
import           Botan.Low.RNG
import           Control.Exception (bracket)
import           Data.ByteString
import qualified Data.ByteString as BS
import qualified Data.ByteString.Base64.URL as Base64URL
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_verify" spec_verify
    es256 <- testSpec "spec_es256" spec_es256
    pure $ testGroup "Test.Botan.Low.PubKey.Verify" [
        specs
      , es256
      ]

-- TODO: Consolidate test values with SignSpec

ecGroup :: ByteString
ecGroup = "secp256r1"

dlGroup :: ByteString
dlGroup = "modp/ietf/1024"

sha :: ByteString
sha = "SHA-256"

pks :: [(ByteString, ByteString, ByteString)]
pks =
    [ ("RSA", "2048", "EMSA4(SHA-256)")
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

-- SEE: signFinish for more details
-- NOTE: Verified signatures pass for all algorithms in standard format
--  Fails for only 4 in DER format via BadParameterException, but for important algs:
--  RSA, Ed25519, XMSS, Dilithium
--  The context and signatures are created without throwing any errors,
--  compared to earlier which failed to even create a context, but
--  it is possible that I need to figure out correct parameters and I doubt
--  it is coincidence that the EMSA4 / empty params are the ones that are failing.
--  Yet, it works for standard format.

spec_verify :: Spec
spec_verify = testSuite pks pkTestName $ \ (pk, param, algo) -> do
    it "verifyCreate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        _ctx <- verifyCreate pubKey algo StandardFormatSignature
        pass
    it "verifyUpdate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        ctx <- verifyCreate pubKey algo StandardFormatSignature
        verifyUpdate ctx "Fee fi fo fum!"
        pass
    it "verifyFinish" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        signCtx <- signCreate privKey algo StandardFormatSignature
        signUpdate signCtx "Fee fi fo fum!"
        sig <- signFinish signCtx rng
        -- print $ "Siglen is: " <> show (ByteString.length sig)
        print sig
        pubKey <- privKeyExportPubKey privKey
        verifyCtx <- verifyCreate pubKey algo StandardFormatSignature
        verifyUpdate verifyCtx "Fee fi fo fum!"
        verified <- verifyFinish verifyCtx sig
        verified `shouldBe` True
        pass

-- This is an example based on https://www.rfc-editor.org/rfc/rfc7515.html#appendix-A.3
spec_es256 :: Spec
spec_es256 = it "loads a P-256 public key and verifies an ES256 signature" $ do
    -- Public coordinates from the RFC JWK
    xBytes <- either fail pure $ Base64URL.decodeUnpadded "f83OJ3D2xF1Bg8vub9tLe1gHMzV76e8Tus9uPHvRVEU"
    yBytes <- either fail pure $ Base64URL.decodeUnpadded "x_FEzRu9m36HLN_tue659LNpXW6pCyStikYjKIWI5a0"

    let
        -- input from the RFC
        input = "eyJhbGciOiJFUzI1NiJ9."
            <> "eyJpc3MiOiJqb2UiLA0KICJleHAiOjEzMDA4MTkzODAsDQogImh0dHA6Ly9leGFt"
            <> "cGxlLmNvbS9pc19yb290Ijp0cnVlfQ"
        -- The generated signature from the RFC, it's the concatenated R || S.
        -- (We could compute it here using the private key `d` on the RFC and the input but we omit it for brevity)
        signature = BS.pack $
                [ 14, 209, 33, 83, 121, 99, 108, 72, 60, 47, 127, 21, 88
                , 7, 212, 2, 163, 178, 40, 3, 58, 249, 124, 126, 23, 129
                , 154, 195, 22, 158, 166, 101 ] <>
                [ 197, 10, 7, 211, 140, 60, 112, 229, 216, 241, 45, 175
                , 8, 74, 84, 128, 166, 101, 144, 197, 242, 147, 80, 154
                , 143, 63, 127, 138, 131, 163, 84, 213
                ]
    verifyES256 xBytes yBytes input signature `shouldReturn` True
    verifyES256 xBytes yBytes (input <> "x") signature `shouldReturn` False
  where
    -- ES256 is really just a convention to combine the P-256 curve, the SHA-256 hash and the R || S signature
    verifyES256 :: ByteString -> ByteString -> ByteString -> ByteString -> IO Bool
    verifyES256 xBytes yBytes message signature =
        -- brackets are used to ensure the allocated objects from botan are released
        bracket mpInit mpDestroy $ \x ->
            bracket mpInit mpDestroy $ \y -> do
                -- Awkard interface as mentioned in the API docs but this sets x and y
                mpFromBin x xBytes
                mpFromBin y yBytes
                -- secp256r1 is p-256
                bracket (pubKeyLoadECDSA x y "secp256r1") pubKeyDestroy $ \pubKey ->
                    -- StandardFormatSignature is R || S
                    bracket (verifyCreate pubKey "SHA-256" StandardFormatSignature)
                        verifyDestroy $ \ctx -> do
                            verifyUpdate ctx message
                            verifyFinish ctx signature
