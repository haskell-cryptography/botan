{-# LANGUAGE CPP               #-}
{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.RNG (tests) where

import           Botan.Low.RNG
import           Data.ByteString as BS
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_rng" spec_rng
    pure $ testGroup "Test.Botan.Low.RNG" [
        specs
      ]

rngs :: [RNGType]
rngs =
    [ SystemRNG
    , UserRNG
    , UserThreadsafeRNG
#if x86_64_HOST_ARCH
    , RDRandRNG -- NOTES: Not available on all processors
#endif
    ]

spec_rng :: Spec
spec_rng = do
    it "systemRNGGet" $ do
        bs <- systemRNGGet 8
        BS.length bs `shouldBe` 8
    testSuite rngs chars $ \ rng -> do
        it "rngInit" $ do
            _ctx <- rngInit rng
            pass
        it "rngGet" $ do
            ctx <- rngInit rng
            _bs <- rngGet ctx 8
            pass
        it "rngReseed" $ do
            ctx <- rngInit rng
            rngReseed ctx 64
            pass
        it "rngReseedFromRNGCtx" $ do
            ctx <- rngInit rng
            source <- rngInit rng
            rngReseedFromRNG ctx source 64
            pass
        it "rngAddEntropy" $ do
            ctx <- rngInit rng
            rngAddEntropy ctx "Fee fi fo fum!"
            pass
