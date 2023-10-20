module Botan.Low.RNGSpec
( spec
, rngs
) where

import Test.Prelude

import qualified Data.ByteString as ByteString

import Botan.Bindings.RNG (RNGName(..))
import Botan.Low.RNG

rngs :: [RNGName]
rngs =
    [ "system"
    , "user"
    , "user-threadsafe"
    , "rdrand" -- NOTES: Not available on all processors
    ]
    
spec :: Spec
spec = do
    it "systemRNGGet" $ do
        bs <- systemRNGGet 8
        ByteString.length bs `shouldBe` 8
    testSuite rngs chars $ \ rng -> do
        it "rngInit" $ do
            ctx <- rngInit rng
            pass
        it "rngGet" $ do
            ctx <- rngInit rng
            bs <- rngGet 8 ctx
            pass
        it "rngReseed" $ do
            ctx <- rngInit rng
            rngReseed ctx 64
            pass
        it "rngReseedFromRNGCtx" $ do
            ctx <- rngInit rng
            source <- rngInit rng
            rngReseedFromRNGCtx ctx source 64
            pass
        it "rngAddEntropy" $ do
            ctx <- rngInit rng
            rngAddEntropy ctx "Fee fi fo fum!"
            pass
