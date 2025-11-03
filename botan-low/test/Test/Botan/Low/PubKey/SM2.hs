{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.PubKey.SM2 (tests) where

import           Botan.Low.MPI
import           Botan.Low.PubKey
import           Botan.Low.PubKey.SM2
import           Botan.Low.RNG
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_sm2" spec_sm2
    pure $ testGroup "Test.Botan.Low.PubKey.SM2" [
        specs
      ]

-- TODO: Consolidate
ecGroups :: [ByteString]
ecGroups =
    [ "secp160k1"
    ,  "secp160r1"
    ,  "secp160r2"
    ,  "secp192k1"
    ,  "secp192r1"
    ,  "secp224k1"
    ,  "secp224r1"
    ,  "secp256k1"
    ,  "secp256r1"
    ,  "secp384r1"
    ,  "secp521r1"
    ,  "brainpool160r1"
    ,  "brainpool192r1"
    ,  "brainpool224r1"
    ,  "brainpool256r1"
    ,  "brainpool320r1"
    ,  "brainpool384r1"
    ,  "brainpool512r1"
    ,  "x962_p192v2"
    ,  "x962_p192v3"
    ,  "x962_p239v1"
    ,  "x962_p239v2"
    ,  "x962_p239v3"
    ,  "gost_256A"
    ,  "gost_512A"
    ,  "frp256v1"
    ,  "sm2p256v1"
    ]

-- TODO: Consolidate
privKeyField :: PrivKey -> ByteString -> IO MP
privKeyField privKey field = do
    mp <- mpInit
    privKeyGetField mp privKey field
    return mp

-- TODO: Consolidate
pubKeyField :: PubKey -> ByteString -> IO MP
pubKeyField pubKey field = do
    mp <- mpInit
    pubKeyGetField mp pubKey field
    return mp

spec_sm2 :: Spec
spec_sm2 = testSuite ecGroups chars $ \ ecGroup -> do
    it "privKeyLoadSM2" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "SM2" ecGroup rng
        x <- privKeyField privKey "x"
        _loadedPrivKey <- privKeyLoadSM2 x ecGroup
        pass
    it "pubKeyLoadSM2" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "SM2" ecGroup rng
        pubKey <- privKeyExportPubKey privKey
        public_x <- pubKeyField pubKey "public_x"
        public_y <- pubKeyField pubKey "public_y"
        _loadedPubKey <- pubKeyLoadSM2 public_x public_y ecGroup
        pass
