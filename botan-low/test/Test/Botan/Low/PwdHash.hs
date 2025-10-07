{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.PwdHash (
    tests
    -- * Test parameters
  , generateTestParams
  ) where

import           Botan.Low.Error
import           Botan.Low.Hash
import           Botan.Low.MAC
import           Botan.Low.PwdHash
import           Control.Exception
import           Data.ByteString
import           Test.Prelude
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Tasty.HUnit

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_pwdhash" spec_pwdhash
    pure $ testGroup "Test.Botan.Low.PwdHash" [
        testCase "test_pwdhash_PBKDF2_badSchemeName" $
          test_pwdhash_PBKDF2_badSchemeName False
      , testCase "test_pwdhashTimed_PBKDF2_badSchemeName" $
          test_pwdhash_PBKDF2_badSchemeName True
      , specs
      ]

{-------------------------------------------------------------------------------
  Test parameters
-------------------------------------------------------------------------------}

data TestParams = TestParams {
    testPbkdfName        :: PBKDFName
  , testIterationsParam  :: Int
  , testParallelismParam :: Int
  , testMemoryParam      :: Int
  }
  deriving stock (Show, Eq)

-- | Parameters for testing
--
-- These are generated using 'generateTestParams'.
testParams :: [TestParams]
testParams =
    [ TestParams "PBKDF2(SHA-256)"       436000   0 0
    , TestParams "PBKDF2(SHA-512)"       258000   0 0
    , TestParams "Scrypt"                8        1 65536
    , TestParams "Argon2d"               1        1 262144
    , TestParams "Argon2i"               1        1 262144
    , TestParams "Argon2id"              1        1 262144
    , TestParams "Bcrypt-PBKDF"          92       0 0
    , TestParams "OpenPGP-S2K(SHA-384)"  65011712 0 0
    ]

-- | Schemes for testing
testPbkdfs :: [PBKDFName]
testPbkdfs = [
      -- PBKDF2
      pbkdf2 SHA256
    , pbkdf2 SHA512
      -- Scrypt
    , Scrypt
      -- Argon
    , Argon2d
    , Argon2i
    , Argon2id
      -- Bcrypt
    , Bcrypt_PBKDF
      -- OpenPGP S2K
    , openPGP_S2K SHA384
    ]

-- | Generate test parameters using 'tuneParams' on schemes listed in
-- 'testPbkdfs'.
--
-- NOTE: the test parameters can change per invocation, but theys should be
-- roughly similar.
generateTestParams :: IO [TestParams]
generateTestParams = forM testPbkdfs tuneParams

-- | Tune parameters for a given scheme
tuneParams :: PBKDFName -> IO TestParams
tuneParams name = do
    (iterations, parallelism, memory, _) <- pwdhashTimed name 200 64 passphrase salt
    pure $ TestParams name iterations parallelism memory

passphrase :: ByteString
passphrase = "Fee fi fo fum!"

salt :: ByteString
salt = "salt"

{-------------------------------------------------------------------------------
  Tests
-------------------------------------------------------------------------------}

-- | Test that using 'pwdhash' or 'pwdhashTimed' with bad scheme names results
-- in errors.
test_pwdhash_PBKDF2_badSchemeName :: Bool -> Assertion
test_pwdhash_PBKDF2_badSchemeName useTimed = do
    -- PBKDF2
    go PBKDF2 >>= \case
      Left BadParameterException{} -> pure ()
      Right{} -> assertFailure "got success, but expected BadParameterException"
    go (pbkdf2 HMAC) >>= \case
      Left NotImplementedException{} -> pure ()
      Right{} -> assertFailure "got success, but expected NotImplementedException"
    go (pbkdf2 $ hmac "2") >>= \case
      Left NotImplementedException{} -> pure ()
      Right{} -> assertFailure "got success, but expected NotImplementedException"
    go (pbkdf2 $ hmac "SHA-256") >>= \case
      Left SomeException{} -> assertFailure "got SomeException, but expected success"
      Right{} -> pure ()
    go (pbkdf2 $ gmac "SHA-256") >>= \case
      Left NotImplementedException{} -> pure ()
      Right{} -> assertFailure "got success, but expected NotImplementedException"
    go (pbkdf2 "SHA-256") >>= \case
      Left SomeException{} -> assertFailure "got SomeException, but expected success"
      Right{} -> pure ()

    -- OpenPGP S2K
    go OpenPGP_S2K >>= \case
      Left NotImplementedException{} -> pure ()
      Right{} -> assertFailure "got success, but expected NotImplementedException"
    go (openPGP_S2K "2") >>= \case
      Left NotImplementedException{} -> pure ()
      Right{} -> assertFailure "got success, but expected NotImplementedException"
    go (openPGP_S2K "SHA-384") >>= \case
      Left SomeException{} -> assertFailure "got SomeException, but expected success"
      Right{} -> pure ()
  where
    go schemeName
      | useTimed = try $
          void $ pwdhashTimed schemeName 200 64 passphrase salt
      | otherwise = try $
          void $ pwdhash schemeName 1 0 0 64 passphrase salt

-- | Run 'pwdhash' and 'pwdhashTimed', and check that their outputs match.
spec_pwdhash :: Spec
spec_pwdhash =
    testSuite testParams (\(TestParams n _ _ _) -> chars n) $
    \params@(TestParams pbkdf _ _ _) -> do
      it "pwdhash" $ do
          _ <- pwdhashCorrected params
          pass
      it "pwdhashTimed" $ do
          _timed@(iterations', parallelism', memory', pwd) <- pwdhashTimed pbkdf 200 64 passphrase salt
          pwd' <- pwdhashCorrected (TestParams pbkdf iterations' parallelism' memory')
          pwd `shouldBe` pwd'
          pass
  where
    -- For @Argon2@ and @Scrypt@ algorithms, 'botan_pwdhash_timed' returns
    -- parameters in a different order than what 'botan_pwdhash' takes in.
    pwdhashCorrected :: TestParams -> IO ByteString
    pwdhashCorrected (TestParams pbkdf iterations parallelism memory) =
        case pbkdf of
              "Scrypt"                        -> pwdhash pbkdf memory     iterations  parallelism 64 passphrase salt
              _ | "Argon" `isPrefixOf` pbkdf  -> pwdhash pbkdf memory     iterations  parallelism 64 passphrase salt
              _                               -> pwdhash pbkdf iterations parallelism memory      64 passphrase salt
