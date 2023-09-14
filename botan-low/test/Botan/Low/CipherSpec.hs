module Botan.Low.CipherSpec
( spec
) where

import Test.Prelude
import Botan.Low.BlockCipherSpec (blockCipher128s, blockCiphers, allBlockCiphers)

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Char8 as Char8

import Botan.Bindings.Cipher
import Botan.Low.Cipher
import Botan.Low.RNG

paddings =
    [ "PKCS7"
    , "OneAndZeros"
    , "X9.23"
    , "ESP"
    , "CTS"
    , "NoPadding"
    ]

blockCipherModes = concat
    [ [ bc <> "/CBC/" <> pd     | bc <- allBlockCiphers, pd <- paddings ]
    , [ bc <> "/CFB"            | bc <- allBlockCiphers ]
    , [ bc <> "/XTS"            | bc <- allBlockCiphers ]
    ]

aeads =  concat
    [ [ "ChaCha20Poly1305" ]
    , [ bc <> "/GCM"   | bc <- blockCipher128s ]
    , [ bc <> "/OCB"   | bc <- blockCipher128s ]
    , [ bc <> "/EAX"   | bc <- blockCiphers ]
    , [ bc <> "/SIV"   | bc <- blockCipher128s ]
    , [ bc <> "/CCM"   | bc <- blockCipher128s ]
    ]

showBytes :: (Show a) => a -> ByteString
showBytes = Char8.pack . show

spec :: Spec
spec = testSuite (blockCipherModes ++ aeads) chars $ \ cipher -> do
    it "can initialize a cipher encryption context" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        pass
    it "can initialize a cipher decryption context" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_DECRYPT
        pass
    it "has a name" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        name <- cipherCtxNameIO ctx
        -- name `shouldBe` bc -- Name expands to include default parameters - need to record
        pass
    it "has a key spec" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        (_,_,_) <- cipherCtxGetKeyspecIO ctx
        pass
    it "can set the key" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        (_,mx,_) <- cipherCtxGetKeyspecIO ctx
        k <- systemRNGGetIO mx
        cipherCtxSetKeyIO ctx k
        pass
    it "has a valid default nonce length" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        nlen <- cipherCtxGetDefaultNonceLengthIO ctx
        pass
    it "can validate nonce length" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        nlen <- cipherCtxGetDefaultNonceLengthIO ctx
        defaultIsValid <- cipherCtxValidNonceLengthIO ctx nlen
        defaultIsValid `shouldBe` True
        -- NOTE: Some ciphers accept nonces of any length, eg SIV
        --  Others allow any length > 0, eg GCM
        --  Some have ranges
        --  Some have just 'if (length == 0) return false;' eg OCB
        --  Search C++ source for 'valid_nonce_length' to find them all
        -- zeroIsValid <- cipherCtxValidNonceLengthIO ctx 0
        -- zeroIsValid `shouldBe` False
        -- absurdlyLargeIsValid <- cipherCtxValidNonceLengthIO ctx maxBound
        -- absurdlyLargeIsValid `shouldBe` False
        pass
    it "can calculate output length" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        olen <- cipherCtxOutputLengthIO ctx 1024
        pass
    -- NOTE: This check should be ae / aead only
    it "has a tag length" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        _ <- cipherCtxGetTagLengthIO ctx
        pass
    it "has an update graularity" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        _ <- cipherCtxGetUpdateGranularityIO ctx
        pass
    it "has an ideal update granularity" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        _ <- cipherCtxGetIdealUpdateGranularityIO ctx
        pass
    if cipher `elem` aeads
        then it "can set the associated data" $ do
            ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
            -- NOTE: Undocumented: A cipher must set the key before setting AD
            (_,mx,_) <- cipherCtxGetKeyspecIO ctx
            k <- systemRNGGetIO mx
            cipherCtxSetKeyIO ctx k
            -- END NOTE
            ad <- systemRNGGetIO 64
            cipherCtxSetAssociatedDataIO ctx ad
            pass
        else pass
    it "can reset all message state" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        cipherCtxResetIO ctx
        pass
    it "can clear all internal state" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        cipherCtxClearIO ctx
        pass
    it "can start processing a message" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        (_,mx,_) <- cipherCtxGetKeyspecIO ctx
        k <- systemRNGGetIO mx
        cipherCtxSetKeyIO ctx k
        if cipher `elem` aeads
            then do
                ad <- systemRNGGetIO 64
                cipherCtxSetAssociatedDataIO ctx ad
            else pass
        n <- systemRNGGetIO =<< cipherCtxGetDefaultNonceLengthIO ctx
        cipherCtxStartIO ctx n
        pass
    -- TODO: More extensive testing in Botan; these are just binding sanity checks
    it "can one-shot / offline encipher a message" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        (_,mx,_) <- cipherCtxGetKeyspecIO ctx
        k <- systemRNGGetIO mx
        cipherCtxSetKeyIO ctx k
        if cipher `elem` aeads
            then do
                ad <- systemRNGGetIO 64
                cipherCtxSetAssociatedDataIO ctx ad
            else pass
        n <- systemRNGGetIO =<< cipherCtxGetDefaultNonceLengthIO ctx
        cipherCtxStartIO ctx n
        g <- cipherCtxGetIdealUpdateGranularityIO ctx
        msg <- systemRNGGetIO g
        encmsg <- cipherCtxEncryptOffline ctx msg
        pass
    it "can one-shot / offline decipher a message" $ do
        -- Same as prior test
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        (_,mx,_) <- cipherCtxGetKeyspecIO ctx
        k <- systemRNGGetIO mx
        cipherCtxSetKeyIO ctx k
        ad <- systemRNGGetIO 64
        if cipher `elem` aeads
            then do
                cipherCtxSetAssociatedDataIO ctx ad
            else pass
        n <- systemRNGGetIO =<< cipherCtxGetDefaultNonceLengthIO ctx
        cipherCtxStartIO ctx n
        g <- cipherCtxGetIdealUpdateGranularityIO ctx
        msg <- systemRNGGetIO g
        encmsg <- cipherCtxEncryptOffline ctx msg
        -- Start actual test
        dctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_DECRYPT
        cipherCtxSetKeyIO dctx k
        if cipher `elem` aeads
            then do
                cipherCtxSetAssociatedDataIO dctx ad
            else pass
        cipherCtxStartIO dctx n
        decmsg <- cipherCtxDecryptOffline dctx encmsg
        msg `shouldBe` decmsg
        pass
    it "can incrementally / online encipher a message" $ do
        -- Same as prior test
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        (_,mx,_) <- cipherCtxGetKeyspecIO ctx
        k <- systemRNGGetIO mx
        cipherCtxSetKeyIO ctx k
        ad <- systemRNGGetIO 64
        if cipher `elem` aeads
            then do
                cipherCtxSetAssociatedDataIO ctx ad
            else pass
        n <- systemRNGGetIO =<< cipherCtxGetDefaultNonceLengthIO ctx
        cipherCtxStartIO ctx n
        g <- cipherCtxGetIdealUpdateGranularityIO ctx
        msg <- systemRNGGetIO (8 * g)
        encmsg <- cipherCtxEncryptOnline ctx msg
        pass
    -- NOTE: Fails for SIV, CCM because they are offline-only algorithms
    --  This is expected, but not reflected in the tests yet
    it "can incrementally / online decipher a message" $ do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        (_,mx,_) <- cipherCtxGetKeyspecIO ctx
        k <- systemRNGGetIO mx
        cipherCtxSetKeyIO ctx k
        ad <- systemRNGGetIO 64
        if cipher `elem` aeads
            then do
                cipherCtxSetAssociatedDataIO ctx ad
            else pass
        n <- systemRNGGetIO =<< cipherCtxGetDefaultNonceLengthIO ctx
        cipherCtxStartIO ctx n
        g <- cipherCtxGetIdealUpdateGranularityIO ctx
        msg <- systemRNGGetIO (8 * g)
        encmsg <- cipherCtxEncryptOnline ctx msg
        -- Start actual test
        dctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_DECRYPT
        cipherCtxSetKeyIO dctx k
        if cipher `elem` aeads
            then do
                cipherCtxSetAssociatedDataIO dctx ad
            else pass
        cipherCtxStartIO dctx n
        decmsg <- cipherCtxDecryptOnline dctx encmsg
        msg `shouldBe` decmsg
        pass
    -- NOTE: Fails for SIV, CCM because they are offline-only algorithms
    --  This is expected, but not reflected in the tests yet
    it "has parity between online and offline" $ do
        onlinectx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        offlinectx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        (_,mx,_) <- cipherCtxGetKeyspecIO onlinectx
        k <- systemRNGGetIO mx
        cipherCtxSetKeyIO onlinectx k
        cipherCtxSetKeyIO offlinectx k
        ad <- systemRNGGetIO 64
        when (cipher `elem` aeads) $ do
                cipherCtxSetAssociatedDataIO onlinectx ad
                cipherCtxSetAssociatedDataIO offlinectx ad
        n <- systemRNGGetIO =<< cipherCtxGetDefaultNonceLengthIO onlinectx
        cipherCtxStartIO onlinectx n
        cipherCtxStartIO offlinectx n
        g <- cipherCtxGetIdealUpdateGranularityIO onlinectx
        msg <- systemRNGGetIO (8 * g)
        putStrLn "    Testing online encryption:"
        onlinemsg <- cipherCtxEncryptOnline onlinectx msg
        putStrLn "    Testing offline encryption:"
        offlinemsg <- cipherCtxEncryptOffline offlinectx msg
        putStrLn "    Result:"
        onlinemsg `shouldBe` offlinemsg
        pass
