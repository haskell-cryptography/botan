{-|
Module      : Botan.Low.BlockCipher
Description : Raw Block Cipher (PRP) interface
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

This is a ‘raw’ interface to ECB mode block ciphers.
Most applications want the higher level cipher API which provides authenticated encryption.
This API exists as an escape hatch for applications which need to implement custom primitives using a PRP.
-}

module Botan.Low.BlockCipher where

import qualified Data.ByteString as ByteString

import Botan.Bindings.BlockCipher

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

-- |Opaque block cipher object
newtype BlockCipher = MkBlockCipher { getBlockCipherForeignPtr :: ForeignPtr BlockCipherStruct }

withBlockCipherPtr :: BlockCipher -> (BlockCipherPtr -> IO a) -> IO a
withBlockCipherPtr = withForeignPtr . getBlockCipherForeignPtr

-- |Block cipher name type
type BlockCipherName = ByteString

-- |Initialize a block cipher object
blockCipherInit
    :: BlockCipherName -- ^ Cipher name
    -> IO BlockCipher
blockCipherInit = mkInit_name MkBlockCipher botan_block_cipher_init botan_block_cipher_destroy


-- |Destroy a block cipher object immediately
blockCipherDestroy
    :: BlockCipher  -- ^ The cipher object
    -> IO ()
blockCipherDestroy blockCipher = finalizeForeignPtr (getBlockCipherForeignPtr blockCipher)

withBlockCipher :: BlockCipherName -> (BlockCipher -> IO a) -> IO a
withBlockCipher = mkWithTemp1 blockCipherInit blockCipherDestroy

-- |Reinitializes the block cipher
blockCipherClear
    :: BlockCipher  -- ^ The cipher object
    -> IO ()
blockCipherClear = mkAction withBlockCipherPtr botan_block_cipher_clear

-- | Set the key for a block cipher instance
--
-- Error if the key is not valid.
blockCipherSetKey
    :: BlockCipher  -- ^ The cipher object
    -> ByteString   -- ^ A cipher key
    -> IO ()
blockCipherSetKey = mkSetBytesLen withBlockCipherPtr botan_block_cipher_set_key

-- |Return the positive block size of this block cipher, or negative to
--  indicate an error
blockCipherBlockSize
    :: BlockCipher  -- ^ The cipher object
    -> IO Int
blockCipherBlockSize = mkGetIntCode withBlockCipherPtr botan_block_cipher_block_size

-- TODO: withPaddedBytes, withPaddedMultipleBytes in Botan.Prelude
-- NOTE: This function is questionable. Perhaps it is better to throw an error for non-block-size-multiple input.
--  Definitely because there is no way to recover proper length while decrypting.
-- NOTE: DONT LOP OFF END - RUINS DECRYPT - Need all encrypted bytes including encrypted padding.
-- NOTE: Too high-level - split into botan-low / botan
-- |Encrypt one or more blocks with the cipher
blockCipherEncryptBlocks
    :: BlockCipher  -- ^ The cipher object
    -> ByteString   -- ^ The plaintext
    -> IO ByteString
blockCipherEncryptBlocks blockCipher bytes = withBlockCipherPtr blockCipher $ \ blockCipherPtr -> do
    blockSize <- blockCipherBlockSize blockCipher
    let (_,paddedLength,blockCount) = paddingInfo (ByteString.length bytes) blockSize
    asPaddedBytes bytes blockSize $ \ bytesPtr -> do
        allocBytes paddedLength $ \ destPtr -> do
            throwBotanIfNegative_ $ botan_block_cipher_encrypt_blocks blockCipherPtr bytesPtr destPtr (fromIntegral blockCount)

-- NOTE: COPY OF ENCRYPT
-- TODO: Should definitely throw something if input bytes are non-block-size-multiple, instead of padding
-- NOTE: Too high-level - split into botan-low / botan
-- |Decrypt one or more blocks with the cipher
blockCipherDecryptBlocks
    :: BlockCipher  -- ^ The cipher object
    -> ByteString   -- ^ The ciphertext
    -> IO ByteString
blockCipherDecryptBlocks blockCipher bytes = withBlockCipherPtr blockCipher $ \ blockCipherPtr -> do
    blockSize <- blockCipherBlockSize blockCipher
    let (_,paddedLength,blockCount) = paddingInfo (ByteString.length bytes) blockSize
    asPaddedBytes bytes blockSize $ \ bytesPtr -> do
        allocBytes paddedLength $ \ destPtr -> do
            throwBotanIfNegative_ $ botan_block_cipher_decrypt_blocks blockCipherPtr bytesPtr destPtr (fromIntegral blockCount)


-- |Get the name of this block cipher
blockCipherName
    :: BlockCipher  -- ^ The cipher object
    -> IO BlockCipherName
blockCipherName = mkGetName withBlockCipherPtr botan_block_cipher_name

-- |Get the key length limits of this block cipher
--
--  Returns the minimum, maximum, and modulo of valid keys.
blockCipherGetKeyspec
    :: BlockCipher  -- ^ The cipher object
    -> IO (Int,Int,Int)
blockCipherGetKeyspec = mkGetSizes3 withBlockCipherPtr botan_block_cipher_get_keyspec
