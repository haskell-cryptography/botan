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

import Botan.Low.RNG

-- NOTE: This is *symmetric* ciphers
--  For the 'raw' interface to ECB mode block ciphers, see BlockCipher.hs

newtype CipherCtx = MkCipherCtx { getCipherForeignPtr :: ForeignPtr CipherStruct }

withCipherPtr :: CipherCtx -> (CipherPtr -> IO a) -> IO a
withCipherPtr = withForeignPtr . getCipherForeignPtr

type CipherName = ByteString
type CipherNonce = ByteString
type CipherKey = ByteString

-- |Initialize a cipher object
cipherInit :: CipherName -> CipherInitFlags -> IO CipherCtx
cipherInit = mkInit_name_flags MkCipherCtx botan_cipher_init botan_cipher_destroy

withCipherInit :: CipherName -> CipherInitFlags -> (CipherCtx -> IO a) -> IO a
withCipherInit = mkWithTemp2 cipherInit cipherDestroy

-- |Destroy the cipher object
cipherDestroy :: CipherCtx -> IO ()
cipherDestroy cipher = finalizeForeignPtr (getCipherForeignPtr cipher)

-- |Return the name of the cipher object
cipherName :: CipherCtx -> IO CipherName
cipherName = mkGetCString withCipherPtr botan_cipher_name

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
cipherOutputLength :: CipherCtx -> Int -> IO Int
cipherOutputLength = mkGetSize_csize withCipherPtr botan_cipher_output_length

-- NOTE: Unique function form?
-- |Return if the specified nonce length is valid for this cipher
-- NOTE: This just always seems to return 'True', even for -1 and maxBound
cipherValidNonceLength :: CipherCtx -> Int -> IO Bool
cipherValidNonceLength = mkGetBoolCode_csize withCipherPtr botan_cipher_valid_nonce_length

-- |Get the tag length of the cipher (0 for non-AEAD modes)
cipherGetTagLength :: CipherCtx -> IO Int
cipherGetTagLength = mkGetSize withCipherPtr botan_cipher_get_tag_length

-- |Get the default nonce length of this cipher
cipherGetDefaultNonceLength :: CipherCtx -> IO Int
cipherGetDefaultNonceLength = mkGetSize withCipherPtr botan_cipher_get_default_nonce_length

-- |Return the update granularity of the cipher; botan_cipher_update must be
--  called with blocks of this size, except for the final.
cipherGetUpdateGranularity :: CipherCtx -> IO Int
cipherGetUpdateGranularity = mkGetSize withCipherPtr botan_cipher_get_update_granularity

-- |Return the ideal update granularity of the cipher. This is some multiple of the
--  update granularity, reflecting possibilities for optimization.
--
-- Some ciphers (ChaChaPoly, EAX) may consume less input than the reported ideal granularity
cipherGetIdealUpdateGranularity :: CipherCtx -> IO Int
cipherGetIdealUpdateGranularity = mkGetSize withCipherPtr botan_cipher_get_ideal_update_granularity

-- |Get information about the key lengths. Prefer botan_cipher_get_keyspec
cipherQueryKeylen :: CipherCtx -> IO (Int,Int)
cipherQueryKeylen = mkGetSizes2 withCipherPtr botan_cipher_query_keylen

-- |Get information about the supported key lengths.
cipherGetKeyspec :: CipherCtx -> IO (Int,Int,Int)
cipherGetKeyspec = mkGetSizes3 withCipherPtr botan_cipher_get_keyspec

-- |Set the key for this cipher object
cipherSetKey :: CipherCtx -> ByteString -> IO ()
cipherSetKey = mkSetBytesLen withCipherPtr botan_cipher_set_key

-- |Reset the message specific state for this cipher.
--  Without resetting the keys, this resets the nonce, and any state
--  associated with any message bits that have been processed so far.
--  
--  It is conceptually equivalent to calling botan_cipher_clear followed
--  by botan_cipher_set_key with the original key.
cipherReset :: CipherCtx -> IO ()
cipherReset = mkAction withCipherPtr botan_cipher_reset

-- |Set the associated data. Will fail if cipher is not an AEAD
cipherSetAssociatedData :: CipherCtx -> ByteString -> IO ()
cipherSetAssociatedData = mkSetBytesLen withCipherPtr botan_cipher_set_associated_data

-- |Begin processing a new message using the provided nonce
cipherStart :: CipherCtx -> ByteString -> IO ()
cipherStart = mkSetBytesLen withCipherPtr botan_cipher_start

-- |"Encrypt some data"
--
--  This function is ill-documented.
--
--  See the source for authoritative details:
--  https://github.com/randombit/botan/blob/72dc18bbf598f2c3bef81a4fb2915e9c3c524ac4/src/lib/ffi/ffi_cipher.cpp#L133
--
-- Some ciphers (ChaChaPoly, EAX) may consume less input than the reported ideal granularity
cipherUpdate :: CipherCtx -> CipherUpdateFlags -> Int -> ByteString -> IO (Int,ByteString)
cipherUpdate ctx flags outputSz input = withCipherPtr ctx $ \ ctxPtr -> do
    unsafeAsBytesLen input $ \ inputPtr inputSz -> do
        alloca $ \ consumedPtr -> do
            alloca $ \ writtenPtr -> do
                output <- allocBytes outputSz $ \ outputPtr -> do
                    throwBotanIfNegative_ $ botan_cipher_update
                        ctxPtr
                        flags
                        outputPtr
                        (fromIntegral outputSz)
                        writtenPtr
                        inputPtr
                        inputSz
                        consumedPtr
                consumed <- fromIntegral <$> peek consumedPtr
                written <- fromIntegral <$> peek writtenPtr
                -- NOTE: The safety of this function is suspect - may require deepseq
                let processed = ByteString.take written output
                    in processed `seq` return (consumed,processed)

-- |Reset the key, nonce, AD and all other state on this cipher object
cipherClear :: CipherCtx -> IO ()
cipherClear = mkAction withCipherPtr botan_cipher_clear

{-
Non-standard functions
-}

-- NOTE: out + ug + tag is safe overestimate for encryption
-- NOTE: out + ug - tag may not be a safe overestimate for decryption
cipherEstimateOutputLength :: CipherCtx -> CipherInitFlags -> Int -> IO Int
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
cipherEstimateFinalOutputLength :: CipherCtx -> CipherInitFlags -> Int -> Int -> IO Int
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
cipherProcess :: CipherCtx -> CipherUpdateFlags -> Int -> ByteString -> IO (ByteString,ByteString)
cipherProcess ctx flags outputSz input = do
    (consumed,processed) <- cipherUpdate ctx flags outputSz input
    -- NOTE: The safety of this function is suspect - may require deepseq
    let remaining = ByteString.drop consumed input
        in processed `seq` remaining `seq` return (processed,remaining)

cipherProcessOffline :: CipherCtx -> CipherInitFlags -> ByteString -> IO ByteString
cipherProcessOffline ctx flags msg = do
    o <- cipherEstimateOutputLength ctx flags (ByteString.length msg)
    -- snd <$> cipherUpdate ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL o msg
    fst <$> cipherProcess ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL o msg

cipherEncryptOffline :: CipherCtx -> ByteString -> IO ByteString
cipherEncryptOffline ctx = cipherProcessOffline ctx BOTAN_CIPHER_INIT_FLAG_ENCRYPT

cipherDecryptOffline :: CipherCtx -> ByteString -> IO ByteString
cipherDecryptOffline ctx = cipherProcessOffline ctx BOTAN_CIPHER_INIT_FLAG_DECRYPT

{-
Experiments with online processing
-}

-- cipherEncryptOnline :: CipherCtx -> ByteString -> IO ByteString
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
cipherProcessOnline :: CipherCtx -> CipherInitFlags -> ByteString -> IO ByteString
cipherProcessOnline ctx flags = if flags == BOTAN_CIPHER_INIT_FLAG_ENCRYPT
    then cipherEncryptOnline ctx
    else cipherDecryptOnline ctx

-- TODO: Consolidate online encipher / decipher
-- TODO: Use Builder to do this
--  https://hackage.haskell.org/package/bytestring-0.12.0.2/docs/Data-ByteString-Builder.html
cipherEncryptOnline :: CipherCtx -> ByteString -> IO ByteString
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
cipherDecryptOnline :: CipherCtx -> ByteString -> IO ByteString
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
