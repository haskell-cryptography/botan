{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.TOTP (tests) where

import           Botan.Low.TOTP
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_totp" spec_totp
    pure $ testGroup "Test.Botan.Low.TOTP" [
        specs
      ]

key :: ByteString
key = "Fee fi fo fum"

timestep :: TOTPTimestep
timestep = 60

timestamp :: TOTPTimestamp
timestamp = 1698109812

-- TODO: More thorough testing
spec_totp :: Spec
spec_totp = testSuite totpHashes chars $ \ h -> do
    it "totpInit" $ do
        _ctx <- totpInit key h 6 timestep
        pass
    it "totpGenerate" $ do
        ctx <- totpInit key h 6 timestep
        _code <- totpGenerate ctx timestamp
        pass
    it "totpCheck" $ do
        ctx <- totpInit key h 6 timestep
        code <- totpGenerate ctx timestamp
        success <- totpCheck ctx code timestamp 0
        success `shouldBe` True
