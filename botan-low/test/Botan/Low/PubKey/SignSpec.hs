module Main where

import Test.Prelude

import Botan.Low.PubKey
import Botan.Low.PubKey.Sign
import Botan.Low.RNG

ecGroup :: ByteString
ecGroup = "secp256r1"

dlGroup :: ByteString
dlGroup = "modp/ietf/1024"

sha = "SHA-256"

-- NOTE: PEM vs DER - sometimes one causes an error, sometimes the other
-- EXAMPLE
--      pkSign rsa (EMSA $ EMSA4 (Cryptohash $ SHA2 SHA512) Nothing) PKExportPEM "Fee fi fo fum!"
-- yields
--      *** Exception: BadParameterException (-32) [("throwBotanIfNegative_",SrcLoc {srcLocPackage = "botan-low-0.0.1-inplace", srcLocModule = "Botan.Low.Remake", srcLocFile = "src/Botan/Low/Remake.hs", srcLocStartLine = 122, srcLocStartCol = 9, srcLocEndLine = 122, srcLocEndCol = 30})]
-- but changing to DER allows it to run?
--      pkSign rsa (EMSA $ EMSA4 (Cryptohash $ SHA2 SHA512) Nothing) PKExportDER "Fee fi fo fum!"
-- THIS IS IN CONTRAST TO THE TESTS WHICH WERE FAILING FOR DER?

-- MORE INVESTIGATIONS:
-- VIA BOTAN
{-
import Botan.RNG
import Botan.PubKey
import Botan.PubKey.Sign
ed <- newPrivKey Ed25519
rsa <- newPrivKey (RSA 2048)
msg = "Fee fi fo fum!"
der = PKExportDER
pem = PKExportPEM
noParam = XMSSEmptyParam
pkSign ed XMSSEmptyParam pem msg
-- *** Exception: BadParameterException (-32) [("throwBotanIfNegative_",SrcLoc {srcLocPackage = "botan-low-0.0.1-inplace", srcLocModule = "Botan.Low.Remake", srcLocFile = "src/Botan/Low/Remake.hs", srcLocStartLine = 122, srcLocStartCol = 9, srcLocEndLine = 122, srcLocEndCol = 30})]
pkSign ed noParam der msg
-- "q\203\147\203\248\128\152\DC3B\168\FS\140z\171\158\240\206\ACK\DC4:\243\238;\225\253OB\128\199\"v9\163\ENQ.\b\NUL\r\184\249\143\ETB\192\249\b/\188\145\157_k\219\226'\138\129\154k\GSE\191\135\b\SOH"
-}
-- `ed XMSSEmptyParam pem` should be equivalent to our `("Ed25519", "", "")` test case,

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

-- TODO: Test DER format
--  RSA 2048 EMSA4(SHA-256), Ed25519, XMSS XMSS-SHAKE_10_256, Dilithium
--  All fail to initialize a DER format sig context

main :: IO ()
main = hspec $ testSuite pks pkTestName $ \ (pk, param, algo) -> do
    it "signCreate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        ctx <- signCreate privKey algo SigningPEMFormatSignature
        -- ctxDER <- signCreate privKey algo SigningDERFormatSignature
        pass
    it "signOutputLength" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        ctx <- signCreate privKey algo SigningPEMFormatSignature
        sigLen <- signOutputLength ctx
        -- ctxDER <- signCreate privKey algo SigningDERFormatSignature
        -- _ <- signOutputLength ctxDER
        pass
    it "signUpdate" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        ctx <- signCreate privKey algo SigningPEMFormatSignature
        signUpdate ctx "Fee fi fo fum!"
        pass
    it "signFinish" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate pk param rng
        ctx <- signCreate privKey algo SigningPEMFormatSignature
        signUpdate ctx "Fee fi fo fum!"
        sig <- signFinish ctx rng
        pass
