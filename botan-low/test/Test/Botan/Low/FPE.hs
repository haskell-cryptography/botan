{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.FPE (tests) where

import           Botan.Low.FPE
import           Botan.Low.MPI
import           Botan.Low.RNG
import           Control.Monad
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_fpe" spec_fpe
    pure $ testGroup "Test.Botan.Low.FPE" [
        specs
      ]

-- NOTE: FPE operations encrypt/decrypt integers less than n
nStr :: ByteString
nStr = "1000000000000"

key :: ByteString
key = "0000DEADBEEF0000"

rounds :: Int
rounds = 3

newRng :: IO RNG
newRng = rngInit "system"

newX :: MP -> IO MP
newX n = do
    x <- mpInit
    z <- mpInit
    mpSetFromInt z 0
    -- n <- mpInit
    -- mpSetFromStr n nStr
    rng <- newRng
    mpRandRange x rng z n
    return x

newFE1Ctx :: IO (MP, FPE)
newFE1Ctx = do
    n <- mpInit
    mpSetFromStr n nStr
    ctx <- fpeInitFE1 n key rounds FPENone
    return (n,ctx)

newFE1CtxCompatMode :: IO (MP, FPE)
newFE1CtxCompatMode = do
    n <- mpInit
    mpSetFromStr n nStr
    ctx <- fpeInitFE1 n key rounds FPEFE1CompatMode
    return (n,ctx)

spec_fpe :: Spec
spec_fpe = do
    describe "fpeInitFE1" $ do
        it "initializes an FE1 FPE context" $ do
            void newFE1Ctx
            pass
        it "initializes an FE1 FPE context in compat mode" $ (do
            void newFE1CtxCompatMode
            pass
            ) -- `shouldThrow` anyBotanException
    describe "fpeEncrypt" $ do
        it "performs format-preserving encryption" $ do
            (n,ctx) <- newFE1Ctx
            x <- newX n
            y <- mpCopy x
            fpeEncrypt ctx y ""
            isSame <- mpEqual x y
            isSame `shouldBe` False
            pass
        it "performs format-preserving encryption in compat mode" $ do
            (n,ctx) <- newFE1CtxCompatMode
            x <- newX n
            y <- mpCopy x
            fpeEncrypt ctx y ""
            isSame <- mpEqual x y
            isSame `shouldBe` False
            pass
    describe "fpeDecrypt" $ do
        it "performs format-preserving decryption" $ do
            (n,ctx) <- newFE1Ctx
            x <- newX n
            y <- mpCopy x
            fpeEncrypt ctx y ""
            z <- mpCopy y
            fpeDecrypt ctx z ""
            isSame <- mpEqual x z
            isSame `shouldBe` True
            pass
        it "performs format-preserving decryption in compat mode" $ do
            (n,ctx) <- newFE1CtxCompatMode
            x <- newX n
            y <- mpCopy x
            fpeEncrypt ctx y ""
            z <- mpCopy y
            fpeDecrypt ctx z ""
            isSame <- mpEqual x z
            isSame `shouldBe` True
            pass
