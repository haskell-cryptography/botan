{-# LANGUAGE OverloadedStrings #-}

module Test.Util.HSpec (
    testSuite
  , chars
  , pass
  ) where

import           Control.Monad
import           Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as BSC
import           Test.Hspec

testSuite :: [t] -> (t -> String) -> (t -> SpecWith a) -> SpecWith a
testSuite tests testName runTest = forM_ tests $ \ test -> describe (testName test) (runTest test)

chars :: ByteString -> [Char]
chars = BSC.unpack

-- An alternative to void?
--  _ <- performSomeAction
--  pass
pass :: (Monad m) => m ()
pass = return ()
