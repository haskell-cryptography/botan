module Main where

import Test.Prelude

import Botan.Low.ZFEC

k :: Int
k = 5

n :: Int
n = 7

message :: ByteString
message = "Fee fi fo fum! I smell the blood of an Englishman!"

main :: IO ()
main = hspec $ do
    describe "zfecEncode" $ do
        it "encodes a message into shares" $ do
            shares <- zfecEncode k n message
            length shares `shouldBe` n
    describe "zfecDecodO" $ do
        it "recovers a message from enough shares" $ do
            shares <- zfecEncode k n message
            someShares <- take k <$> generate (shuffle shares)
            recoveredMessage <- zfecDecode k n someShares
            recoveredMessage `shouldBe` message
