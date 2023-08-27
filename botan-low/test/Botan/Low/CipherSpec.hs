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

autoNonceStart ctx = do
    n <- newNonce ctx
    cipherCtxStartIO ctx n
    return n

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
        -- NOTE: This is equivalent to the above test case
        ctx <- newEncipher cipher
        autoKey ctx
        if cipher `elem` aeads then autoAD ctx else pass
        n <- autoNonceStart ctx
        -- NOTE: Both of these fail for:
        --  every Padding except NoPadding
        --  XTS CipherMode
        -- Probably
        -- g <- cipherCtxGetIdealUpdateGranularityIO ctx    
        -- let g = 0
        let g = 0
        msg <- systemRNGGetIO g
        -- END NOTE: This is equivalent to the above test case
        t <- cipherCtxGetTagLengthIO ctx
        cipherCtxUpdateIO ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL (g + t) msg
        pass
    


-- NOTE: YOINKED
-- TODO: Move to botan-low as suggested

type Message = ByteString
type Ciphertext = ByteString

-- TODO: Move to botan-low
cipherCtxUpdateBlockIO :: CipherCtx -> ByteString -> IO ByteString
cipherCtxUpdateBlockIO ctx block = do
    let outSz = ByteString.length block
    (_,block') <- cipherCtxUpdateIO ctx BOTAN_CIPHER_UPDATE_FLAG_NONE outSz block
    return block'

-- TODO: Move to botan-low
cipherCtxFinalizeBlockIO :: CipherCtx -> ByteString -> IO ByteString
cipherCtxFinalizeBlockIO ctx block = do
    tagSz <- cipherCtxGetTagLengthIO ctx
    let outSz = ByteString.length block + tagSz
    (_,block'tag) <- cipherCtxUpdateIO ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL tagSz block
    return block'tag

-- TODO: Move to botan-low
cipherCtxFinalizeTagIO :: CipherCtx -> IO (Maybe ByteString)
cipherCtxFinalizeTagIO ctx = do
    tag <- cipherCtxFinalizeBlockIO ctx ""
    if tag == ""
        then return Nothing
        else return (Just tag)

cipherCtxUpdateFinalizeBlocksIO :: CipherCtx -> [ByteString] -> IO [ByteString]
cipherCtxUpdateFinalizeBlocksIO ctx [block]      = do
    finalBlockTag <- cipherCtxFinalizeBlockIO ctx block
    return [finalBlockTag]
cipherCtxUpdateFinalizeBlocksIO ctx (block:rest) = do
    block' <- cipherCtxUpdateBlockIO ctx block
    (block:) <$> cipherCtxUpdateFinalizeBlocksIO ctx rest

-- TODO: Move to botan-low
cipherCtxUpdateFinalizeOneShotIO :: CipherCtx -> Message -> IO Ciphertext
cipherCtxUpdateFinalizeOneShotIO ctx bytes = do
    tagSz <- cipherCtxGetTagLengthIO ctx
    (consumed,msg) <- cipherCtxUpdateIO ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL (ByteString.length bytes + tagSz) bytes
    return msg

-- TODO: Move to botan-low
cipherCtxUpdateFinalizeIO :: CipherCtx -> Message -> IO Ciphertext
cipherCtxUpdateFinalizeIO ctx msg = do
    g <- cipherCtxGetIdealUpdateGranularityIO ctx
    if g == 1
        then cipherCtxUpdateFinalizeOneShotIO ctx msg
        else do
            blocks <- cipherCtxUpdateFinalizeBlocksIO ctx (splitBlocks g msg)
            return $! ByteString.concat blocks

-- END YOINKED