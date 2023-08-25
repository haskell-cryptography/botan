module Botan.Low.BlockCipherSpec
( spec
) where

import Test.Prelude

import qualified Data.ByteString.Char8 as Char8
import qualified Data.ByteString as ByteString

import Botan.Low.BlockCipher

blockCiphers =
    [ "AES-128"
    , "AES-192"
    , "AES-256"
    , "ARIA-128"
    , "ARIA-192"
    , "ARIA-256"
    , "Blowfish"
    , "Camellia-128"
    , "Camellia-192"
    , "Camellia-256"
    , "CAST-128"
    , "CAST-256"
    , "DES"
    , "TripleDES"
    , "GOST-28147-89"
    , "Noekeon"
    , "IDEA"
    , "SEED"
    , "SM4"
    , "Serpent"
    , "SHACAL2"
    , "Twofish"
    , "Threefish-512"
    ]

message = "Fee fi fo fum! I smell the blood of an Englishman!"

spec :: Spec
spec = forM_ blockCiphers $ \ bc -> describe (Char8.unpack bc) $ do
    describe "blockCipherCtxInitNameIO" $ do
        it "initializes a block cipher context" $ do
            ctx <- blockCipherCtxInitNameIO bc
            pass
    -- describe "blockCipherCtxClearIO" $ do
    --     it "" $ do
    --         pending
    -- describe "blockCipherCtxSetKeyIO" $ do
    --     it "" $ do
    --         pending
    -- describe "blockCipherCtxBlockSizeIO" $ do
    --     it "" $ do
    --         pending
    -- describe "blockCipherCtxEncryptBlocksIO" $ do
    --     it "" $ do
    --         pending
    -- describe "blockCipherCtxDecryptBlocksIO" $ do
    --     it "" $ do
    --         pending
    describe "blockCipherCtxNameIO" $ do
        it "has a name" $ do
            ctx <- blockCipherCtxInitNameIO bc
            bc' <- blockCipherCtxNameIO ctx
            -- bc' `shouldBe` bc
            bc' `shouldSatisfy` not . ByteString.null
    -- describe "blockCipherCtxGetKeyspecIO" $ do
    --     it "" $ do
    --         pending