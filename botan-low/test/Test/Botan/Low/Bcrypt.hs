{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.Bcrypt (tests) where

import           Botan.Low.Bcrypt
import           Botan.Low.RNG
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_bcrypt" spec_bcrypt
    pure $ testGroup "Test.Botan.Low.Bcrypt" [
        specs
      ]

password :: ByteString
password = "Fee fi fo fum!"

factor :: BcryptWorkFactor
factor = 12

spec_bcrypt :: Spec
spec_bcrypt = do
    describe "bcryptGenerate" $ do
        it "generates a bcrypt hash" $ do
            rng <- rngInit "user-threadsafe"
            _ <- bcryptGenerate password rng factor
            pass
    describe "bcryptIsValid" $ do
        it "validates a bcrypt hash" $ do
            rng <- rngInit "user-threadsafe"
            h <- bcryptGenerate password rng factor
            valid <- bcryptIsValid password h
            valid `shouldBe` True
