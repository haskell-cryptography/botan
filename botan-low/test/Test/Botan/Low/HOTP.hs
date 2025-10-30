{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.HOTP (tests) where

import           Botan.Low.HOTP
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_HOTP" spec_HOTP
    pure $ testGroup "Test.Botan.Low.HOTP" [
        specs
      ]

key :: ByteString
key = "Fee fi fo fum"

counter :: HOTPCounter
counter = 12345

spec_HOTP :: Spec
spec_HOTP = testSuite hotpHashes chars $ \ h -> do
    it "hotpInit" $ do
        _ctx <- hotpInit key h 6
        pass
    it "hotpGenerate" $ do
        ctx <- hotpInit key h 6
        _code <- hotpGenerate ctx counter
        pass
    it "hotpCheck" $ do
        ctx <- hotpInit key h 6
        code <- hotpGenerate ctx counter
        (success,_next) <- hotpCheck ctx code counter 0
        success `shouldBe` True
