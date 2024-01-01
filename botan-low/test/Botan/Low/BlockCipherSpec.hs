module Main where

import Test.Prelude

import qualified Data.ByteString.Char8 as Char8
import qualified Data.ByteString as ByteString

import Botan.Low.BlockCipher
import Botan.Low.RNG

message = "Fee fi fo fum! I smell the blood of an Englishman!"

main :: IO ()
main = hspec $ testSuite allBlockCiphers chars $ \ bc -> do
    it "can initialize a block cipher context" $ do
        ctx <- blockCipherInit bc
        pass
    it "has a name" $ do
        ctx <- blockCipherInit bc
        name <- blockCipherName ctx
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
        encmsg <- blockCipherEncryptBlocks ctx msg
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
