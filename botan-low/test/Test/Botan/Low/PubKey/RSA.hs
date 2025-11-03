{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.PubKey.RSA (tests) where

import           Botan.Low.MPI
import           Botan.Low.PubKey
import           Botan.Low.PubKey.RSA
import           Botan.Low.RNG
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_rsa" spec_rsa
    pure $ testGroup "Test.Botan.Low.PubKey.RSA" [
        specs
      ]

rsaSizes :: [ByteString]
rsaSizes = [ "2048" ]

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

spec_rsa :: Spec
spec_rsa = testSuite rsaSizes chars $ \ rsaSize -> do
    it "privKeyLoadRSA" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "RSA" rsaSize rng
        p <- privKeyField privKey "p"
        q <- privKeyField privKey "q"
        e <- privKeyField privKey "e"
        _loadedKey <- privKeyLoadRSA p q e
        pass
    it "pubKeyLoadRSA" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "RSA" rsaSize rng
        pubKey <- privKeyExportPubKey privKey
        n <- pubKeyField pubKey "n"
        e <- pubKeyField pubKey "e"
        _loadedKey <- pubKeyLoadRSA n e
        pass
