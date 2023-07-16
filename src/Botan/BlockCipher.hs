module Botan.BlockCipher where

import Prelude

import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString

import Data.Word

import System.IO

import Foreign.C.String
import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable

import Botan.Error
import Botan.Make
import Botan.Prelude

-- NOTE: Effectively, this is ECB mode. Do not use unless you know what you are doing.

-- /*
-- * Raw Block Cipher (PRP) interface
-- */
-- typedef struct botan_block_cipher_struct* botan_block_cipher_t;
data BlockCipherStruct
type BlockCipherPtr = Ptr BlockCipherStruct

newtype BlockCipher = MkBlockCipher { getBlockCipherForeignPtr :: ForeignPtr BlockCipherStruct }

withBlockCipherPtr :: BlockCipher -> (BlockCipherPtr -> IO a) -> IO a
withBlockCipherPtr = withForeignPtr . getBlockCipherForeignPtr

type BlockCipherName = ByteString

-- /**
-- * Initialize a block cipher object
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_block_cipher_init(botan_block_cipher_t* bc,
--                                                   const char* cipher_name);

-- /**
-- * Destroy a block cipher object
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_block_cipher_destroy(botan_block_cipher_t bc);

foreign import ccall unsafe botan_block_cipher_init :: Ptr BlockCipherPtr -> CString -> IO BotanErrorCode
foreign import ccall unsafe "&botan_block_cipher_destroy" botan_block_cipher_destroy :: FinalizerPtr BlockCipherStruct

blockCipherInit :: BlockCipherName -> IO BlockCipher
blockCipherInit = mkInit_name MkBlockCipher botan_block_cipher_init botan_block_cipher_destroy

-- /**
-- * Reinitializes the block cipher
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_block_cipher_clear(botan_block_cipher_t bc);
foreign import ccall unsafe botan_block_cipher_clear :: BlockCipherPtr -> IO BotanErrorCode

blockCipherClear :: BlockCipher -> IO ()
blockCipherClear = mkAction withBlockCipherPtr botan_block_cipher_clear

-- /**
-- * Set the key for a block cipher instance
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_block_cipher_set_key(botan_block_cipher_t bc,
--                                                      const uint8_t key[], size_t len);
foreign import ccall unsafe botan_block_cipher_set_key :: BlockCipherPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

blockCipherSetKey :: BlockCipher -> ByteString -> IO ()
blockCipherSetKey = mkSetBytesLen withBlockCipherPtr botan_block_cipher_set_key

-- /**
-- * Return the positive block size of this block cipher, or negative to
-- * indicate an error
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_block_cipher_block_size(botan_block_cipher_t bc);
foreign import ccall unsafe botan_block_cipher_block_size :: BlockCipherPtr -> IO BotanErrorCode

blockCipherBlockSize :: BlockCipher -> IO Int
blockCipherBlockSize = mkGetIntCode withBlockCipherPtr botan_block_cipher_block_size

-- /**
-- * Encrypt one or more blocks with the cipher
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_block_cipher_encrypt_blocks(botan_block_cipher_t bc,
--                                                             const uint8_t in[],
--                                                             uint8_t out[],
--                                                             size_t blocks);
foreign import ccall unsafe botan_block_cipher_encrypt_blocks :: BlockCipherPtr -> Ptr Word8 -> Ptr Word8 -> CSize -> IO BotanErrorCode

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

-- /**
-- * Decrypt one or more blocks with the cipher
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_block_cipher_decrypt_blocks(botan_block_cipher_t bc,
--                                                             const uint8_t in[],
--                                                             uint8_t out[],
--                                                             size_t blocks);
foreign import ccall unsafe botan_block_cipher_decrypt_blocks :: BlockCipherPtr -> Ptr Word8 -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- NOTE: COPY OF ENCRYPT
-- TODO: Should definitely throw something if input bytes are non-block-size-multiple, instead of padding
blockCipherDecryptBlocks :: BlockCipher -> ByteString -> IO ByteString
blockCipherDecryptBlocks blockCipher bytes = withBlockCipherPtr blockCipher $ \ blockCipherPtr -> do
    blockSize <- blockCipherBlockSize blockCipher
    let (_,paddedLength,blockCount) = paddingInfo (ByteString.length bytes) blockSize
    asPaddedBytes bytes blockSize $ \ bytesPtr -> do
        allocBytes paddedLength $ \ destPtr -> do
            throwBotanIfNegative_ $ botan_block_cipher_decrypt_blocks blockCipherPtr bytesPtr destPtr (fromIntegral blockCount)

-- /**
-- * Get the name of this block cipher
-- * @param cipher the object to read
-- * @param name output buffer
-- * @param name_len on input, the length of buffer, on success the number of bytes written
-- */
-- BOTAN_PUBLIC_API(2,8) int botan_block_cipher_name(botan_block_cipher_t cipher,
--                                                   char* name, size_t* name_len);
foreign import ccall unsafe botan_block_cipher_name :: BlockCipherPtr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

blockCipherName :: BlockCipher -> IO BlockCipherName
blockCipherName = mkGetName withBlockCipherPtr botan_block_cipher_name

-- /**
-- * Get the key length limits of this block cipher
-- * @param cipher the object to read
-- * @param out_minimum_keylength if non-NULL, will be set to minimum keylength of cipher
-- * @param out_maximum_keylength if non-NULL, will be set to maximum keylength of cipher
-- * @param out_keylength_modulo if non-NULL will be set to byte multiple of valid keys
-- */
-- BOTAN_PUBLIC_API(2,8) int botan_block_cipher_get_keyspec(botan_block_cipher_t cipher,
--                                                          size_t* out_minimum_keylength,
--                                                          size_t* out_maximum_keylength,
--                                                          size_t* out_keylength_modulo);
foreign import ccall unsafe botan_block_cipher_get_keyspec :: BlockCipherPtr -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO BotanErrorCode

blockCipherGetKeyspec :: BlockCipher -> IO (Int,Int,Int)
blockCipherGetKeyspec = mkGetSizes3 withBlockCipherPtr botan_block_cipher_get_keyspec
