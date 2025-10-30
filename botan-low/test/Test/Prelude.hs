{-# LANGUAGE OverloadedStrings #-}

module Test.Prelude (
    module Prelude
  , module Test.Hspec
  , module Test.QuickCheck
  , module Control.Monad
  , module Data.ByteString
  , chars
  , splitBlocks
  , testSuite
  , ftestSuite
  , pass
  , anyBotanException
  ) where

import           Botan.Low.Error
import           Control.Exception
import           Control.Monad
import           Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Char8 as Char8
import           Prelude
import           Test.Hspec
import           Test.QuickCheck

chars :: ByteString -> [Char]
chars = Char8.unpack

splitBlocks :: Int -> ByteString -> [ByteString]
splitBlocks blockSize = go where
    go bytes =  case ByteString.splitAt blockSize bytes of
        (block,"")   -> [block]
        (block,rest) -> block : go rest

testSuite :: [t] -> (t -> String) -> (t -> SpecWith a) -> SpecWith a
testSuite tests testName runTest = forM_ tests $ \ test -> describe (testName test) (runTest test)

ftestSuite :: [t] -> (t -> String) -> (t -> SpecWith a) -> SpecWith a
ftestSuite tests testName runTest = focus (testSuite tests testName runTest)

-- An alternative to void?
--  _ <- performSomeAction
--  pass
pass :: (Monad m) => m ()
pass = return ()

anyBotanException :: Selector SomeBotanException
anyBotanException = const True
