{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.KeyWrap (tests) where

import           Botan.Low.BlockCipher
import           Botan.Low.KeyWrap
import           Botan.Low.RNG
import           Data.ByteString
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_keywrap" spec_keywrap
    pure $ testGroup "Test.Botan.Low.KeyWrap" [
        specs
      ]
kwKey :: ByteString
kwKey = "This key *must* be a multiple of 8 bytes"

kwpKey :: ByteString
kwpKey = "Fee fi fo fum! I smell the blood of an Englishman!"

spec_keywrap :: Spec
spec_keywrap = testSuite blockCipher128s chars $ \ algo -> do
    it "nistKeyWrapEncode" $ do
        (_,keklen,_) <- blockCipherGetKeyspec =<< blockCipherInit algo
        kek <- systemRNGGet keklen
        _wrappedKey <- nistKeyWrapEncode algo 0 kwKey kek
        pass
    it "nistKeyWrapDecode" $ do
        (_,keklen,_) <- blockCipherGetKeyspec =<< blockCipherInit algo
        kek <- systemRNGGet keklen
        wrappedKey <- nistKeyWrapEncode algo 0 kwKey kek
        unwrappedKey <- nistKeyWrapDecode algo 0 wrappedKey kek
        unwrappedKey `shouldBe` kwKey
        pass
    it "nistKeyWrapEncode padded" $ do
        (_,keklen,_) <- blockCipherGetKeyspec =<< blockCipherInit algo
        kek <- systemRNGGet keklen
        _wrappedKey <- nistKeyWrapEncode algo 1 kwpKey kek
        pass
    it "nistKeyWrapDecode padded" $ do
        (_,keklen,_) <- blockCipherGetKeyspec =<< blockCipherInit algo
        kek <- systemRNGGet keklen
        wrappedKey <- nistKeyWrapEncode algo 1 kwpKey kek
        unwrappedKey <- nistKeyWrapDecode algo 1 wrappedKey kek
        unwrappedKey `shouldBe` kwpKey
        pass
