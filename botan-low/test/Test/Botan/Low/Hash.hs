{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.Hash (tests) where

import           Botan.Low.Hash
import           Control.Monad
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_hash" spec_hash
    pure $ testGroup "Test.Botan.Low.Hash" [
        specs
      ]

message :: ByteString
message = "Fee fi fo fum! I smell the blood of an Englishman!"

spec_hash :: Spec
spec_hash = testSuite allHashes chars $ \ h -> do
    it "can initialize a hash context" $ do
        _ctx <- hashInit h
        pass
    it "has a name" $ do
        ctx <- hashInit h
        _name <- hashName ctx
        pass
    it "has an output length" $ do
        ctx <- hashInit h
        _olen <- hashOutputLength ctx
        pass
    it "can copy the internal state" $ do
        ctx <- hashInit h
        -- Populate with state
        hashUpdate ctx message
        -- Copy and further populate the state
        ctx' <- hashCopyState ctx
        hashUpdate ctx' message
        d' <- hashFinal ctx'
        -- Further populate the original state equally
        hashUpdate ctx message
        d <- hashFinal ctx
        -- Check if both states match by comparing their digests
        d' `shouldBe` d
    it "can clear all internal state" $ do
        ctx <- hashInit h
        -- Populate with state
        hashUpdate ctx message
        d <- hashFinal ctx
        -- Clear and repopulate with state
        hashClear ctx
        hashUpdate ctx message
        d' <- hashFinal ctx
        -- Check if states match after clearing
        d' `shouldBe` d
        pass
    it "can update the internal state with a single message block" $ do
        ctx <- hashInit h
        hashUpdate ctx message
        pass
    it "can update the internal state with multiple message blocks" $ do
        ctx <- hashInit h
        forM_ (splitBlocks 4 message) $ hashUpdate ctx
        pass
    it "can finalize a digest" $ do
        ctx <- hashInit h
        hashUpdate ctx message
        _d <- hashFinal ctx
        pass
