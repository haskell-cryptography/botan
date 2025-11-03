{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.PubKey.ElGamal (tests) where

import           Botan.Low.MPI
import           Botan.Low.PubKey
import           Botan.Low.PubKey.ElGamal
import           Botan.Low.RNG
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_elGamal" spec_elGamal
    pure $ testGroup "Test.Botan.Low.PubKey.ElGamal" [
        specs
      ]


-- TODO: Consolidate
dlGroups :: [ByteString]
dlGroups =
    [ "ffdhe/ietf/2048"
    , "ffdhe/ietf/3072"
    , "ffdhe/ietf/4096"
    , "ffdhe/ietf/6144"
    , "ffdhe/ietf/8192"
    , "modp/ietf/1024"
    , "modp/ietf/1536"
    , "modp/ietf/2048"
    , "modp/ietf/3072"
    , "modp/ietf/4096"
    , "modp/ietf/6144"
    , "modp/ietf/8192"
    , "modp/srp/1024"
    , "modp/srp/1536"
    , "modp/srp/2048"
    , "modp/srp/3072"
    , "modp/srp/4096"
    , "modp/srp/6144"
    , "modp/srp/8192"
    , "dsa/jce/1024"
    , "dsa/botan/2048"
    , "dsa/botan/3072"
    ]

-- TODO: Consolidate
privKeyField :: PrivKey -> ByteString -> IO MP
privKeyField privKey field = do
    mp <- mpInit
    privKeyGetField mp privKey field
    return mp

spec_elGamal :: Spec
spec_elGamal = testSuite dlGroups chars $ \ dlGroup -> do
    it "privKeyLoadELGamal" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "DH" dlGroup rng
        p <- privKeyField privKey "p"
        _q <- privKeyField privKey "q"
        g <- privKeyField privKey "g"
        x <- privKeyField privKey "x"
        _loadedKey <- privKeyLoadElGamal p g x
        pass
    it "pubKeyLoadELGamal" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "DH" dlGroup rng
        _pubKey <- privKeyExportPubKey privKey
        p <- privKeyField privKey "p"
        _q <- privKeyField privKey "q"
        g <- privKeyField privKey "g"
        y <- privKeyField privKey "y"
        _loadedKey <- pubKeyLoadElGamal p g y
        pass
