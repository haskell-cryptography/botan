{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.Utility (tests) where

import           Botan.Low.Utility
import           Data.ByteString as BS
import           Data.Text
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_utility" spec_utility
    pure $ testGroup "Test.Botan.Low.Utility" [
        specs
      ]

message :: ByteString
message = "Fee fi fo fum!"

hexMessage :: Text
hexMessage = "46656520666920666F2066756D21"

base64Message :: Text
base64Message = "RmVlIGZpIGZvIGZ1bSE="

-- hexUpperMessage

spec_utility :: Spec
spec_utility = do
    it "constantTimeCompare" $ do
        equal <- constantTimeCompare "compare me" "compare me" (BS.length "compare me")
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
    it "base64Encode" $ do
        base64 <- base64Encode message
        base64 `shouldBe` base64Message
        pass
    it "base64Encode" $ do
        base64 <- base64Encode message
        base64 `shouldBe` base64Message
        pass
    it "base64Encode" $ do
        base64 <- base64Encode message
        base64 `shouldBe` base64Message
        pass
