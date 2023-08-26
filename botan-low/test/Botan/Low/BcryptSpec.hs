module Botan.Low.BcryptSpec
( spec
) where

import Test.Prelude

import Botan.Low.RNG
import Botan.Low.Bcrypt

password :: ByteString
password = "Fee fi fo fum!"

factor = 12

spec :: Spec
spec = do
    describe "bcryptGenerateIO" $ do
        it "generates a bcrypt hash" $ do
            rng <- rngCtxInitNameIO "user-threadsafe"
            _ <- bcryptGenerateIO password rng factor
            pass
    describe "bcryptIsValidIO" $ do
        it "validates a bcrypt hash" $ do
            rng <- rngCtxInitNameIO "user-threadsafe"
            h <- bcryptGenerateIO password rng factor
            valid <- bcryptIsValidIO password h
            valid `shouldBe` True