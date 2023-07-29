module Botan.Bindings.BlockCipher where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

-- NOTE: Effectively, this is ECB mode. Do not use unless you know what you are doing.

-- /*
-- * Raw Block Cipher (PRP) interface
-- */
-- typedef struct botan_block_cipher_struct* botan_block_cipher_t;
data BlockCipherStruct
type BlockCipherPtr = Ptr BlockCipherStruct

-- /**
-- * Initialize a block cipher object
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_block_cipher_init(botan_block_cipher_t* bc,
--                                                   const char* cipher_name);
foreign import ccall unsafe botan_block_cipher_init :: Ptr BlockCipherPtr -> CString -> IO BotanErrorCode

-- /**
-- * Destroy a block cipher object
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_block_cipher_destroy(botan_block_cipher_t bc);
foreign import ccall unsafe "&botan_block_cipher_destroy" botan_block_cipher_destroy :: FinalizerPtr BlockCipherStruct

-- /**
-- * Reinitializes the block cipher
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_block_cipher_clear(botan_block_cipher_t bc);
foreign import ccall unsafe botan_block_cipher_clear :: BlockCipherPtr -> IO BotanErrorCode

-- /**
-- * Set the key for a block cipher instance
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_block_cipher_set_key(botan_block_cipher_t bc,
--                                                      const uint8_t key[], size_t len);
foreign import ccall unsafe botan_block_cipher_set_key :: BlockCipherPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- /**
-- * Return the positive block size of this block cipher, or negative to
-- * indicate an error
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_block_cipher_block_size(botan_block_cipher_t bc);
foreign import ccall unsafe botan_block_cipher_block_size :: BlockCipherPtr -> IO BotanErrorCode

-- /**
-- * Encrypt one or more blocks with the cipher
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_block_cipher_encrypt_blocks(botan_block_cipher_t bc,
--                                                             const uint8_t in[],
--                                                             uint8_t out[],
--                                                             size_t blocks);
foreign import ccall unsafe botan_block_cipher_encrypt_blocks :: BlockCipherPtr -> Ptr Word8 -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- /**
-- * Decrypt one or more blocks with the cipher
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_block_cipher_decrypt_blocks(botan_block_cipher_t bc,
--                                                             const uint8_t in[],
--                                                             uint8_t out[],
--                                                             size_t blocks);
foreign import ccall unsafe botan_block_cipher_decrypt_blocks :: BlockCipherPtr -> Ptr Word8 -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- /**
-- * Get the name of this block cipher
-- * @param cipher the object to read
-- * @param name output buffer
-- * @param name_len on input, the length of buffer, on success the number of bytes written
-- */
-- BOTAN_PUBLIC_API(2,8) int botan_block_cipher_name(botan_block_cipher_t cipher,
--                                                   char* name, size_t* name_len);
foreign import ccall unsafe botan_block_cipher_name :: BlockCipherPtr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

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
