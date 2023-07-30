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

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

-- NOTE: This is *symmetric* ciphers
--  For the 'raw' interface to ECB mode block ciphers, see BlockCipher.hs

newtype Cipher = MkCipher { getCipherForeignPtr :: ForeignPtr CipherStruct }

withCipherPtr :: Cipher -> (CipherPtr -> IO a) -> IO a
withCipherPtr = withForeignPtr . getCipherForeignPtr

pattern CipherEncrypt :: CipherInitFlags
pattern CipherEncrypt = BOTAN_CIPHER_INIT_FLAG_ENCRYPT

pattern CipherDecrypt :: CipherInitFlags
pattern CipherDecrypt = BOTAN_CIPHER_INIT_FLAG_DECRYPT

type CipherName = ByteString
type CipherNonce = ByteString
type CipherKey = ByteString

-- |Initialize a cipher object
cipherInit :: CipherName -> CipherInitFlags -> IO Cipher
cipherInit = mkInit_name_flags MkCipher botan_cipher_init botan_cipher_destroy


-- |Destroy the cipher object
cipherDestroy :: Cipher -> IO ()
cipherDestroy cipher = finalizeForeignPtr (getCipherForeignPtr cipher)

withCipher :: CipherName -> CipherInitFlags -> (Cipher -> IO a) -> IO a
withCipher = mkWithTemp2 cipherInit cipherDestroy

-- |Return the name of the cipher object
cipherName :: Cipher -> IO CipherName
cipherName = mkGetName withCipherPtr botan_cipher_name

-- |Return the output length of this cipher, for a particular input length.
cipherOutputLength :: Cipher -> Int -> IO Int
cipherOutputLength = mkGetSize_csize withCipherPtr botan_cipher_output_length

-- NOTE: Unique function form?
-- |Return if the specified nonce length is valid for this cipher
cipherValidNonceLength :: Cipher -> Int -> IO Bool
cipherValidNonceLength = mkGetSuccessCode_csize withCipherPtr botan_cipher_valid_nonce_length

-- |Get the tag length of the cipher (0 for non-AEAD modes)
cipherGetTagLength :: Cipher -> IO Int
cipherGetTagLength = mkGetSize withCipherPtr botan_cipher_get_tag_length

-- |Get the default nonce length of this cipher
cipherGetDefaultNonceLength :: Cipher -> IO Int
cipherGetDefaultNonceLength = mkGetSize withCipherPtr botan_cipher_get_default_nonce_length

-- |Return the update granularity of the cipher; botan_cipher_update must be
--  called with blocks of this size, except for the final.
cipherGetUpdateGranularity :: Cipher -> IO Int
cipherGetUpdateGranularity = mkGetSize withCipherPtr botan_cipher_get_update_granularity

-- |Return the ideal update granularity of the cipher. This is some multiple of the
--  update granularity, reflecting possibilities for optimization.
cipherGetIdealUpdateGranularity :: Cipher -> IO Int
cipherGetIdealUpdateGranularity = mkGetSize withCipherPtr botan_cipher_get_ideal_update_granularity

-- |Get information about the key lengths. Prefer botan_cipher_get_keyspec
cipherQueryKeylen :: Cipher -> IO (Int,Int)
cipherQueryKeylen = mkGetSizes2 withCipherPtr botan_cipher_query_keylen

-- |Get information about the supported key lengths.
cipherGetKeyspec :: Cipher -> IO (Int,Int,Int)
cipherGetKeyspec = mkGetSizes3 withCipherPtr botan_cipher_get_keyspec

-- |Set the key for this cipher object
cipherSetKey :: Cipher -> ByteString -> IO ()
cipherSetKey = mkSetBytesLen withCipherPtr botan_cipher_set_key

-- |Reset the message specific state for this cipher.
--  Without resetting the keys, this resets the nonce, and any state
--  associated with any message bits that have been processed so far.
--  
--  It is conceptually equivalent to calling botan_cipher_clear followed
--  by botan_cipher_set_key with the original key.
cipherReset :: Cipher -> IO ()
cipherReset = mkAction withCipherPtr botan_cipher_reset

-- |Set the associated data. Will fail if cipher is not an AEAD
cipherSetAssociatedData :: Cipher -> ByteString -> IO ()
cipherSetAssociatedData = mkSetBytesLen withCipherPtr botan_cipher_set_associated_data

-- |Begin processing a new message using the provided nonce
cipherStart :: Cipher -> ByteString -> IO ()
cipherStart = mkSetBytesLen withCipherPtr botan_cipher_start

-- |Encrypt some data
cipherUpdate :: Cipher -> CipherUpdateFlags -> Int -> ByteString -> IO (Int,ByteString)
cipherUpdate cipher flags outputSz input = withCipherPtr cipher $ \ cipherPtr -> do
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
                return $ (consumed, ByteString.copy $ ByteString.take written output)

-- |Reset the key, nonce, AD and all other state on this cipher object
cipherClear :: Cipher -> IO ()
cipherClear = mkAction withCipherPtr botan_cipher_clear