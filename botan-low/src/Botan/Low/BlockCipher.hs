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
import Botan.Low.Remake

newtype BlockCipher = MkBlockCipher { getBlockCipherForeignPtr :: ForeignPtr BotanBlockCipherStruct }

newBlockCipher      :: BotanBlockCipher -> IO BlockCipher
withBlockCipher     :: BlockCipher -> (BotanBlockCipher -> IO a) -> IO a
-- | Destroy a block cipher object immediately
blockCipherDestroy  :: BlockCipher -> IO ()
createBlockCipher   :: (Ptr BotanBlockCipher -> IO CInt) -> IO BlockCipher
(newBlockCipher, withBlockCipher, blockCipherDestroy, createBlockCipher, _)
    = mkBindings
        MkBotanBlockCipher runBotanBlockCipher
        MkBlockCipher getBlockCipherForeignPtr
        botan_block_cipher_destroy

-- | Block cipher name type
type BlockCipherName = ByteString
    
-- | Initialize a block cipher object
blockCipherInit
    :: BlockCipherName  -- ^ Cipher name
    -> IO BlockCipher
blockCipherInit = mkCreateObjectCString createBlockCipher botan_block_cipher_init

-- WARNING: withFooInit-style limited lifetime / guaranteed cleanup functions to be
--  moved to high-level botan
withBlockCipherInit :: BlockCipherName -> (BlockCipher -> IO a) -> IO a
withBlockCipherInit = mkWithTemp1 blockCipherInit blockCipherDestroy

-- | Reinitializes the block cipher
blockCipherClear
    :: BlockCipher  -- ^ The cipher object
    -> IO ()
blockCipherClear = mkWithObjectAction withBlockCipher botan_block_cipher_clear

-- | Set the key for a block cipher instance
--
-- Error if the key is not valid.
blockCipherSetKey
    :: BlockCipher  -- ^ The cipher object
    -> ByteString   -- ^ A cipher key
    -> IO ()
blockCipherSetKey = mkSetBytesLen withBlockCipher (\ cipher key -> botan_block_cipher_set_key cipher (ConstPtr key))

-- | Return the positive block size of this block cipher, or negative to
--  indicate an error
blockCipherBlockSize
    :: BlockCipher  -- ^ The cipher object
    -> IO Int
blockCipherBlockSize = mkGetIntCode withBlockCipher botan_block_cipher_block_size

-- | Encrypt one or more blocks with the cipher
blockCipherEncryptBlocks
    :: BlockCipher  -- ^ The cipher object
    -> ByteString   -- ^ The plaintext
    -> IO ByteString
blockCipherEncryptBlocks blockCipher bytes = withBlockCipher blockCipher $ \ blockCipherPtr -> do
    asBytesLen bytes $ \ bytesPtr bytesLen -> do
        allocBytes (fromIntegral bytesLen) $ \ destPtr -> do
            throwBotanIfNegative_ $ botan_block_cipher_encrypt_blocks
                blockCipherPtr
                (ConstPtr bytesPtr)
                destPtr
                bytesLen

-- | Decrypt one or more blocks with the cipher
blockCipherDecryptBlocks
    :: BlockCipher  -- ^ The cipher object
    -> ByteString   -- ^ The ciphertext
    -> IO ByteString
blockCipherDecryptBlocks blockCipher bytes = withBlockCipher blockCipher $ \ blockCipherPtr -> do
    asBytesLen bytes $ \ bytesPtr bytesLen -> do
        allocBytes (fromIntegral bytesLen) $ \ destPtr -> do
            throwBotanIfNegative_ $ botan_block_cipher_decrypt_blocks
                blockCipherPtr
                (ConstPtr bytesPtr)
                destPtr
                bytesLen

-- | Get the name of this block cipher
blockCipherName
    :: BlockCipher  -- ^ The cipher object
    -> IO BlockCipherName
blockCipherName = mkGetCString withBlockCipher botan_block_cipher_name

-- | Get the key length limits of this block cipher
--
--  Returns the minimum, maximum, and modulo of valid keys.
blockCipherGetKeyspec
    :: BlockCipher  -- ^ The cipher object
    -> IO (Int,Int,Int)
blockCipherGetKeyspec = mkGetSizes3 withBlockCipher botan_block_cipher_get_keyspec
