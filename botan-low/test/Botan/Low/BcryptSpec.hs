module Main where

import Test.Prelude

import Botan.Low.RNG
import Botan.Low.Bcrypt

password :: ByteString
password = "Fee fi fo fum!"

factor = 12

main :: IO ()
main = hspec $ do
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