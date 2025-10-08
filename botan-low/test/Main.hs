module Main (main) where

import qualified Test.Botan.Low.PwdHash
import qualified Test.Botan.Low.SRP6
import           Test.Tasty

main :: IO ()
main = tests >>= defaultMain

tests :: IO TestTree
tests = do
  pwdHashTests <- Test.Botan.Low.PwdHash.tests
  srp6Tests <- Test.Botan.Low.SRP6.tests
  pure $ testGroup "botan-low" [
      pwdHashTests
    , srp6Tests
    ]
