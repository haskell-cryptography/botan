module Botan.Low.SRP6Spec
( spec
) where

import Test.Prelude

import Botan.Low.SRP6
import Botan.Low.RNG

username :: ByteString
username = "username"

password :: ByteString
password = "password"

salt :: ByteString
salt = "salt"

-- NOTE: DLGroup
groupIds :: [GroupId]
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

groupId :: GroupId
groupId = head groupIds

-- TODO: Test which hashes work
hashId :: HashId
hashId = "SHA-256"

spec :: Spec
spec = testSuite groupIds chars $ \ groupId -> do
    it "can negotiate a shared secret" $ do
        rng <- rngInit "system"
        verifier <- srp6GenerateVerifier username password salt groupId hashId
        ctx <- srp6ServerSessionInit
        b <- srp6ServerSessionStep1 ctx verifier groupId hashId rng
        (a,sharedSecret) <- srp6ClientAgree username password groupId hashId salt b rng
        sharedSecret' <- srp6ServerSessionStep2 ctx a
        sharedSecret `shouldBe` sharedSecret'
        pass
