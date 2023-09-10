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
cipherCtxInitNameIO :: CipherName -> CipherInitFlags -> IO CipherCtx
cipherCtxInitNameIO = mkInit_name_flags MkCipherCtx botan_cipher_init botan_cipher_destroy

withCipherCtxInitNameIO :: CipherName -> CipherInitFlags -> (CipherCtx -> IO a) -> IO a
withCipherCtxInitNameIO = mkWithTemp2 cipherCtxInitNameIO cipherCtxDestroyIO

-- |Destroy the cipher object
cipherCtxDestroyIO :: CipherCtx -> IO ()
cipherCtxDestroyIO cipher = finalizeForeignPtr (getCipherForeignPtr cipher)

-- |Return the name of the cipher object
cipherCtxNameIO :: CipherCtx -> IO CipherName
cipherCtxNameIO = mkGetCString withCipherPtr botan_cipher_name

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
cipherCtxOutputLengthIO :: CipherCtx -> Int -> IO Int
cipherCtxOutputLengthIO = mkGetSize_csize withCipherPtr botan_cipher_output_length

-- NOTE: Unique function form?
-- |Return if the specified nonce length is valid for this cipher
-- NOTE: This just always seems to return 'True', even for -1 and maxBound
cipherCtxValidNonceLengthIO :: CipherCtx -> Int -> IO Bool
cipherCtxValidNonceLengthIO = mkGetBoolCode_csize withCipherPtr botan_cipher_valid_nonce_length

-- |Get the tag length of the cipher (0 for non-AEAD modes)
cipherCtxGetTagLengthIO :: CipherCtx -> IO Int
cipherCtxGetTagLengthIO = mkGetSize withCipherPtr botan_cipher_get_tag_length

-- |Get the default nonce length of this cipher
cipherCtxGetDefaultNonceLengthIO :: CipherCtx -> IO Int
cipherCtxGetDefaultNonceLengthIO = mkGetSize withCipherPtr botan_cipher_get_default_nonce_length

-- |Return the update granularity of the cipher; botan_cipher_update must be
--  called with blocks of this size, except for the final.
cipherCtxGetUpdateGranularityIO :: CipherCtx -> IO Int
cipherCtxGetUpdateGranularityIO = mkGetSize withCipherPtr botan_cipher_get_update_granularity

-- |Return the ideal update granularity of the cipher. This is some multiple of the
--  update granularity, reflecting possibilities for optimization.
cipherCtxGetIdealUpdateGranularityIO :: CipherCtx -> IO Int
cipherCtxGetIdealUpdateGranularityIO = mkGetSize withCipherPtr botan_cipher_get_ideal_update_granularity

-- |Get information about the key lengths. Prefer botan_cipher_get_keyspec
cipherCtxQueryKeylenIO :: CipherCtx -> IO (Int,Int)
cipherCtxQueryKeylenIO = mkGetSizes2 withCipherPtr botan_cipher_query_keylen

-- |Get information about the supported key lengths.
cipherCtxGetKeyspecIO :: CipherCtx -> IO (Int,Int,Int)
cipherCtxGetKeyspecIO = mkGetSizes3 withCipherPtr botan_cipher_get_keyspec

-- |Set the key for this cipher object
cipherCtxSetKeyIO :: CipherCtx -> ByteString -> IO ()
cipherCtxSetKeyIO = mkSetBytesLen withCipherPtr botan_cipher_set_key

-- |Reset the message specific state for this cipher.
--  Without resetting the keys, this resets the nonce, and any state
--  associated with any message bits that have been processed so far.
--  
--  It is conceptually equivalent to calling botan_cipher_clear followed
--  by botan_cipher_set_key with the original key.
cipherCtxResetIO :: CipherCtx -> IO ()
cipherCtxResetIO = mkAction withCipherPtr botan_cipher_reset

-- |Set the associated data. Will fail if cipher is not an AEAD
cipherCtxSetAssociatedDataIO :: CipherCtx -> ByteString -> IO ()
cipherCtxSetAssociatedDataIO = mkSetBytesLen withCipherPtr botan_cipher_set_associated_data

-- |Begin processing a new message using the provided nonce
cipherCtxStartIO :: CipherCtx -> ByteString -> IO ()
cipherCtxStartIO = mkSetBytesLen withCipherPtr botan_cipher_start

-- |"Encrypt some data"
--
--  This function is ill-documented.
--
--  See the source for authoritative details:
--  https://github.com/randombit/botan/blob/72dc18bbf598f2c3bef81a4fb2915e9c3c524ac4/src/lib/ffi/ffi_cipher.cpp#L133
cipherCtxUpdateIO :: CipherCtx -> CipherUpdateFlags -> Int -> ByteString -> IO (Int,ByteString)
cipherCtxUpdateIO cipher flags outputSz input = withCipherPtr cipher $ \ cipherPtr -> do
    asBytesLen input $ \ inputPtr inputSz -> do
        alloca $ \ consumedPtr -> do
            alloca $ \ writtenPtr -> do
                print $ "Update: " <> show (flags == BOTAN_CIPHER_UPDATE_FLAG_FINAL)
                print $ "Update input length: " <> show inputSz
                print $ "Update estimated output length: " <> show outputSz
                -- Or just allocBytes outputSz $ \ _ -> return (); unsafeAsBytes ...
                output <- allocBytes outputSz $ \ outputPtr -> do
                    throwBotanIfNegative_ $ botan_cipher_update
                        cipherPtr
                        flags
                        outputPtr
                        (fromIntegral outputSz)
                        writtenPtr
                        inputPtr
                        inputSz
                        consumedPtr
                consumed <- fromIntegral <$> peek consumedPtr
                print $ "Update consumed input length: " <> show consumed
                written <- fromIntegral <$> peek writtenPtr
                print $ "Update written output length: " <> show written
                -- NOTE: If written == outputSz we can just return output
                -- NOTE: The safety of this function is suspect - may require deepseq
                let chunk = ByteString.copy $! ByteString.take written output
                    in chunk `seq` return (consumed, chunk)

-- |Reset the key, nonce, AD and all other state on this cipher object
cipherCtxClearIO :: CipherCtx -> IO ()
cipherCtxClearIO = mkAction withCipherPtr botan_cipher_clear

{-
Non-standard functions
-}

cipherCtxEncryptOffline :: CipherCtx -> ByteString -> IO ByteString
cipherCtxEncryptOffline ctx msg = do
    o <- cipherCtxOutputLengthIO ctx (ByteString.length msg)  -- NOTE: Flawed but usable
    u <- cipherCtxGetUpdateGranularityIO ctx
    t <- cipherCtxGetTagLengthIO ctx
    -- NOTE: out + u + tag is safe overestimate
    (_,ct) <- cipherCtxUpdateIO ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL (o + u + t) msg
    return ct

cipherCtxDecryptOffline :: CipherCtx -> ByteString -> IO ByteString
cipherCtxDecryptOffline ctx msg = do
    o <- cipherCtxOutputLengthIO ctx (ByteString.length msg)  -- NOTE: Flawed but usable
    u <- cipherCtxGetUpdateGranularityIO ctx -- TODO: Try just 'o' since ptlen should be <= ctlen
    (_,pt) <- cipherCtxUpdateIO ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL (o + u) msg
    return pt

cipherCtxEncryptOnline :: CipherCtx -> ByteString -> IO ByteString
cipherCtxEncryptOnline ctx msg = do
    u <- cipherCtxGetUpdateGranularityIO ctx
    t <- cipherCtxGetTagLengthIO ctx
    g <- cipherCtxGetIdealUpdateGranularityIO ctx
    ByteString.concat <$> go 0 u t g msg
    where
        go i u t g bs = case ByteString.splitAt g bs of
            (block,"")      -> do
                o <- cipherCtxOutputLengthIO ctx (i + ByteString.length block)  -- NOTE: Flawed but usable
                (_,encblock) <- cipherCtxUpdateIO ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL (o + u + t - i) block
                return [encblock]
            (block,rest)    -> do
                (_,encblock) <- cipherCtxUpdateIO ctx BOTAN_CIPHER_UPDATE_FLAG_NONE g block
                encrest <- go (i + g) u t g rest
                return $! encblock : encrest

testCipherCtx :: CipherName -> Bool -> IO (CipherCtx,ByteString,ByteString,ByteString,ByteString)
testCipherCtx cipher isAEAD = do
        ctx <- cipherCtxInitNameIO cipher BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        (_,mx,_) <- cipherCtxGetKeyspecIO ctx
        k <- systemRNGGetIO mx
        cipherCtxSetKeyIO ctx k
        ad <- systemRNGGetIO 64
        when isAEAD $ cipherCtxSetAssociatedDataIO ctx ad
        n <- systemRNGGetIO =<< cipherCtxGetDefaultNonceLengthIO ctx
        cipherCtxStartIO ctx n
        g <- cipherCtxGetIdealUpdateGranularityIO ctx
        msg <- systemRNGGetIO (8 * g)
        return (ctx,k,ad,n,msg)

testOnline :: CipherName -> Bool -> IO ()
testOnline cipher isAEAD = do
    (ctx,k,ad,n,msg) <- testCipherCtx cipher isAEAD
    encmsg <- cipherCtxEncryptOnline ctx msg
    return ()