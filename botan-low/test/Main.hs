module Main (main) where

import qualified Test.Botan.Low.Bcrypt
import qualified Test.Botan.Low.BlockCipher
import qualified Test.Botan.Low.FPE
import qualified Test.Botan.Low.Hash
import qualified Test.Botan.Low.HOTP
import qualified Test.Botan.Low.KDF
import qualified Test.Botan.Low.KeyWrap
import qualified Test.Botan.Low.PwdHash
import qualified Test.Botan.Low.SRP6
import qualified Test.Botan.Low.SRP6.Example
import           Test.Tasty
import           Test.Tasty.HUnit

main :: IO ()
main = tests >>= defaultMain

tests :: IO TestTree
tests = do
    bcryptTests <- Test.Botan.Low.Bcrypt.tests
    blockCipherTests <- Test.Botan.Low.BlockCipher.tests
    fpeTests <- Test.Botan.Low.FPE.tests
    hashTests <- Test.Botan.Low.Hash.tests
    hotpTests <- Test.Botan.Low.HOTP.tests
    kdfTests <- Test.Botan.Low.KDF.tests
    keyWrapTests <- Test.Botan.Low.KeyWrap.tests
    pwdHashTests <- Test.Botan.Low.PwdHash.tests
    srp6Tests <- Test.Botan.Low.SRP6.tests
    pure $ testGroup "botan-low" [
        bcryptTests
      , blockCipherTests
      , fpeTests
      , hashTests
      , hotpTests
      , kdfTests
      , keyWrapTests
      , pwdHashTests
      , srp6Tests
      , testGroup "Test.Botan.Low.SRP6.Example" [
            testCase "example" Test.Botan.Low.SRP6.Example.main
          ]
      ]
