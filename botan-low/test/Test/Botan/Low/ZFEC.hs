{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.ZFEC (tests) where

import           Botan.Low.ZFEC
import           Data.ByteString (ByteString)
import           Test.Hspec
import           Test.QuickCheck
import           Test.Tasty
import           Test.Tasty.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_zfec" spec_zfec
    pure $ testGroup "Test.Botan.Low.ZFEC" [
        specs
      ]
k :: Int
k = 5

n :: Int
n = 7

message :: ByteString
message = "Fee fi fo fum! I smell the blood of an Englishman!"

spec_zfec :: Spec
spec_zfec = do
    describe "zfecEncode" $ do
        it "encodes a message into shares" $ do
            shares <- zfecEncode k n message
            length shares `shouldBe` n
    describe "zfecDecode" $ do
        it "recovers a message from enough shares" $ do
            shares <- zfecEncode k n message
            someShares <- take k <$> generate (shuffle shares)
            recoveredMessage <- zfecDecode k n someShares
            recoveredMessage `shouldBe` message
