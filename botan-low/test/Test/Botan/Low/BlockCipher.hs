{-# LANGUAGE OverloadedStrings #-}

module Test.Botan.Low.BlockCipher (
    tests
  ) where

import           Botan.Low.BlockCipher
import           Botan.Low.Hash
import           Botan.Low.RNG
import qualified Data.ByteString as BS
import           Test.Hspec
import           Test.Tasty
import           Test.Tasty.Hspec
import           Test.Util.HSpec

tests :: IO TestTree
tests = do
    specs <- testSpec "spec_blockCipher" spec_blockCipher
    pure $ testGroup "Test.Botan.Low.BlockCipher" [
        specs
      ]

{-------------------------------------------------------------------------------
  Specs
-------------------------------------------------------------------------------}

spec_blockCipher :: Spec
spec_blockCipher = testSuite allTestBlockCiphers chars $ \ bc -> do
    it "can initialize a block cipher context" $ do
        _ctx <- blockCipherInit bc
        pass
    it "has a name" $ do
        ctx <- blockCipherInit bc
        _name <- blockCipherName ctx
        -- name `shouldBe` bc -- Name expands to include default parameters - need to record
        pass
    it "has a key spec" $ do
        ctx <- blockCipherInit bc
        (_,_,_) <- blockCipherGetKeyspec ctx
        pass
    it "has a block size" $ do
        ctx <- blockCipherInit bc
        _ <- blockCipherBlockSize ctx
        pass
    it "can set the key" $ do
        ctx <- blockCipherInit bc
        (_,mx,_) <- blockCipherGetKeyspec ctx
        k <- systemRNGGet mx
        blockCipherSetKey ctx k
        pass
    it "can encipher a message" $ do
        ctx <- blockCipherInit bc
        (_,mx,_) <- blockCipherGetKeyspec ctx
        k <- systemRNGGet mx
        blockCipherSetKey ctx k
        bsz <- blockCipherBlockSize ctx
        msg <- systemRNGGet $ bsz * 10
        _encmsg <- blockCipherEncryptBlocks ctx msg
        pass
    it "can only encipher a message that is a multiple of the block size" $ do
        ctx <- blockCipherInit bc
        (_,mx,_) <- blockCipherGetKeyspec ctx
        k <- systemRNGGet mx
        blockCipherSetKey ctx k
        bsz <- blockCipherBlockSize ctx
        msg <- systemRNGGet $ bsz * 10
        let msgCorrupted = msg <> BS.pack [17]
        blockCipherEncryptBlocks ctx msgCorrupted
          `shouldThrow` anyErrorCall
    it "can decipher an enciphered message" $ do
        ctx <- blockCipherInit bc
        (_,mx,_) <- blockCipherGetKeyspec ctx
        k <- systemRNGGet mx
        blockCipherSetKey ctx k
        bsz <- blockCipherBlockSize ctx
        msg <- systemRNGGet $ bsz * 10
        encmsg <- blockCipherEncryptBlocks ctx msg
        decmsg <- blockCipherDecryptBlocks ctx encmsg
        decmsg `shouldBe` msg
        pass
    it "can only decipher an enciphered message that is a multiple of the block size" $ do
        ctx <- blockCipherInit bc
        (_,mx,_) <- blockCipherGetKeyspec ctx
        k <- systemRNGGet mx
        blockCipherSetKey ctx k
        bsz <- blockCipherBlockSize ctx
        msg <- systemRNGGet $ bsz * 10
        encmsg <- blockCipherEncryptBlocks ctx msg
        let encmsgCorrupted = BS.take (BS.length encmsg - 1) encmsg
        blockCipherDecryptBlocks ctx encmsgCorrupted
          `shouldThrow` anyErrorCall

allTestBlockCiphers :: [BlockCipherName]
allTestBlockCiphers = fmap adjust allBlockCiphers
  where
    adjust Cascade = cascade Serpent AES256
    adjust Lion    = lion SHA1 "RC4" (Just 64)
    adjust name    = name
