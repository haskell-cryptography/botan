module Main where

import Test.Prelude

import Botan.Low.BlockCipher

import Botan.Low.RNG

import Botan.Low.KeyWrap

kwKey :: ByteString
kwKey = "This key *must* be a multiple of 8 bytes"

kwpKey :: ByteString
kwpKey = "Fee fi fo fum! I smell the blood of an Englishman!"

main :: IO ()
main = hspec $ testSuite blockCipher128s chars $ \ algo -> do
    it "nistKeyWrapEncode" $ do
        (_,keklen,_) <- blockCipherGetKeyspec =<< blockCipherInit algo
        kek <- systemRNGGet keklen
        wrappedKey <- nistKeyWrapEncode algo 0 kwKey kek
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
        wrappedKey <- nistKeyWrapEncode algo 1 kwpKey kek
        pass
    it "nistKeyWrapDecode padded" $ do
        (_,keklen,_) <- blockCipherGetKeyspec =<< blockCipherInit algo
        kek <- systemRNGGet keklen
        wrappedKey <- nistKeyWrapEncode algo 1 kwpKey kek
        unwrappedKey <- nistKeyWrapDecode algo 1 wrappedKey kek
        unwrappedKey `shouldBe` kwpKey
        pass
