{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.SRP6 (
    tests
  ) where

import           Botan.Low.Hash
import           Botan.Low.PubKey
import           Botan.Low.RNG
import           Botan.Low.SRP6
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.HSpec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_srp6" spec_srp6
    pure $ testGroup "Test.Botan.Low.SRP6" [
        specs
      ]

username :: ByteString
username = "username"

password :: ByteString
password = "password"

salt :: ByteString
salt = "saltsaltsaltsalt"

-- NOTE: Consolidate with DLGroup
groupIds :: [DLGroupName]
groupIds =
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

-- TODO: Test which hashes work
hashId :: HashName
hashId = "SHA-256"

spec_srp6 :: Spec
spec_srp6 = testSuite groupIds chars $ \ groupId -> do
    it "can negotiate a shared secret" $ do
        rng <- rngInit "system"
        verifier <- srp6GenerateVerifier username password salt groupId hashId
        ctx <- srp6ServerSessionInit
        b <- srp6ServerSessionStep1 ctx verifier groupId hashId rng
        (a,sharedSecret) <- srp6ClientAgree username password groupId hashId salt b rng
        sharedSecret' <- srp6ServerSessionStep2 ctx groupId a
        sharedSecret `shouldBe` sharedSecret'
        pass
