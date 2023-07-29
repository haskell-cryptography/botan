module Botan.Low.BlockCipher where

import qualified Data.ByteString as ByteString

import Botan.Bindings.BlockCipher

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

-- NOTE: Effectively, this is ECB mode. Do not use unless you know what you are doing.

-- /*
-- * Raw Block Cipher (PRP) interface
-- */

newtype BlockCipher = MkBlockCipher { getBlockCipherForeignPtr :: ForeignPtr BlockCipherStruct }

withBlockCipherPtr :: BlockCipher -> (BlockCipherPtr -> IO a) -> IO a
withBlockCipherPtr = withForeignPtr . getBlockCipherForeignPtr

type BlockCipherName = ByteString

blockCipherInit :: BlockCipherName -> IO BlockCipher
blockCipherInit = mkInit_name MkBlockCipher botan_block_cipher_init botan_block_cipher_destroy

blockCipherDestroy :: BlockCipher -> IO ()
blockCipherDestroy blockCipher = finalizeForeignPtr (getBlockCipherForeignPtr blockCipher)

withBlockCipher :: BlockCipherName -> (BlockCipher -> IO a) -> IO a
withBlockCipher = mkWithTemp1 blockCipherInit blockCipherDestroy

blockCipherClear :: BlockCipher -> IO ()
blockCipherClear = mkAction withBlockCipherPtr botan_block_cipher_clear

blockCipherSetKey :: BlockCipher -> ByteString -> IO ()
blockCipherSetKey = mkSetBytesLen withBlockCipherPtr botan_block_cipher_set_key

blockCipherBlockSize :: BlockCipher -> IO Int
blockCipherBlockSize = mkGetIntCode withBlockCipherPtr botan_block_cipher_block_size

-- TODO: withPaddedBytes, withPaddedMultipleBytes in Botan.Prelude
-- NOTE: This function is questionable. Perhaps it is better to throw an error for non-block-size-multiple input.
--  Definitely because there is no way to recover proper length while decrypting.
-- NOTE: DONT LOP OFF END - RUINS DECRYPT - Need all encrypted bytes including encrypted padding.
blockCipherEncryptBlocks :: BlockCipher -> ByteString -> IO ByteString
blockCipherEncryptBlocks blockCipher bytes = withBlockCipherPtr blockCipher $ \ blockCipherPtr -> do
    blockSize <- blockCipherBlockSize blockCipher
    let (_,paddedLength,blockCount) = paddingInfo (ByteString.length bytes) blockSize
    asPaddedBytes bytes blockSize $ \ bytesPtr -> do
        allocBytes paddedLength $ \ destPtr -> do
            throwBotanIfNegative_ $ botan_block_cipher_encrypt_blocks blockCipherPtr bytesPtr destPtr (fromIntegral blockCount)

-- NOTE: COPY OF ENCRYPT
-- TODO: Should definitely throw something if input bytes are non-block-size-multiple, instead of padding
blockCipherDecryptBlocks :: BlockCipher -> ByteString -> IO ByteString
blockCipherDecryptBlocks blockCipher bytes = withBlockCipherPtr blockCipher $ \ blockCipherPtr -> do
    blockSize <- blockCipherBlockSize blockCipher
    let (_,paddedLength,blockCount) = paddingInfo (ByteString.length bytes) blockSize
    asPaddedBytes bytes blockSize $ \ bytesPtr -> do
        allocBytes paddedLength $ \ destPtr -> do
            throwBotanIfNegative_ $ botan_block_cipher_decrypt_blocks blockCipherPtr bytesPtr destPtr (fromIntegral blockCount)

blockCipherName :: BlockCipher -> IO BlockCipherName
blockCipherName = mkGetName withBlockCipherPtr botan_block_cipher_name

blockCipherGetKeyspec :: BlockCipher -> IO (Int,Int,Int)
blockCipherGetKeyspec = mkGetSizes3 withBlockCipherPtr botan_block_cipher_get_keyspec
