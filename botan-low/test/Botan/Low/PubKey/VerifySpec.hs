module Botan.Low.PubKey.VerifySpec
( spec
) where

import Test.Prelude

import qualified Data.ByteString as ByteString

import Botan.Low.PubKey
import Botan.Low.PubKey.Sign
import Botan.Low.PubKey.Verify
import Botan.Low.RNG

-- TODO: Consolidate test values with SignSpec

ecGroup :: ByteString
ecGroup = "secp256r1"

dlGroup :: ByteString
dlGroup = "modp/ietf/1024"

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

spec :: Spec
spec = testSuite pks pkTestName $ \ (pk, param, algo) -> do
    it "verifyCreate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        ctx <- verifyCreate pubKey algo SigningNoFlags
        pass
    it "verifyUpdate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        pubKey <- privKeyExportPubKey privKey
        ctx <- verifyCreate pubKey algo SigningNoFlags
        verifyUpdate ctx "Fee fi fo fum!"
        pass
    it "verifyFinish" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        signCtx <- signCreate privKey algo SigningNoFlags
        signUpdate signCtx "Fee fi fo fum!"
        sig <- signFinish signCtx rng
        -- print $ "Siglen is: " <> show (ByteString.length sig)
        print sig
        pubKey <- privKeyExportPubKey privKey
        verifyCtx <- verifyCreate pubKey algo SigningNoFlags
        verifyUpdate verifyCtx "Fee fi fo fum!"
        verified <- verifyFinish verifyCtx sig
        verified `shouldBe` True
        pass
