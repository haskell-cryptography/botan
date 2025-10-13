module Main (main) where

import qualified Test.Botan.Low.PwdHash
import qualified Test.Botan.Low.SRP6
import qualified Test.Botan.Low.SRP6.Example
import           Test.Tasty
import           Test.Tasty.HUnit

main :: IO ()
main = tests >>= defaultMain

tests :: IO TestTree
tests = do
  pwdHashTests <- Test.Botan.Low.PwdHash.tests
  srp6Tests <- Test.Botan.Low.SRP6.tests
  pure $ testGroup "botan-low" [
      pwdHashTests
    , srp6Tests
    , testGroup "Test.Botan.Low.SRP6.Example" [
          testCase "example" Test.Botan.Low.SRP6.Example.main
        ]
    ]
