{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.PubKey.DSA (tests) where

import           Botan.Low.MPI
import           Botan.Low.PubKey
import           Botan.Low.PubKey.DSA
import           Botan.Low.RNG
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_dsa" spec_dsa
    pure $ testGroup "Test.Botan.Low.PubKey.DSA" [
        specs
        -- TODO: temporarily disabled because the test suite fails. See issue
        -- #33.
      | False
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

-- TODO: Consolidate
pubKeyField :: PubKey -> ByteString -> IO MP
pubKeyField pubKey field = do
    mp <- mpInit
    pubKeyGetField mp pubKey field
    return mp

-- NOTE: Fields are
--  DLGroup PubKey: p, q, g, y
--  DLGroup PrivKey: p, q, g, x, y

-- NOTE: Fails on pubKeyLoadDSA for srp curves (but not privKeyLoadDSA?)
spec_dsa :: Spec
spec_dsa = testSuite dlGroups chars $ \ dlGroup -> do
    it "privKeyLoadDSA" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "DH" dlGroup rng
        p <- privKeyField privKey "p"
        q <- privKeyField privKey "q"
        g <- privKeyField privKey "g"
        x <- privKeyField privKey "x"
        _loadedKey <- privKeyLoadDSA p q g x
        pass
    it "pubKeyLoadDSA" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "DH" dlGroup rng
        pubKey <- privKeyExportPubKey privKey
        p <- pubKeyField pubKey "p"
        q <- pubKeyField pubKey "q"
        g <- pubKeyField pubKey "g"
        y <- pubKeyField pubKey "y"
        _loadedKey <- pubKeyLoadDSA p q g y
        pass
