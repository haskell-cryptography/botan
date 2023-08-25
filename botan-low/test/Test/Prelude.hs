module Test.Prelude
( module Prelude
, module Test.Hspec
, module Test.QuickCheck
, module Control.Monad
, module Data.ByteString
, chars
, testSuite
, pass
) where

import Prelude

import Test.Hspec
import Test.QuickCheck

import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as Char8

chars :: ByteString -> [Char]
chars = Char8.unpack

-- describeText = describe . Text.unpack

-- describeBytes :: ByteString -> SpecWith a -> SpecWith a
-- describeBytes = describe . chars

testSuite :: [t2] -> (t2 -> String) -> (t2 -> SpecWith a) -> SpecWith a
testSuite tests testName runTest = forM_ tests $ \ test -> describe (testName test) (runTest test)

-- An alternative to void?
--  _ <- performSomeAction
--  pass
pass :: (Monad m) => m ()
pass = return ()
