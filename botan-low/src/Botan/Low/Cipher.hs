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
cipherCtxNameIO = mkGetName withCipherPtr botan_cipher_name

-- |Return the output length of this cipher, for a particular input length.
cipherCtxOutputLengthIO :: CipherCtx -> Int -> IO Int
cipherCtxOutputLengthIO = mkGetSize_csize withCipherPtr botan_cipher_output_length

-- NOTE: Unique function form?
-- |Return if the specified nonce length is valid for this cipher
cipherCtxValidNonceLengthIO :: CipherCtx -> Int -> IO Bool
cipherCtxValidNonceLengthIO = mkGetSuccessCode_csize withCipherPtr botan_cipher_valid_nonce_length

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

-- |Encrypt some data
cipherCtxUpdateIO :: CipherCtx -> CipherUpdateFlags -> Int -> ByteString -> IO (Int,ByteString)
cipherCtxUpdateIO cipher flags outputSz input = withCipherPtr cipher $ \ cipherPtr -> do
    asBytesLen input $ \ inputPtr inputSz -> do
        alloca $ \ consumedPtr -> do
            alloca $ \ writtenPtr -> do
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
                written <- fromIntegral <$> peek writtenPtr
                let chunk = ByteString.copy $! ByteString.take written output
                    in chunk `seq` return (consumed, chunk)

-- |Reset the key, nonce, AD and all other state on this cipher object
cipherCtxClearIO :: CipherCtx -> IO ()
cipherCtxClearIO = mkAction withCipherPtr botan_cipher_clear
