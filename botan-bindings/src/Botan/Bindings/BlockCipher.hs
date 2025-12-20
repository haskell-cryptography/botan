{-|
Module      : Botan.Binding.BlockCipher
Description : Raw Block Cipher (PRP) interface
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

This module is based on the [Block
Ciphers](https://botan.randombit.net/handbook/api_ref/ffi.html#block-ciphers)
section of the C Botan FFI documentation, and on the [Block
Ciphers](https://botan.randombit.net/handbook/api_ref/block_cipher.html) section
of the C++ API reference.
-}

{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE OverloadedStrings #-}

module Botan.Bindings.BlockCipher (
    BotanBlockCipherStruct
  , BotanBlockCipher (..)
  , botan_block_cipher_destroy
  , botan_block_cipher_init
  , botan_block_cipher_clear
  , botan_block_cipher_set_key
  , botan_block_cipher_block_size
  , botan_block_cipher_encrypt_blocks
  , botan_block_cipher_decrypt_blocks
  , botan_block_cipher_name
  , botan_block_cipher_get_keyspec
    -- * Available ciphers
    -- $available-ciphers
  , pattern BOTAN_BLOCK_CIPHER_AES_128
  , pattern BOTAN_BLOCK_CIPHER_AES_192
  , pattern BOTAN_BLOCK_CIPHER_AES_256
  , pattern BOTAN_BLOCK_CIPHER_ARIA_128
  , pattern BOTAN_BLOCK_CIPHER_ARIA_192
  , pattern BOTAN_BLOCK_CIPHER_ARIA_256
  , pattern BOTAN_BLOCK_CIPHER_BLOWFISH
  , pattern BOTAN_BLOCK_CIPHER_CAMELLIA_128
  , pattern BOTAN_BLOCK_CIPHER_CAMELLIA_192
  , pattern BOTAN_BLOCK_CIPHER_CAMELLIA_256
  , pattern BOTAN_BLOCK_CIPHER_CASCADE
  , pattern BOTAN_BLOCK_CIPHER_CAST_128
  , pattern BOTAN_BLOCK_CIPHER_DES
  , pattern BOTAN_BLOCK_CIPHER_TRIPLEDES
  , pattern BOTAN_BLOCK_CIPHER_GOST_28147_89
  , pattern BOTAN_BLOCK_CIPHER_IDEA
  , pattern BOTAN_BLOCK_CIPHER_LION
  , pattern BOTAN_BLOCK_CIPHER_NOEKEON
  , pattern BOTAN_BLOCK_CIPHER_SEED
  , pattern BOTAN_BLOCK_CIPHER_SERPENT
  , pattern BOTAN_BLOCK_CIPHER_SHACAL2
  , pattern BOTAN_BLOCK_CIPHER_SM4
  , pattern BOTAN_BLOCK_CIPHER_THREEFISH_512
  , pattern BOTAN_BLOCK_CIPHER_TWOFISH
  ) where

import           Botan.Bindings.ConstPtr
import           Data.String
import           Data.Word
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Ptr
import           Foreign.Storable

{-------------------------------------------------------------------------------
  Block ciphers
-------------------------------------------------------------------------------}

-- | Opaque BlockCipher struct
data {-# CTYPE "botan/ffi.h" "struct botan_block_cipher_struct" #-} BotanBlockCipherStruct

-- | Botan BlockCipher object
newtype {-# CTYPE "botan/ffi.h" "botan_block_cipher_t" #-} BotanBlockCipher
    = MkBotanBlockCipher { runBotanBlockCipher :: Ptr BotanBlockCipherStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy a block cipher object
--
-- NOTE: this a binding to the /address/ of the @botan_block_cipher_destroy@ C
-- function.
foreign import capi safe "botan/ffi.h &botan_block_cipher_destroy"
  botan_block_cipher_destroy
    :: FinalizerPtr BotanBlockCipherStruct

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

{-------------------------------------------------------------------------------
  Available ciphers
-------------------------------------------------------------------------------}

{- $available-ciphers

A number of algorithms are available to be used as block ciphers. An algorithm
is selected by passing the /algorithm specification name/ of the algorithm as a
string to the block cipher functions. In some cases an algorithm specification
name is just the /algorithm name/, like @"AES-128"@. In other cases an algorithm
specification name is a combination of an algorithm name paired with some
parameters, such as @"Cascade(Serpent, AES-256)"@ where @"Cascade"@ is the
algorithm name followed by a 2-tuple of parameters. Pattern synonyms are
included for each available /algorithm name/. Where necessary, such as in the
@"Cascade"@ case, these algorithm names should be manually extended to full
algorithm specification names.

WARNING: 64-bit block ciphers should be avoided.

WARNING: the @Kuznyechik@ block ciphier is not included because its security is
disputed.

See the [Available
Ciphers](https://botan.randombit.net/handbook/api_ref/block_cipher.html#available-ciphers)
section of the C++ API reference for more information about available ciphers.
-}

pattern
    BOTAN_BLOCK_CIPHER_AES_128
  , BOTAN_BLOCK_CIPHER_AES_192
  , BOTAN_BLOCK_CIPHER_AES_256
  , BOTAN_BLOCK_CIPHER_ARIA_128
  , BOTAN_BLOCK_CIPHER_ARIA_192
  , BOTAN_BLOCK_CIPHER_ARIA_256
  , BOTAN_BLOCK_CIPHER_BLOWFISH
  , BOTAN_BLOCK_CIPHER_CAMELLIA_128
  , BOTAN_BLOCK_CIPHER_CAMELLIA_192
  , BOTAN_BLOCK_CIPHER_CAMELLIA_256
  , BOTAN_BLOCK_CIPHER_CASCADE
  , BOTAN_BLOCK_CIPHER_CAST_128
  , BOTAN_BLOCK_CIPHER_DES
  , BOTAN_BLOCK_CIPHER_TRIPLEDES
  , BOTAN_BLOCK_CIPHER_GOST_28147_89
  , BOTAN_BLOCK_CIPHER_IDEA
  , BOTAN_BLOCK_CIPHER_LION
  , BOTAN_BLOCK_CIPHER_NOEKEON
  , BOTAN_BLOCK_CIPHER_SEED
  , BOTAN_BLOCK_CIPHER_SERPENT
  , BOTAN_BLOCK_CIPHER_SHACAL2
  , BOTAN_BLOCK_CIPHER_SM4
  , BOTAN_BLOCK_CIPHER_THREEFISH_512
  , BOTAN_BLOCK_CIPHER_TWOFISH
  :: (Eq a, IsString a) => a

-- |
-- >>> BOTAN_BLOCK_CIPHER_AES_128 @String
-- "AES-128"
pattern BOTAN_BLOCK_CIPHER_AES_128 = "AES-128"

-- |
-- >>> BOTAN_BLOCK_CIPHER_AES_192 @String
-- "AES-192"
pattern BOTAN_BLOCK_CIPHER_AES_192 = "AES-192"

-- |
-- >>> BOTAN_BLOCK_CIPHER_AES_256 @String
-- "AES-256"
pattern BOTAN_BLOCK_CIPHER_AES_256 = "AES-256"

-- |
-- >>> BOTAN_BLOCK_CIPHER_ARIA_128 @String
-- "ARIA-128"
pattern BOTAN_BLOCK_CIPHER_ARIA_128 = "ARIA-128"

-- |
-- >>> BOTAN_BLOCK_CIPHER_ARIA_192 @String
-- "ARIA-192"
pattern BOTAN_BLOCK_CIPHER_ARIA_192 = "ARIA-192"

-- |
-- >>> BOTAN_BLOCK_CIPHER_ARIA_256 @String
-- "ARIA-256"
pattern BOTAN_BLOCK_CIPHER_ARIA_256 = "ARIA-256"

-- |
-- >>> BOTAN_BLOCK_CIPHER_BLOWFISH @String
-- "Blowfish"
pattern BOTAN_BLOCK_CIPHER_BLOWFISH = "Blowfish"

-- |
-- >>> BOTAN_BLOCK_CIPHER_CAMELLIA_128 @String
-- "Camellia-128"
pattern BOTAN_BLOCK_CIPHER_CAMELLIA_128 = "Camellia-128"

-- |
-- >>> BOTAN_BLOCK_CIPHER_CAMELLIA_192 @String
-- "Camellia-192"
pattern BOTAN_BLOCK_CIPHER_CAMELLIA_192 = "Camellia-192"

-- |
-- >>> BOTAN_BLOCK_CIPHER_CAMELLIA_256 @String
-- "Camellia-256"
pattern BOTAN_BLOCK_CIPHER_CAMELLIA_256 = "Camellia-256"

-- |
-- >>> BOTAN_BLOCK_CIPHER_CASCADE @String
-- "Cascade"
pattern BOTAN_BLOCK_CIPHER_CASCADE = "Cascade"

-- |
-- >>> BOTAN_BLOCK_CIPHER_CAST_128 @String
-- "CAST-128"
pattern BOTAN_BLOCK_CIPHER_CAST_128 = "CAST-128"

-- |
-- >>> BOTAN_BLOCK_CIPHER_DES @String
-- "DES"
pattern BOTAN_BLOCK_CIPHER_DES = "DES"

-- |
-- >>> BOTAN_BLOCK_CIPHER_TRIPLEDES @String
-- "TripleDES"
pattern BOTAN_BLOCK_CIPHER_TRIPLEDES = "TripleDES"

-- |
-- >>> BOTAN_BLOCK_CIPHER_GOST_28147_89 @String
-- "GOST-28147-89"
pattern BOTAN_BLOCK_CIPHER_GOST_28147_89 = "GOST-28147-89"

-- |
-- >>> BOTAN_BLOCK_CIPHER_IDEA @String
-- "IDEA"
pattern BOTAN_BLOCK_CIPHER_IDEA = "IDEA"

-- |
-- >>> BOTAN_BLOCK_CIPHER_LION @String
-- "Lion"
pattern BOTAN_BLOCK_CIPHER_LION = "Lion"

-- |
-- >>> BOTAN_BLOCK_CIPHER_NOEKEON @String
-- "Noekeon"
pattern BOTAN_BLOCK_CIPHER_NOEKEON = "Noekeon"

-- |
-- >>> BOTAN_BLOCK_CIPHER_SEED @String
-- "SEED"
pattern BOTAN_BLOCK_CIPHER_SEED = "SEED"

-- |
-- >>> BOTAN_BLOCK_CIPHER_SERPENT @String
-- "Serpent"
pattern BOTAN_BLOCK_CIPHER_SERPENT = "Serpent"

-- |
-- >>> BOTAN_BLOCK_CIPHER_SHACAL2 @String
-- "SHACAL2"
pattern BOTAN_BLOCK_CIPHER_SHACAL2 = "SHACAL2"

-- |
-- >>> BOTAN_BLOCK_CIPHER_SM4 @String
-- "SM4"
pattern BOTAN_BLOCK_CIPHER_SM4 = "SM4"

-- |
-- >>> BOTAN_BLOCK_CIPHER_THREEFISH_512 @String
-- "Threefish-512"
pattern BOTAN_BLOCK_CIPHER_THREEFISH_512 = "Threefish-512"

-- |
-- >>> BOTAN_BLOCK_CIPHER_TWOFISH @String
-- "Twofish"
pattern BOTAN_BLOCK_CIPHER_TWOFISH = "Twofish"
