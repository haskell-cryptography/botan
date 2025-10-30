{-# LANGUAGE OverloadedStrings #-}

module Test.Util.Hspec (
    testSuite
  , pass
  ) where

import           Control.Monad
import           Test.Hspec

testSuite :: [t] -> (t -> String) -> (t -> SpecWith a) -> SpecWith a
testSuite tests testName runTest = forM_ tests $ \ test -> describe (testName test) (runTest test)

-- An alternative to void?
--  _ <- performSomeAction
--  pass
pass :: (Monad m) => m ()
pass = return ()
