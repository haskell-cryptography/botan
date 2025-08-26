module Main where

import Test.Prelude

import Botan.Low.Utility

import qualified Data.ByteString as ByteString

message = "Fee fi fo fum!"

hexMessage = "46656520666920666F2066756D21"

base64Message = "RmVlIGZpIGZvIGZ1bSE="

-- hexUpperMessage

main :: IO ()
main = hspec $ do
    it "constantTimeCompare" $ do
        equal <- constantTimeCompare "compare me" "compare me" (ByteString.length "compare me")
        equal `shouldBe` True
        pass
    -- TODO:
    -- it "scrubMem" $ do
    --     pass
    it "hexEncode" $ do
        hex <- hexEncode message HexUpperCase
        hex `shouldBe` hexMessage
        pass
    it "hexDecode" $ do
        msg <- hexDecode hexMessage
        msg `shouldBe` message
        pass
    it "base64Encode" $ do
        base64 <- base64Encode message
        base64 `shouldBe` base64Message
        pass
    it "base64Decode" $ do
        msg <- base64Decode base64Message
        msg `shouldBe` message
        pass
