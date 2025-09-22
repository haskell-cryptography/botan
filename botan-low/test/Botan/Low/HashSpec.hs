module Main where

import           Test.Prelude

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Char8 as Char8

import           Botan.Bindings.Hash
import           Botan.Low.Hash

message = "Fee fi fo fum! I smell the blood of an Englishman!"

main :: IO ()
main = hspec $ testSuite allHashes chars $ \ h -> do
    it "can initialize a hash context" $ do
        ctx <- hashInit h
        pass
    it "has a name" $ do
        ctx <- hashInit h
        name <- hashName ctx
        pass
    it "has an output length" $ do
        ctx <- hashInit h
        olen <- hashOutputLength ctx
        pass
    it "can copy the internal state" $ do
        ctx <- hashInit h
        -- TODO: Populate with state and actually prove
        ctx' <- hashCopyState ctx
        pass
    it "can clear all internal state" $ do
        ctx <- hashInit h
        -- TODO: Populate with state and actually prove
        hashClear ctx
        pass
    it "can update the internal state with a single message block" $ do
        ctx <- hashInit h
        hashUpdate ctx message
        pass
    it "can update the internal state with multiple message blocks" $ do
        ctx <- hashInit h
        forM_ (splitBlocks 4 message) $ hashUpdate ctx
        pass
    it "can finalize a digest" $ do
        ctx <- hashInit h
        hashUpdate ctx message
        d <- hashFinal ctx
        pass
