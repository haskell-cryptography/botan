module Main (main) where

import qualified Test.Botan.Low.PwdHash
import           Test.Tasty

main :: IO ()
main = tests >>= defaultMain

tests :: IO TestTree
tests = do
  pwdHashTests <- Test.Botan.Low.PwdHash.tests
  pure $ testGroup "botan-low" [
      pwdHashTests
    ]
