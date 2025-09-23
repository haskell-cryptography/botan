module Main (main) where

import           Test.Prelude

import qualified Data.ByteString as ByteString

import           Botan.Low.RNG

rngs :: [RNGType]
rngs =
    [ SystemRNG
    , UserRNG
    , UserThreadsafeRNG
    , RDRandRNG -- NOTES: Not available on all processors
    ]

main :: IO ()
main = hspec $ do
    it "systemRNGGet" $ do
        bs <- systemRNGGet 8
        ByteString.length bs `shouldBe` 8
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
