module Botan.Low.ZFECSpec
( spec
) where

import Test.Prelude

import Botan.Low.ZFEC

k :: Int
k = 5

n :: Int
n = 7

message :: ByteString
message = "Fee fi fo fum! I smell the blood of an Englishman!"

spec :: Spec
spec = do
    describe "zfecEncodeIO" $ do
        it "encodes a message into shares" $ do
            shares <- zfecEncodeIO k n message
            length shares `shouldBe` n
    describe "zfecDecodeIO" $ do
        it "recovers a message from enough shares" $ do
            shares <- zfecEncodeIO k n message
            someShares <- take k <$> generate (shuffle shares)
            recoveredMessage <- zfecDecodeIO k n someShares
            recoveredMessage `shouldBe` message
