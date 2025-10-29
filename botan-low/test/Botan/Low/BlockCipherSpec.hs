module Main (main) where

import           Test.Prelude

import           Botan.Low.BlockCipher
import           Botan.Low.Hash
import           Botan.Low.RNG

main :: IO ()
main = hspec $ testSuite allTestBlockCiphers chars $ \ bc -> do
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
    -- NOTE: It does not actually throw an error - this is slightly concerning.
    -- it "can only encipher messages that are a multiple of the block size" $ do
    --     ctx <- blockCipherInitName bc
    --     bsz <- blockCipherBlockSize ctx
    --     if bsz == 1
    --         then pass
    --         else do
    --             (_,mx,_) <- blockCipherGetKeyspec ctx
    --             k <- systemRNGGetIO mx
    --             blockCipherSetKey ctx k
    --             msg <- systemRNGGetIO $ bsz + 1
    --             blockCipherEncryptBlocks ctx msg `shouldThrow` anyBotanException
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

allTestBlockCiphers :: [BlockCipherName]
allTestBlockCiphers = fmap adjust allBlockCiphers
  where
    adjust Cascade = cascade Serpent AES256
    adjust Lion    = lion SHA1 "RC4" (Just 64)
    adjust name    = name
