{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-deprecations #-}

module Test.Botan.Low.Cipher (tests) where

import           Botan.Low.Cipher
import           Botan.Low.RNG
import           Control.Monad
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
        -- TODO: temporarily disabled because the test suite fails. See issue
        -- #33.
      | False
      ]

spec_cipher :: Spec
spec_cipher = testSuite (cipherModes ++ aeads) chars $ \ cipher -> do
    it "can initialize a cipher encryption context" $ do
        _ctx <- cipherInit cipher Encrypt
        pass
    it "can initialize a cipher decryption context" $ do
        _ctx <- cipherInit cipher Decrypt
        pass
    it "has a name" $ do
        ctx <- cipherInit cipher Encrypt
        _name <- cipherName ctx
        -- name `shouldBe` bc -- Name expands to include default parameters - need to record
        pass
    it "has a key spec" $ do
        ctx <- cipherInit cipher Encrypt
        (_,_,_) <- cipherGetKeyspec ctx
        pass
    it "can set the key" $ do
        ctx <- cipherInit cipher Encrypt
        (_,mx,_) <- cipherGetKeyspec ctx
        k <- systemRNGGet mx
        cipherSetKey ctx k
        pass
    it "has a valid default nonce length" $ do
        ctx <- cipherInit cipher Encrypt
        _nlen <- cipherGetDefaultNonceLength ctx
        pass
    it "can validate nonce length" $ do
        ctx <- cipherInit cipher Encrypt
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
        ctx <- cipherInit cipher Encrypt
        _olen <- cipherOutputLength ctx 1024
        pass
    -- NOTE: This check should be ae / aead only
    it "has a tag length" $ do
        ctx <- cipherInit cipher Encrypt
        _ <- cipherGetTagLength ctx
        pass
    it "has an update graularity" $ do
        ctx <- cipherInit cipher Encrypt
        _ <- cipherGetUpdateGranularity ctx
        pass
    it "has an ideal update granularity" $ do
        ctx <- cipherInit cipher Encrypt
        _ <- cipherGetIdealUpdateGranularity ctx
        pass
    if cipher `elem` aeads
        then it "can set the associated data" $ do
            ctx <- cipherInit cipher Encrypt
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
        ctx <- cipherInit cipher Encrypt
        cipherReset ctx
        pass
    it "can clear all internal state" $ do
        ctx <- cipherInit cipher Encrypt
        cipherClear ctx
        pass
    it "can start processing a message" $ do
        ctx <- cipherInit cipher Encrypt
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
        ctx <- cipherInit cipher Encrypt
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
        ctx <- cipherInit cipher Encrypt
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
        dctx <- cipherInit cipher Decrypt
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
        ctx <- cipherInit cipher Encrypt
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
        ctx <- cipherInit cipher Encrypt
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
        dctx <- cipherInit cipher Decrypt
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
        onlinectx <- cipherInit cipher Encrypt
        offlinectx <- cipherInit cipher Encrypt
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
        putStrLn "    Testing online encryption:"
        onlinemsg <- cipherEncryptOnline onlinectx msg
        putStrLn "    Testing offline encryption:"
        offlinemsg <- cipherEncrypt offlinectx msg
        putStrLn "    Result:"
        onlinemsg `shouldBe` offlinemsg
        pass
