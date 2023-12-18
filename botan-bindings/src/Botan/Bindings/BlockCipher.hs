{-|
Module      : Botan.Binding.BlockCipher
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

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.BlockCipher where

import Botan.Bindings.Prelude

-- | Opaque BlockCipher struct
data {-# CTYPE "botan/ffi.h" "struct botan_block_cipher_struct" #-} BotanBlockCipherStruct

-- | Botan BlockCipher object
newtype {-# CTYPE "botan/ffi.h" "botan_block_cipher_t" #-} BotanBlockCipher
    = MkBotanBlockCipher { runBotanBlockCipher :: Ptr BotanBlockCipherStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy a block cipher object
foreign import capi safe "botan/ffi.h &botan_block_cipher_destroy"
    botan_block_cipher_destroy
        :: FinalizerPtr BotanBlockCipherStruct

-- | Initialize a block cipher object
foreign import capi "botan/ffi.h botan_block_cipher_init"
    botan_block_cipher_init
        :: Ptr BotanBlockCipher -- ^ bc
        -> ConstPtr CChar       -- ^ cipher_name
        -> IO CInt

-- | Reinitializes the block cipher
foreign import capi "botan/ffi.h botan_block_cipher_clear"
    botan_block_cipher_clear
        :: BotanBlockCipher -- ^ bc
        -> IO CInt          -- ^ 0 on success, a negative value on failure

-- | Set the key for a block cipher instance
foreign import capi "botan/ffi.h botan_block_cipher_set_key"
    botan_block_cipher_set_key
        :: BotanBlockCipher -- ^ bc
        -> ConstPtr Word8   -- ^ key[]
        -> CSize            -- ^ len
        -> IO CInt

-- | Return the positive block size of this block cipher, or negative to indicate an error
foreign import capi "botan/ffi.h botan_block_cipher_block_size"
    botan_block_cipher_block_size
        :: BotanBlockCipher -- ^ bc
        -> IO CInt

-- | Encrypt one or more blocks with the cipher
foreign import capi "botan/ffi.h botan_block_cipher_encrypt_blocks"
    botan_block_cipher_encrypt_blocks
        :: BotanBlockCipher -- ^ bc
        -> ConstPtr Word8   -- ^ in[]
        -> Ptr Word8        -- ^ out[]
        -> CSize            -- ^ blocks
        -> IO CInt

-- | Decrypt one or more blocks with the cipher
foreign import capi "botan/ffi.h botan_block_cipher_decrypt_blocks"
    botan_block_cipher_decrypt_blocks
        :: BotanBlockCipher -- ^ bc
        -> ConstPtr Word8   -- ^ in[]
        -> Ptr Word8        -- ^ out[]
        -> CSize            -- ^ blocks
        -> IO CInt

-- | Get the name of this block cipher
foreign import capi "botan/ffi.h botan_block_cipher_name"
    botan_block_cipher_name
        :: BotanBlockCipher -- ^ cipher the object to read
        -> Ptr CChar        -- ^ name output buffer
        -> Ptr CSize        -- ^ name_len on input, the length of buffer, on success the number of bytes written
        -> IO CInt

-- | Get the key length limits of this block cipher
foreign import capi "botan/ffi.h botan_block_cipher_get_keyspec"
    botan_block_cipher_get_keyspec
        :: BotanBlockCipher -- ^ cipher the object to read
        -> Ptr CSize        -- ^ out_minimum_keylength if non-NULL, will be set to minimum keylength of cipher
        -> Ptr CSize        -- ^ out_maximum_keylength if non-NULL, will be set to maximum keylength of cipher
        -> Ptr CSize        -- ^ out_keylength_modulo if non-NULL will be set to byte multiple of valid keys
        -> IO CInt
