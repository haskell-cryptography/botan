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

pattern BOTAN_BLOCK_CIPHER_128_AES_128
    ,   BOTAN_BLOCK_CIPHER_128_AES_192
    ,   BOTAN_BLOCK_CIPHER_128_AES_256
    ,   BOTAN_BLOCK_CIPHER_128_ARIA_128
    ,   BOTAN_BLOCK_CIPHER_128_ARIA_192
    ,   BOTAN_BLOCK_CIPHER_128_ARIA_256
    ,   BOTAN_BLOCK_CIPHER_128_CAMELLIA_128
    ,   BOTAN_BLOCK_CIPHER_128_CAMELLIA_192
    ,   BOTAN_BLOCK_CIPHER_128_CAMELLIA_256
    ,   BOTAN_BLOCK_CIPHER_128_NOEKEON
    ,   BOTAN_BLOCK_CIPHER_128_SEED
    ,   BOTAN_BLOCK_CIPHER_128_SM4
    ,   BOTAN_BLOCK_CIPHER_128_SERPENT
    ,   BOTAN_BLOCK_CIPHER_128_TWOFISH
    :: (Eq a, IsString a) => a

pattern BOTAN_BLOCK_CIPHER_128_AES_128      = "AES-128"
pattern BOTAN_BLOCK_CIPHER_128_AES_192      = "AES-192"
pattern BOTAN_BLOCK_CIPHER_128_AES_256      = "AES-256"
pattern BOTAN_BLOCK_CIPHER_128_ARIA_128     = "ARIA-128"
pattern BOTAN_BLOCK_CIPHER_128_ARIA_192     = "ARIA-192"
pattern BOTAN_BLOCK_CIPHER_128_ARIA_256     = "ARIA-256"
pattern BOTAN_BLOCK_CIPHER_128_CAMELLIA_128 = "Camellia-128"
pattern BOTAN_BLOCK_CIPHER_128_CAMELLIA_192 = "Camellia-192"
pattern BOTAN_BLOCK_CIPHER_128_CAMELLIA_256 = "Camellia-256"
pattern BOTAN_BLOCK_CIPHER_128_NOEKEON      = "Noekeon"
pattern BOTAN_BLOCK_CIPHER_128_SEED         = "SEED"
pattern BOTAN_BLOCK_CIPHER_128_SM4          = "SM4"
pattern BOTAN_BLOCK_CIPHER_128_SERPENT      = "Serpent"
pattern BOTAN_BLOCK_CIPHER_128_TWOFISH      = "Twofish"

pattern BOTAN_BLOCK_CIPHER_BLOWFISH
    ,   BOTAN_BLOCK_CIPHER_CAST_128
    ,   BOTAN_BLOCK_CIPHER_DES
    ,   BOTAN_BLOCK_CIPHER_TRIPLEDES
    ,   BOTAN_BLOCK_CIPHER_GOST_28147_89
    ,   BOTAN_BLOCK_CIPHER_IDEA
    ,   BOTAN_BLOCK_CIPHER_SHACAL2
    ,   BOTAN_BLOCK_CIPHER_THREEFISH_512
    :: (Eq a, IsString a) => a

pattern BOTAN_BLOCK_CIPHER_BLOWFISH         = "Blowfish"
pattern BOTAN_BLOCK_CIPHER_CAST_128         = "CAST-128"
pattern BOTAN_BLOCK_CIPHER_DES              = "DES"
pattern BOTAN_BLOCK_CIPHER_TRIPLEDES        = "TripleDES"
pattern BOTAN_BLOCK_CIPHER_GOST_28147_89    = "GOST-28147-89"
pattern BOTAN_BLOCK_CIPHER_IDEA             = "IDEA"
pattern BOTAN_BLOCK_CIPHER_SHACAL2          = "SHACAL2"
pattern BOTAN_BLOCK_CIPHER_THREEFISH_512    = "Threefish-512"

-- | Initialize a block cipher object
foreign import capi safe "botan/ffi.h botan_block_cipher_init"
    botan_block_cipher_init
        :: Ptr BotanBlockCipher -- ^ __bc__
        -> ConstPtr CChar       -- ^ __cipher_name__
        -> IO CInt

-- | Reinitializes the block cipher
foreign import capi safe "botan/ffi.h botan_block_cipher_clear"
    botan_block_cipher_clear
        :: BotanBlockCipher -- ^ __bc__
        -> IO CInt          -- ^ 0 on success, a negative value on failure

-- | Set the key for a block cipher instance
foreign import capi safe "botan/ffi.h botan_block_cipher_set_key"
    botan_block_cipher_set_key
        :: BotanBlockCipher -- ^ __bc__
        -> ConstPtr Word8   -- ^ __key[]__
        -> CSize            -- ^ __len__
        -> IO CInt

-- | Return the positive block size of this block cipher, or negative to indicate an error
foreign import capi safe "botan/ffi.h botan_block_cipher_block_size"
    botan_block_cipher_block_size
        :: BotanBlockCipher -- ^ __bc__
        -> IO CInt

-- | Encrypt one or more blocks with the cipher
foreign import capi safe "botan/ffi.h botan_block_cipher_encrypt_blocks"
    botan_block_cipher_encrypt_blocks
        :: BotanBlockCipher -- ^ __bc__
        -> ConstPtr Word8   -- ^ __in[]__
        -> Ptr Word8        -- ^ __out[]__
        -> CSize            -- ^ __blocks__
        -> IO CInt

-- | Decrypt one or more blocks with the cipher
foreign import capi safe "botan/ffi.h botan_block_cipher_decrypt_blocks"
    botan_block_cipher_decrypt_blocks
        :: BotanBlockCipher -- ^ __bc__
        -> ConstPtr Word8   -- ^ __in[]__
        -> Ptr Word8        -- ^ __out[]__
        -> CSize            -- ^ __blocks__
        -> IO CInt

-- | Get the name of this block cipher
foreign import capi safe "botan/ffi.h botan_block_cipher_name"
    botan_block_cipher_name
        :: BotanBlockCipher -- ^ __cipher__: the object to read
        -> Ptr CChar        -- ^ __name__: output buffer
        -> Ptr CSize        -- ^ __name_len__: on input, the length of buffer, on success the number of bytes written
        -> IO CInt

-- | Get the key length limits of this block cipher
foreign import capi safe "botan/ffi.h botan_block_cipher_get_keyspec"
    botan_block_cipher_get_keyspec
        :: BotanBlockCipher -- ^ __cipher__: the object to read
        -> Ptr CSize        -- ^ __out_minimum_keylength__: if non-NULL, will be set to minimum keylength of cipher
        -> Ptr CSize        -- ^ __out_maximum_keylength__: if non-NULL, will be set to maximum keylength of cipher
        -> Ptr CSize        -- ^ __out_keylength_modulo__: if non-NULL will be set to byte multiple of valid keys
        -> IO CInt
