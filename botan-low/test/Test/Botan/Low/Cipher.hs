{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-deprecations #-}

module Test.Botan.Low.Cipher (tests) where

import           Botan.Bindings.Version (botan_version_major,
                     botan_version_minor)
import           Botan.Low.Cipher
import           Botan.Low.RNG
import           Control.Monad
import           Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import           System.IO.Unsafe (unsafePerformIO)
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.ByteString
import           Test.Util.Hspec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_cipher" spec_cipher
    pure $ testGroup "Test.Botan.Low.Cipher" [
        specs
      ]

testModes :: [ByteString]
testModes = filter p (cipherModes ++ aeads)
  where
    p s
      -- TODO: also test "Lion" and "Cascade"
      | "Lion" `BS.isPrefixOf` s || "Cascade" `BS.isPrefixOf` s
      = False
      -- SIV and CCM have bugs on versions earlier than 3.5
      | unsafePerformIO botan_version_major == 3
      , unsafePerformIO botan_version_minor <= 4
      , "SIV" `BS.isSuffixOf` s || "CCM" `BS.isSuffixOf` s
      = False
      | otherwise
      = True

spec_cipher :: Spec
spec_cipher = testSuite testModes chars $ \ cipher -> do
    it "can initialize a cipher encryption context" $ do
        _ctx <- cipherInit cipher CipherEncrypt
        pass
    it "can initialize a cipher decryption context" $ do
        _ctx <- cipherInit cipher CipherDecrypt
        pass
    it "has a name" $ do
        ctx <- cipherInit cipher CipherEncrypt
        _name <- cipherName ctx
        -- name `shouldBe` bc -- Name expands to include default parameters - need to record
        pass
    it "has a key spec" $ do
        ctx <- cipherInit cipher CipherEncrypt
        (_,_,_) <- cipherGetKeyspec ctx
        pass
    it "can set the key" $ do
        ctx <- cipherInit cipher CipherEncrypt
        (_,mx,_) <- cipherGetKeyspec ctx
        k <- systemRNGGet mx
        cipherSetKey ctx k
        pass
    it "has a valid default nonce length" $ do
        ctx <- cipherInit cipher CipherEncrypt
        _nlen <- cipherGetDefaultNonceLength ctx
        pass
    it "can validate nonce length" $ do
        ctx <- cipherInit cipher CipherEncrypt
        nlen <- cipherGetDefaultNonceLength ctx
        defaultIsValid <- cipherValidNonceLength ctx nlen
        defaultIsValid `shouldBe` True
        -- NOTE: Some ciphers accept nonces of any length, eg SIV
        --  Others allow any length > 0, eg GCM
        --  Some have ranges
        --  Some have just 'if (length == 0) return false;' eg OCB
        --  Search C++ source for 'valid_nonce_length' to find them all
        -- zeroIsValid <- cipherValidNonceLength ctx 0
        -- zeroIsValid `shouldBe` False
        -- absurdlyLargeIsValid <- cipherValidNonceLength ctx maxBound
        -- absurdlyLargeIsValid `shouldBe` False
        pass
    it "can calculate output length" $ do
        ctx <- cipherInit cipher CipherEncrypt
        _olen <- cipherOutputLength ctx 1024
        pass
    -- NOTE: This check should be ae / aead only
    it "has a tag length" $ do
        ctx <- cipherInit cipher CipherEncrypt
        _ <- cipherGetTagLength ctx
        pass
    it "has an update graularity" $ do
        ctx <- cipherInit cipher CipherEncrypt
        _ <- cipherGetUpdateGranularity ctx
        pass
    it "has an ideal update granularity" $ do
        ctx <- cipherInit cipher CipherEncrypt
        _ <- cipherGetIdealUpdateGranularity ctx
        pass
    if cipher `elem` aeads
        then it "can set the associated data" $ do
            ctx <- cipherInit cipher CipherEncrypt
            -- NOTE: Undocumented: A cipher must set the key before setting AD
            (_,mx,_) <- cipherGetKeyspec ctx
            k <- systemRNGGet mx
            cipherSetKey ctx k
            -- END NOTE
            ad <- systemRNGGet 64
            cipherSetAssociatedData ctx ad
            pass
        else pass
    it "can reset all message state" $ do
        ctx <- cipherInit cipher CipherEncrypt
        cipherReset ctx
        pass
    it "can clear all internal state" $ do
        ctx <- cipherInit cipher CipherEncrypt
        cipherClear ctx
        pass
    it "can start processing a message" $ do
        ctx <- cipherInit cipher CipherEncrypt
        (_,mx,_) <- cipherGetKeyspec ctx
        k <- systemRNGGet mx
        cipherSetKey ctx k
        if cipher `elem` aeads
            then do
                ad <- systemRNGGet 64
                cipherSetAssociatedData ctx ad
            else pass
        n <- systemRNGGet =<< cipherGetDefaultNonceLength ctx
        cipherStart ctx n
        pass
    -- TODO: More extensive testing in Botan; these are just binding sanity checks
    it "can one-shot / offline encipher a message" $ do
        ctx <- cipherInit cipher CipherEncrypt
        (_,mx,_) <- cipherGetKeyspec ctx
        k <- systemRNGGet mx
        cipherSetKey ctx k
        if cipher `elem` aeads
            then do
                ad <- systemRNGGet 64
                cipherSetAssociatedData ctx ad
            else pass
        n <- systemRNGGet =<< cipherGetDefaultNonceLength ctx
        cipherStart ctx n
        g <- cipherGetIdealUpdateGranularity ctx
        msg <- systemRNGGet g
        _encmsg <- cipherEncrypt ctx msg
        pass
    it "can one-shot / offline decipher a message" $ do
        -- Same as prior test
        ctx <- cipherInit cipher CipherEncrypt
        (_,mx,_) <- cipherGetKeyspec ctx
        k <- systemRNGGet mx
        cipherSetKey ctx k
        ad <- systemRNGGet 64
        if cipher `elem` aeads
            then do
                cipherSetAssociatedData ctx ad
            else pass
        n <- systemRNGGet =<< cipherGetDefaultNonceLength ctx
        cipherStart ctx n
        g <- cipherGetIdealUpdateGranularity ctx
        msg <- systemRNGGet g
        encmsg <- cipherEncrypt ctx msg
        -- Start actual test
        dctx <- cipherInit cipher CipherDecrypt
        cipherSetKey dctx k
        if cipher `elem` aeads
            then do
                cipherSetAssociatedData dctx ad
            else pass
        cipherStart dctx n
        decmsg <- cipherDecrypt dctx encmsg
        msg `shouldBe` decmsg
        pass
    it "can incrementally / online encipher a message" $ do
        -- Same as prior test
        ctx <- cipherInit cipher CipherEncrypt
        (_,mx,_) <- cipherGetKeyspec ctx
        k <- systemRNGGet mx
        cipherSetKey ctx k
        ad <- systemRNGGet 64
        if cipher `elem` aeads
            then do
                cipherSetAssociatedData ctx ad
            else pass
        n <- systemRNGGet =<< cipherGetDefaultNonceLength ctx
        cipherStart ctx n
        g <- cipherGetIdealUpdateGranularity ctx
        msg <- systemRNGGet (8 * g)
        _encmsg <- cipherEncryptOnline ctx msg
        pass
    -- NOTE: Fails for SIV, CCM because they are offline-only algorithms
    --  This is expected, but not reflected in the tests yet
    it "can incrementally / online decipher a message" $ do
        ctx <- cipherInit cipher CipherEncrypt
        (_,mx,_) <- cipherGetKeyspec ctx
        k <- systemRNGGet mx
        cipherSetKey ctx k
        ad <- systemRNGGet 64
        if cipher `elem` aeads
            then do
                cipherSetAssociatedData ctx ad
            else pass
        n <- systemRNGGet =<< cipherGetDefaultNonceLength ctx
        cipherStart ctx n
        g <- cipherGetIdealUpdateGranularity ctx
        msg <- systemRNGGet (8 * g)
        encmsg <- cipherEncryptOnline ctx msg
        -- Start actual test
        dctx <- cipherInit cipher CipherDecrypt
        cipherSetKey dctx k
        if cipher `elem` aeads
            then do
                cipherSetAssociatedData dctx ad
            else pass
        cipherStart dctx n
        decmsg <- cipherDecryptOnline dctx encmsg
        msg `shouldBe` decmsg
        pass
    -- NOTE: Fails for SIV, CCM because they are offline-only algorithms
    --  This is expected, but not reflected in the tests yet
    it "has parity between online and offline" $ do
        onlinectx <- cipherInit cipher CipherEncrypt
        offlinectx <- cipherInit cipher CipherEncrypt
        (_,mx,_) <- cipherGetKeyspec onlinectx
        k <- systemRNGGet mx
        cipherSetKey onlinectx k
        cipherSetKey offlinectx k
        ad <- systemRNGGet 64
        when (cipher `elem` aeads) $ do
                cipherSetAssociatedData onlinectx ad
                cipherSetAssociatedData offlinectx ad
        n <- systemRNGGet =<< cipherGetDefaultNonceLength onlinectx
        cipherStart onlinectx n
        cipherStart offlinectx n
        g <- cipherGetIdealUpdateGranularity onlinectx
        msg <- systemRNGGet (8 * g)
        onlinemsg <- cipherEncryptOnline onlinectx msg
        offlinemsg <- cipherEncrypt offlinectx msg
        onlinemsg `shouldBe` offlinemsg
        pass
