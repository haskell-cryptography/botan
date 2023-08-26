module Botan.Low.CipherSpec
( spec
) where

import Test.Prelude
import Botan.Low.BlockCipherSpec (blockCipher128s, blockCiphers, allBlockCiphers)

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

newEncipher cipher = cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT

newKey ctx = do
    (_,mx,_) <- cipherCtxGetKeyspecIO ctx
    systemRNGGetIO mx

autoKey ctx = newKey ctx >>= cipherCtxSetKeyIO ctx

newAD ctx = systemRNGGetIO 64

autoAD ctx = newAD ctx >>= cipherCtxSetAssociatedDataIO ctx

newNonce ctx = do
    n <- cipherCtxGetDefaultNonceLengthIO ctx
    systemRNGGetIO n

autoNonceStart ctx = newNonce ctx >>= cipherCtxStartIO ctx

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
    it "can update the process with a message block" $ do
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
        g <- cipherCtxGetIdealUpdateGranularityIO ctx
        msg <- systemRNGGetIO g
        cipherCtxStartIO ctx n
        cipherCtxUpdateIO ctx BOTAN_CIPHER_UPDATE_FLAG_NONE g msg
        pass
    it "can finalize the process with a message block" $ do
        ctx <- newEncipher cipher
        autoKey ctx
        if cipher `elem` aeads then autoAD ctx else pass
        autoNonceStart ctx
        g <- cipherCtxGetIdealUpdateGranularityIO ctx
        msg <- systemRNGGetIO g
        t <- cipherCtxGetTagLengthIO ctx
        cipherCtxUpdateIO ctx BOTAN_CIPHER_UPDATE_FLAG_NONE (g + t) msg
        pass
    -- it "can block encipher a message" $ do
    --     ctx <- blockCipherCtxInitNameIO bc
    --     (_,mx,_) <- blockCipherCtxGetKeyspecIO ctx
    --     k <- systemRNGGetIO mx
    --     blockCipherCtxSetKeyIO ctx k
    --     bsz <- blockCipherCtxBlockSizeIO ctx
    --     msg <- systemRNGGetIO $ bsz * 10
    --     encmsg <- blockCipherCtxEncryptBlocksIO ctx msg
    --     pass
    -- it "can block decipher an enciphered message" $ do
    --     ctx <- blockCipherCtxInitNameIO bc
    --     (_,mx,_) <- blockCipherCtxGetKeyspecIO ctx
    --     k <- systemRNGGetIO mx
    --     blockCipherCtxSetKeyIO ctx k
    --     bsz <- blockCipherCtxBlockSizeIO ctx
    --     msg <- systemRNGGetIO $ bsz * 10
    --     encmsg <- blockCipherCtxEncryptBlocksIO ctx msg
    --     decmsg <- blockCipherCtxDecryptBlocksIO ctx encmsg
    --     decmsg `shouldBe` msg 
    --     pass




    -- describe "cipherCtxNameIO" $ do
    --     it "has a name" $ do
    --         pending
    -- describe "cipherCtxOutputLengthIO" $ do
    --     it "has an output length" $ do
    --         pending
    -- describe "cipherCtxValidNonceLengthIO" $ do
    --     it "has a valid nonce length" $ do
    --         pending
    -- describe "cipherCtxGetTagLengthIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxGetDefaultNonceLengthIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxGetUpdateGranularityIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxGetIdealUpdateGranularityIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxQueryKeylenIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxGetKeyspecIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxSetKeyIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxResetIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxSetAssociatedDataIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxStartIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxUpdateIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxClearIO" $ do
    --     it "" $ do
    --         pending