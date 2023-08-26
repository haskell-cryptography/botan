module Botan.Low.BlockCipherSpec
( spec
, blockCipher128s
, blockCiphers
, allBlockCiphers
) where

import Test.Prelude

import qualified Data.ByteString.Char8 as Char8
import qualified Data.ByteString as ByteString

import Botan.Low.BlockCipher
import Botan.Low.RNG

blockCipher128s =
    [ "AES-128"
    , "AES-192"
    , "AES-256"
    , "ARIA-128"
    , "ARIA-192"
    , "ARIA-256"
    , "Camellia-128"
    , "Camellia-192"
    , "Camellia-256"
    , "Noekeon"
    , "SEED"
    , "SM4"
    , "Serpent"
    , "Twofish"
    ]

blockCiphers =
    [ "Blowfish"
    , "CAST-128"
    , "DES"
    , "TripleDES"
    , "GOST-28147-89"
    , "IDEA"
    , "SHACAL2"
    , "Threefish-512"
    ]

allBlockCiphers = blockCipher128s ++ blockCiphers

message = "Fee fi fo fum! I smell the blood of an Englishman!"

spec :: Spec
spec = testSuite allBlockCiphers chars $ \ bc -> do
    it "can initialize a block cipher context" $ do
        ctx <- blockCipherCtxInitNameIO bc
        pass
    it "has a name" $ do
        ctx <- blockCipherCtxInitNameIO bc
        name <- blockCipherCtxNameIO ctx
        -- name `shouldBe` bc -- Name expands to include default parameters - need to record
        pass
    it "has a key spec" $ do
        ctx <- blockCipherCtxInitNameIO bc
        (_,_,_) <- blockCipherCtxGetKeyspecIO ctx
        pass
    it "has a block size" $ do
        ctx <- blockCipherCtxInitNameIO bc
        _ <- blockCipherCtxBlockSizeIO ctx
        pass
    it "can set the key" $ do
        ctx <- blockCipherCtxInitNameIO bc
        (_,mx,_) <- blockCipherCtxGetKeyspecIO ctx
        k <- systemRNGGetIO mx
        blockCipherCtxSetKeyIO ctx k
        pass
    it "can encipher a message" $ do
        ctx <- blockCipherCtxInitNameIO bc
        (_,mx,_) <- blockCipherCtxGetKeyspecIO ctx
        k <- systemRNGGetIO mx
        blockCipherCtxSetKeyIO ctx k
        bsz <- blockCipherCtxBlockSizeIO ctx
        msg <- systemRNGGetIO $ bsz * 10
        encmsg <- blockCipherCtxEncryptBlocksIO ctx msg
        pass
    -- NOTE: It does not actually throw an error - this is slightly concerning.
    -- it "can only encipher messages that are a multiple of the block size" $ do
    --     ctx <- blockCipherCtxInitNameIO bc
    --     bsz <- blockCipherCtxBlockSizeIO ctx
    --     if bsz == 1
    --         then pass
    --         else do
    --             (_,mx,_) <- blockCipherCtxGetKeyspecIO ctx
    --             k <- systemRNGGetIO mx
    --             blockCipherCtxSetKeyIO ctx k
    --             msg <- systemRNGGetIO $ bsz + 1
    --             blockCipherCtxEncryptBlocksIO ctx msg `shouldThrow` anyBotanException
    it "can decipher an enciphered message" $ do
        ctx <- blockCipherCtxInitNameIO bc
        (_,mx,_) <- blockCipherCtxGetKeyspecIO ctx
        k <- systemRNGGetIO mx
        blockCipherCtxSetKeyIO ctx k
        bsz <- blockCipherCtxBlockSizeIO ctx
        msg <- systemRNGGetIO $ bsz * 10
        encmsg <- blockCipherCtxEncryptBlocksIO ctx msg
        decmsg <- blockCipherCtxDecryptBlocksIO ctx encmsg
        decmsg `shouldBe` msg 
        pass
