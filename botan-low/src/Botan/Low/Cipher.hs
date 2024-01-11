{-|
Module      : Botan.Low.Cipher
Description : Symmetric cipher modes
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

A block cipher by itself, is only able to securely encrypt a single
data block. To be able to securely encrypt data of arbitrary length,
a mode of operation applies the block cipher’s single block operation
repeatedly to encrypt an entire message.
-}

module Botan.Low.Cipher where

import qualified Data.ByteString as ByteString

import Botan.Bindings.Cipher

import Botan.Low.BlockCipher
import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.Remake

import Botan.Low.RNG

-- NOTE: This is *symmetric* ciphers
--  For the 'raw' interface to ECB mode block ciphers, see BlockCipher.hs

newtype Cipher = MkCipher { getCipherForeignPtr :: ForeignPtr BotanCipherStruct }

newCipher      :: BotanCipher -> IO Cipher
withCipher     :: Cipher -> (BotanCipher -> IO a) -> IO a
-- | Destroy the cipher object immediately
cipherDestroy  :: Cipher -> IO ()
createCipher   :: (Ptr BotanCipher -> IO CInt) -> IO Cipher
(newCipher, withCipher, cipherDestroy, createCipher, _)
    = mkBindings
        MkBotanCipher runBotanCipher
        MkCipher getCipherForeignPtr
        botan_cipher_destroy

type CipherInitFlags = Word32
type CipherUpdateFlags = Int
type CipherNonce = ByteString
type CipherKey = ByteString

type CipherName = ByteString

type CipherMode = ByteString

type CBCPaddingName = ByteString

pattern PKCS7
    ,   OneAndZeros
    ,   X9_23
    ,   ESP
    ,   CTS
    ,   NoPadding
    ::  CBCPaddingName

pattern PKCS7       = BOTAN_CBC_PADDING_PKCS7
pattern OneAndZeros = BOTAN_CBC_PADDING_ONE_AND_ZEROS
pattern X9_23       = BOTAN_CBC_PADDING_X9_23
pattern ESP         = BOTAN_CBC_PADDING_ESP
pattern CTS         = BOTAN_CBC_PADDING_CTS
pattern NoPadding   = BOTAN_CBC_PADDING_NO_PADDING

cbcMode :: BlockCipherName -> CBCPaddingName -> CipherName 
cbcMode bc padding = bc // BOTAN_CIPHER_MODE_CBC // padding

cfbMode :: BlockCipherName -> CipherName 
cfbMode bc = bc // BOTAN_CIPHER_MODE_CFB

cfbMode' :: BlockCipherName -> Int -> CipherName 
cfbMode' bc feedbackSz = cfbMode bc /$ showBytes feedbackSz

xtsMode :: BlockCipherName -> CipherName
xtsMode bc = bc // BOTAN_CIPHER_MODE_XTS

type AEADName = CipherName

chaCha20Poly1305 :: AEADName
chaCha20Poly1305 = BOTAN_AEAD_CHACHA20POLY1305

type AEADMode = ByteString

gcmMode :: BlockCipher128Name -> AEADName
gcmMode bc = bc // BOTAN_AEAD_MODE_GCM

gcmMode' :: BlockCipher128Name -> Int -> AEADName
gcmMode' bc tagSz = gcmMode bc /$ showBytes tagSz

ocbMode :: BlockCipher128Name -> AEADName
ocbMode bc = bc // BOTAN_AEAD_MODE_OCB

ocbMode' :: BlockCipher128Name -> Int -> AEADName
ocbMode' bc tagSz = ocbMode bc /$ showBytes tagSz

eaxMode :: BlockCipherName -> AEADName
eaxMode bc = bc // BOTAN_AEAD_MODE_EAX

eaxMode' :: BlockCipherName -> Int -> AEADName
eaxMode' bc tagSz = eaxMode bc /$ showBytes tagSz

sivMode :: BlockCipher128Name -> AEADName
sivMode bc = bc // BOTAN_AEAD_MODE_SIV

ccmMode :: BlockCipher128Name -> AEADName
ccmMode bc = bc // BOTAN_AEAD_MODE_CCM

ccmMode' :: BlockCipher128Name -> Int -> Int -> AEADName
ccmMode' bc tagSz l = ccmMode bc /$ showBytes tagSz <> "," <> showBytes l

cbcPaddings =
    [ PKCS7
    , OneAndZeros
    , X9_23
    , ESP
    , CTS
    , NoPadding
    ]

cipherModes = concat
    [ [ cbcMode bc pd | bc <- allBlockCiphers, pd <- cbcPaddings ]
    , [ cfbMode bc    | bc <- allBlockCiphers ]
    , [ xtsMode bc    | bc <- allBlockCiphers ]
    ]

aeads = concat
    [ [ chaCha20Poly1305 ]
    , [ gcmMode bc | bc <- blockCipher128s ]
    , [ ocbMode bc | bc <- blockCipher128s ]
    , [ eaxMode bc | bc <- blockCiphers ] -- WARNING: Why just blockCiphers, why not allBlockCiphers?
    , [ sivMode bc | bc <- blockCipher128s ]
    , [ ccmMode bc | bc <- blockCipher128s ]
    ]

allCiphers = cipherModes ++ aeads

type CipherInitFlag = Word32

-- TODO: Rename CipherMaskDirection, CipherEncrypt, CipherDecrypt;
--  Leave slim terminology for botan
pattern MaskDirection
    ,   Encrypt         -- ^ May be renamed Encipher to avoid confusion with PKEncrypt
    ,   Decrypt         -- ^ May be renamed Decipher to avoid confusion with PKDecrypt
    ::  CipherInitFlag

pattern MaskDirection = BOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION
pattern Encrypt = BOTAN_CIPHER_INIT_FLAG_ENCRYPT
pattern Decrypt = BOTAN_CIPHER_INIT_FLAG_DECRYPT

type CipherUpdateFlag = Word32

pattern CipherUpdate
    ,   CipherFinal
    ::  (Eq a, Num a) => a

pattern CipherUpdate    = BOTAN_CIPHER_UPDATE_FLAG_NONE
pattern CipherFinal     = BOTAN_CIPHER_UPDATE_FLAG_FINAL

-- |Initialize a cipher object
cipherInit :: CipherName -> CipherInitFlags -> IO Cipher
cipherInit = mkCreateObjectCString1 createCipher botan_cipher_init

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withCipherInit :: CipherName -> CipherInitFlags -> (Cipher -> IO a) -> IO a
withCipherInit = mkWithTemp2 cipherInit cipherDestroy

-- |Return the name of the cipher object
cipherName :: Cipher -> IO CipherName
cipherName = mkGetCString withCipher botan_cipher_name

-- |Return the output length of this cipher, for a particular input length.
--
--  WARNING: This function is of limited use. From the C++ docs:
--   /**
--   * Returns the size of the output if this transform is used to process a
--   * message with input_length bytes. In most cases the answer is precise.
--   * If it is not possible to precise (namely for CBC decryption) instead an
--   * upper bound is returned.
--   */
--  We need to explicitly calculate padding + tag length
cipherOutputLength :: Cipher -> Int -> IO Int
cipherOutputLength = mkGetSize_csize withCipher botan_cipher_output_length

-- NOTE: Unique function form?
-- |Return if the specified nonce length is valid for this cipher
-- NOTE: This just always seems to return 'True', even for -1 and maxBound
cipherValidNonceLength :: Cipher -> Int -> IO Bool
cipherValidNonceLength = mkGetBoolCode_csize withCipher botan_cipher_valid_nonce_length

-- |Get the tag length of the cipher (0 for non-AEAD modes)
cipherGetTagLength :: Cipher -> IO Int
cipherGetTagLength = mkGetSize withCipher botan_cipher_get_tag_length

-- |Get the default nonce length of this cipher
cipherGetDefaultNonceLength :: Cipher -> IO Int
cipherGetDefaultNonceLength = mkGetSize withCipher botan_cipher_get_default_nonce_length

-- |Return the update granularity of the cipher; botan_cipher_update must be
--  called with blocks of this size, except for the final.
cipherGetUpdateGranularity :: Cipher -> IO Int
cipherGetUpdateGranularity = mkGetSize withCipher botan_cipher_get_update_granularity

-- |Return the ideal update granularity of the cipher. This is some multiple of the
--  update granularity, reflecting possibilities for optimization.
--
-- Some ciphers (ChaChaPoly, EAX) may consume less input than the reported ideal granularity
cipherGetIdealUpdateGranularity :: Cipher -> IO Int
cipherGetIdealUpdateGranularity = mkGetSize withCipher botan_cipher_get_ideal_update_granularity

-- |Get information about the key lengths. Prefer botan_cipher_get_keyspec
cipherQueryKeylen :: Cipher -> IO (Int,Int)
cipherQueryKeylen = mkGetSizes2 withCipher botan_cipher_query_keylen

-- |Get information about the supported key lengths.
cipherGetKeyspec :: Cipher -> IO (Int,Int,Int)
cipherGetKeyspec = mkGetSizes3 withCipher botan_cipher_get_keyspec

-- |Set the key for this cipher object
cipherSetKey :: Cipher -> ByteString -> IO ()
cipherSetKey = mkWithObjectSetterCBytesLen withCipher botan_cipher_set_key

-- |Reset the message specific state for this cipher.
--  Without resetting the keys, this resets the nonce, and any state
--  associated with any message bits that have been processed so far.
--  
--  It is conceptually equivalent to calling botan_cipher_clear followed
--  by botan_cipher_set_key with the original key.
cipherReset :: Cipher -> IO ()
cipherReset = mkAction withCipher botan_cipher_reset

-- |Set the associated data. Will fail if cipher is not an AEAD
cipherSetAssociatedData :: Cipher -> ByteString -> IO ()
cipherSetAssociatedData = mkWithObjectSetterCBytesLen withCipher botan_cipher_set_associated_data

-- |Begin processing a new message using the provided nonce
cipherStart :: Cipher -> ByteString -> IO ()
cipherStart = mkWithObjectSetterCBytesLen withCipher botan_cipher_start

-- |"Encrypt some data"
--
--  This function is ill-documented.
--
--  See the source for authoritative details:
--  https://github.com/randombit/botan/blob/72dc18bbf598f2c3bef81a4fb2915e9c3c524ac4/src/lib/ffi/ffi_cipher.cpp#L133
--
-- Some ciphers (ChaChaPoly, EAX) may consume less input than the reported ideal granularity
cipherUpdate :: Cipher -> CipherUpdateFlags -> Int -> ByteString -> IO (Int,ByteString)
cipherUpdate ctx flags outputSz input = withCipher ctx $ \ ctxPtr -> do
    unsafeAsBytesLen input $ \ inputPtr inputSz -> do
        alloca $ \ consumedPtr -> do
            alloca $ \ writtenPtr -> do
                output <- allocBytes outputSz $ \ outputPtr -> do
                    throwBotanIfNegative_ $ botan_cipher_update
                        ctxPtr
                        (fromIntegral flags)
                        outputPtr
                        (fromIntegral outputSz)
                        writtenPtr
                        (ConstPtr inputPtr)
                        inputSz
                        consumedPtr
                consumed <- fromIntegral <$> peek consumedPtr
                written <- fromIntegral <$> peek writtenPtr
                -- NOTE: The safety of this function is suspect - may require deepseq
                let processed = ByteString.take written output
                    in processed `seq` return (consumed,processed)

-- |Reset the key, nonce, AD and all other state on this cipher object
cipherClear :: Cipher -> IO ()
cipherClear = mkAction withCipher botan_cipher_clear

{-
Non-standard functions
-}

-- NOTE: out + ug + tag is safe overestimate for encryption
-- NOTE: out + ug - tag may not be a safe overestimate for decryption
{-# DEPRECATED cipherEstimateOutputLength "This will be moved from botan-low to botan" #-}
cipherEstimateOutputLength :: Cipher -> CipherInitFlags -> Int -> IO Int
cipherEstimateOutputLength ctx flags input = do
    o <- cipherOutputLength ctx input  -- NOTE: Flawed but usable
    u <- cipherGetUpdateGranularity ctx -- TODO: When u == 1, it should be just input + t, right?
    t <- cipherGetTagLength ctx
    if flags == BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        then return (o + u + t)
        else return (o + u - t) -- TODO: Maybe just 'o'... 

-- NOTE: Offset must be a valid length of the input so far processed
-- NOTE: If (estimated) outputLength input + offset == outputLength (input + offset) then
--  we can just use cipherEstimateOutputLength instead of this
--  However, this may not be completely true due to block alignment requirements
--  For the moment this function exists for clarity.
{-# DEPRECATED cipherEstimateFinalOutputLength "Moving from botan-low to botan" #-}
cipherEstimateFinalOutputLength :: Cipher -> CipherInitFlags -> Int -> Int -> IO Int
cipherEstimateFinalOutputLength ctx flags offset input = do
    len <- cipherEstimateOutputLength ctx flags (offset + input)
    return $ len - offset

-- A better version of cipherUpdate
-- NOTE: It returns (processed,remaining) compared to (consumed,processed)
--  so the processed ciphertext has moved from snd to fst
-- TODO: Use Builder to do this
--  https://hackage.haskell.org/package/bytestring-0.12.0.2/docs/Data-ByteString-Builder.html
-- NOTE: There still is (an efficiency) use for a version that reports only consumed length
--  and defers the computation of the 'remaining' bytestring
{-# DEPRECATED cipherProcess "Moving from botan-low to botan" #-}
cipherProcess :: Cipher -> CipherUpdateFlags -> Int -> ByteString -> IO (ByteString,ByteString)
cipherProcess ctx flags outputSz input = do
    (consumed,processed) <- cipherUpdate ctx flags outputSz input
    -- NOTE: The safety of this function is suspect - may require deepseq
    let remaining = ByteString.drop consumed input
        in processed `seq` remaining `seq` return (processed,remaining)

{-# DEPRECATED cipherProcessOffline "Moving from botan-low to botan" #-}
cipherProcessOffline :: Cipher -> CipherInitFlags -> ByteString -> IO ByteString
cipherProcessOffline ctx flags msg = do
    o <- cipherEstimateOutputLength ctx flags (ByteString.length msg)
    -- snd <$> cipherUpdate ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL o msg
    fst <$> cipherProcess ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL o msg

{-# DEPRECATED cipherEncryptOffline "Moving from botan-low to botan" #-}
cipherEncryptOffline :: Cipher -> ByteString -> IO ByteString
cipherEncryptOffline ctx = cipherProcessOffline ctx BOTAN_CIPHER_INIT_FLAG_ENCRYPT

{-# DEPRECATED cipherDecryptOffline "Moving from botan-low to botan" #-}
cipherDecryptOffline :: Cipher -> ByteString -> IO ByteString
cipherDecryptOffline ctx = cipherProcessOffline ctx BOTAN_CIPHER_INIT_FLAG_DECRYPT

{-
Experiments with online processing
-}

-- cipherEncryptOnline :: Cipher -> ByteString -> IO ByteString
-- cipherEncryptOnline ctx msg = do
--     u <- cipherGetUpdateGranularity ctx
--     t <- cipherGetTagLength ctx
--     g <- cipherGetIdealUpdateGranularity ctx
--     ByteString.concat <$> go 0 u t g msg
--     where
--         go i u t g bs = case ByteString.splitAt g bs of
--             (block,"")      -> do
--                 o <- cipherOutputLength ctx (i + ByteString.length block)  -- NOTE: Flawed but usable
--                 (_,encblock) <- cipherUpdate ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL (o + u + t - i) block
--                 return [encblock]
--             (block,rest)    -> do
--                 (_,encblock) <- cipherUpdate ctx BOTAN_CIPHER_UPDATE_FLAG_NONE g block
--                 encrest <- go (i + g) u t g rest
--                 return $! encblock : encrest

--  NOTE: Some ciphers (SIV, CCM) are not online-capable algorithms, but Botan does not throw
--  an error even though it should.
{-# DEPRECATED cipherProcessOnline "Moving from botan-low to botan" #-}
cipherProcessOnline :: Cipher -> CipherInitFlags -> ByteString -> IO ByteString
cipherProcessOnline ctx flags = if flags == BOTAN_CIPHER_INIT_FLAG_ENCRYPT
    then cipherEncryptOnline ctx
    else cipherDecryptOnline ctx

-- TODO: Consolidate online encipher / decipher
-- TODO: Use Builder to do this
--  https://hackage.haskell.org/package/bytestring-0.12.0.2/docs/Data-ByteString-Builder.html
{-# DEPRECATED cipherEncryptOnline "Moving from botan-low to botan" #-}
cipherEncryptOnline :: Cipher -> ByteString -> IO ByteString
cipherEncryptOnline ctx msg = do
    g <- cipherGetIdealUpdateGranularity ctx
    ByteString.concat <$> go 0 g msg
    where
        go i g bs = case ByteString.splitAt g bs of
            (block,"")      -> do
                o <- cipherEstimateFinalOutputLength ctx BOTAN_CIPHER_INIT_FLAG_ENCRYPT i (ByteString.length block)
                (processed,_) <- cipherProcess ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL o block
                return [processed]
            (block,rest)    -> do
                (processed,remaining) <- cipherProcess ctx BOTAN_CIPHER_UPDATE_FLAG_NONE g block
                (processed :) <$> go (i + g) g (remaining <> rest)
                -- Though this following version may be more efficient especially with lazy bytestrings
                --  or builder, though note *which* update function it uses - the original
                -- (consumed,processed) <- cipherUpdate ctx BOTAN_CIPHER_UPDATE_FLAG_NONE g block
                -- (processed :) <$> go (i + g) g (ByteString.drop consumed bs)

-- TODO: Consolidate online encipher / decipher
{-# DEPRECATED cipherDecryptOnline "Moving from botan-low to botan" #-}
cipherDecryptOnline :: Cipher -> ByteString -> IO ByteString
cipherDecryptOnline ctx msg = do
    g <- cipherGetIdealUpdateGranularity ctx
    t <- cipherGetTagLength ctx
    ByteString.concat <$> go 0 g t msg
    where
        go i g t bs = case ByteString.splitAt g bs of
            (block,"")      -> do
                o <- cipherEstimateFinalOutputLength ctx BOTAN_CIPHER_INIT_FLAG_DECRYPT i (ByteString.length block)
                (processed,_) <- cipherProcess ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL o block
                return [processed]
            (block,rest)    -> do
                (processed,remaining) <- cipherProcess ctx BOTAN_CIPHER_UPDATE_FLAG_NONE g block
                (processed :) <$> go (i + g) g t (remaining <> rest)
