{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.Version (tests) where

import           Botan.Low.Version
import           Test.Tasty
import           Test.Tasty.QuickCheck

tests :: TestTree
tests = testGroup "Test.Botan.Low.Version" [
      testProperty "prop_ffiSupportsItsOwnVersion" prop_ffiSupportsItsOwnVersion
    ]

prop_ffiSupportsItsOwnVersion :: Property
prop_ffiSupportsItsOwnVersion = once $ ioProperty $ do
    version <- botanFFIAPIVersion
    supports <- botanFFISupportsAPI version
    pure $
      counterexample ("version: " <> show version)
      supports
