{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.XOF (tests) where

import           Botan.Low.XOF
import           Control.Monad
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_xof" spec_xof
    pure $ testGroup "Test.Botan.Low.XOF" [
        specs
      ]

message :: ByteString
message = "Fee fi fo fum! I smell the blood of an Englishman!"

spec_xof :: Spec
spec_xof = testSuite allXOFs chars $ \ h -> do
    it "can initialize a XOF context" $ do
        _ctx <- xofInit h
        pass
    it "can copy the internal state" $ do
        ctx <- xofInit h
        -- Populate with state
        xofUpdate ctx message
        -- Copy and further populate the state
        ctx' <- xofCopyState ctx
        xofUpdate ctx' message
        d' <- xofOutput ctx' 4
        -- Further populate the original state equally
        xofUpdate ctx message
        d <- xofOutput ctx 4
        -- Check if both states match by comparing their digests
        d' `shouldBe` d
    it "has a name" $ do
        ctx <- xofInit h
        _name <- xofName ctx
        pass
    it "can clear all internal state" $ do
        ctx <- xofInit h
        -- Populate with state
        xofUpdate ctx message
        d <- xofOutput ctx 4
        -- Clear and repopulate with state
        xofClear ctx
        xofUpdate ctx message
        d' <- xofOutput ctx 4
        -- Check if states match after clearing
        d' `shouldBe` d
        pass
    it "can update the internal state with a single message block" $ do
        ctx <- xofInit h
        xofUpdate ctx message
        pass
    it "can update the internal state with multiple message blocks" $ do
        ctx <- xofInit h
        forM_ (splitBlocks 4 message) $ xofUpdate ctx
        pass
    it "can output a single digest block" $ do
        ctx <- xofInit h
        xofUpdate ctx message
        _d <- xofOutput ctx 4
        pass
    it "can output multiple digest blocks" $ do
        ctx <- xofInit h
        -- Populate with state
        xofUpdate ctx message
        -- Single digest block for reference
        ctx' <- xofCopyState ctx
        d' <- xofOutput ctx' 5
        -- Multiple digest blocks of the same accumulated length
        d1 <- xofOutput ctx 4
        d2 <- xofOutput ctx 1
        -- Check if XOF property for multiple digest blocks holds
        d1 <> d2 `shouldBe` d'
        pass
    it "accepts input after initialization" $ do
        ctx <- xofInit h
        b <- xofAcceptsInput ctx
        b `shouldBe` True
    it "accepts input after updating the internal state" $ do
        ctx <- xofInit h
        xofUpdate ctx message
        b <- xofAcceptsInput ctx
        b `shouldBe` True
    it "denies input after outputting a digest block" $ do
        ctx <- xofInit h
        xofUpdate ctx message
        _d <- xofOutput ctx 4
        b <- xofAcceptsInput ctx
        b `shouldBe` False
