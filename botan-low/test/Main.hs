module Main (main) where

import qualified Test.Botan.Low.Bcrypt
import qualified Test.Botan.Low.BlockCipher
import qualified Test.Botan.Low.Cipher
import qualified Test.Botan.Low.FPE
import qualified Test.Botan.Low.Hash
import qualified Test.Botan.Low.HOTP
import qualified Test.Botan.Low.KDF
import qualified Test.Botan.Low.KeyWrap
import qualified Test.Botan.Low.MAC
import qualified Test.Botan.Low.MPI
import qualified Test.Botan.Low.PubKey
import qualified Test.Botan.Low.PubKey.Decrypt
import qualified Test.Botan.Low.PubKey.DH
import qualified Test.Botan.Low.PubKey.ECDH
import qualified Test.Botan.Low.PubKey.ECDSA
import qualified Test.Botan.Low.PubKey.Ed25519
import qualified Test.Botan.Low.PubKey.ElGamal
import qualified Test.Botan.Low.PubKey.KeyAgreement
import qualified Test.Botan.Low.PubKey.KeyEncapsulation
import qualified Test.Botan.Low.PubKey.RSA
import qualified Test.Botan.Low.PubKey.Sign
import qualified Test.Botan.Low.PubKey.SM2
import qualified Test.Botan.Low.PubKey.Verify
import qualified Test.Botan.Low.PubKey.X25519
import qualified Test.Botan.Low.PwdHash
import qualified Test.Botan.Low.RNG
import qualified Test.Botan.Low.SRP6
import qualified Test.Botan.Low.SRP6.Example
import qualified Test.Botan.Low.TOTP
import qualified Test.Botan.Low.Utility
import qualified Test.Botan.Low.X509
import qualified Test.Botan.Low.ZFEC
import           Test.Tasty
import           Test.Tasty.HUnit

main :: IO ()
main = tests >>= defaultMain

tests :: IO TestTree
tests = do
    bcryptTests <- Test.Botan.Low.Bcrypt.tests
    blockCipherTests <- Test.Botan.Low.BlockCipher.tests
    cipherTests <- Test.Botan.Low.Cipher.tests
    fpeTests <- Test.Botan.Low.FPE.tests
    hashTests <- Test.Botan.Low.Hash.tests
    hotpTests <- Test.Botan.Low.HOTP.tests
    kdfTests <- Test.Botan.Low.KDF.tests
    keyWrapTests <- Test.Botan.Low.KeyWrap.tests
    macTests <- Test.Botan.Low.MAC.tests
    mpiTests <- Test.Botan.Low.MPI.tests
    pubKeyTests <- Test.Botan.Low.PubKey.tests
    pubKeyDecryptTests <- Test.Botan.Low.PubKey.Decrypt.tests
    pubKeyDhTests <- Test.Botan.Low.PubKey.DH.tests
    pubKeyEcdhTests <- Test.Botan.Low.PubKey.ECDH.tests
    pubKeyEcdsaTests <- Test.Botan.Low.PubKey.ECDSA.tests
    pubKeyEd25519Tests <-  Test.Botan.Low.PubKey.Ed25519.tests
    pubKeyElGamalTests <- Test.Botan.Low.PubKey.ElGamal.tests
    pubKeyKeyAgreementTests <- Test.Botan.Low.PubKey.KeyAgreement.tests
    pubKeyKeyEncapsulationTests <- Test.Botan.Low.PubKey.KeyEncapsulation.tests
    pubKeyRsaTests <- Test.Botan.Low.PubKey.RSA.tests
    pubKeySignTests <- Test.Botan.Low.PubKey.Sign.tests
    pubKeySm2Tests <- Test.Botan.Low.PubKey.SM2.tests
    pubKeyVerifyTests <- Test.Botan.Low.PubKey.Verify.tests
    pubKeyX25519Tests <- Test.Botan.Low.PubKey.X25519.tests
    pwdHashTests <- Test.Botan.Low.PwdHash.tests
    rngTests <- Test.Botan.Low.RNG.tests
    srp6Tests <- Test.Botan.Low.SRP6.tests
    totpTests <- Test.Botan.Low.TOTP.tests
    utilityTests <- Test.Botan.Low.Utility.tests
    x509Tests <- Test.Botan.Low.X509.tests
    zfecTests <- Test.Botan.Low.ZFEC.tests
    pure $ testGroup "botan-low" [
        bcryptTests
      , blockCipherTests
      , cipherTests
      , fpeTests
      , hashTests
      , hotpTests
      , kdfTests
      , keyWrapTests
      , macTests
      , mpiTests
      , pubKeyTests
      , pubKeyDecryptTests
      , pubKeyDhTests
      , pubKeyEcdhTests
      , pubKeyEcdsaTests
      , pubKeyEd25519Tests
      , pubKeyElGamalTests
      , pubKeyKeyAgreementTests
      , pubKeyKeyEncapsulationTests
      , pubKeyRsaTests
      , pubKeySignTests
      , pubKeySm2Tests
      , pubKeyVerifyTests
      , pubKeyX25519Tests
      , pwdHashTests
      , rngTests
      , srp6Tests
      , testGroup "Test.Botan.Low.SRP6.Example" [
            testCase "example" Test.Botan.Low.SRP6.Example.main
          ]
      , totpTests
      , utilityTests
      , x509Tests
      , zfecTests
      ]
