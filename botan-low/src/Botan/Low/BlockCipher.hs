{-|
Module      : Botan.Low.BlockCipher
Description : Raw Block Cipher (PRP) interface
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

This is a ‘raw’ interface to ECB mode block ciphers.
Most applications want the higher level cipher API which provides authenticated encryption.
This API exists as an escape hatch for applications which need to implement custom primitives using a PRP.
-}

module Botan.Low.BlockCipher (

  -- * Block ciphers
  -- $introduction

  -- * Usage
  -- $usage

    BlockCipher(..)
  , BlockCipherName
  , BlockCipher128Name
  , BlockCipherKey
  , BlockCipherCiphertext
  , withBlockCipher
  , blockCipherInit
  , blockCipherDestroy
  , blockCipherName
  , blockCipherBlockSize
  , blockCipherGetKeyspec
  , blockCipherSetKey
  , blockCipherEncryptBlocks
  , blockCipherDecryptBlocks
  , blockCipherClear

  -- * 64-bit block ciphers

  , pattern Blowfish
  , pattern CAST128
  , pattern DES
  , pattern TripleDES
  , pattern GOST_28147_89
  , pattern IDEA

  -- * 128-bit block ciphers

  , pattern AES128
  , pattern AES192
  , pattern AES256
  , pattern ARIA128
  , pattern ARIA192
  , pattern ARIA256
  , pattern Camellia128
  , pattern Camellia192
  , pattern Camellia256
  , pattern Noekeon
  , pattern SEED
  , pattern SM4
  , pattern Serpent
  , pattern Twofish

  -- * 256-bit block ciphers

  , pattern SHACAL2

  -- * 512-bit block ciphers

  , pattern Threefish512

  -- * Convenience

  , blockCiphers
  , blockCipher128s
  , allBlockCiphers

  ) where

import           Botan.Bindings.BlockCipher

import           Botan.Low.Error
import           Botan.Low.Make
import           Botan.Low.Prelude
import           Botan.Low.Remake

{- $introduction

A `block cipher` is a deterministic, cryptographic primitive suitable for
encrypting or decrypting a single, fixed-size block of data at a time. Block
ciphers are used as building blocks for more complex cryptographic operations.
If you are looking to encrypt user data, you are probably looking for
`Botan.Low.Cipher` instead.

-}

{- $usage

Unless you need a specific block cipher, it is strongly recommended that you use the `AES256` algorithm.

> import Botan.Low.BlockCipher
> blockCipher <- blockCipherInit AES256

To use a block cipher, we first need to generate (if we haven't already) a secret key.

> import Botan.Low.RNG
> rng <- rngInit "user"
> -- We will use the maximum key size; AES256 keys are always 16 bytes
> (_,keySize,_) <- blockCipherGetKeyspec blockCipher
> -- Block cipher keys are randomly generated
> key <- rngGet rng keySize

After the key is generated, we must set it as the block cipher key:

> blockCipherSetKey blockCipher key

To encrypt a message, it must be a multiple of the block size.

> blockSize <- blockCipherBlockSize blockCipher
> -- AES256 block size is always 16 bytes
> message = "0000DEADBEEF0000" :: ByteString
> ciphertext <- blockCipherEncryptBlocks blockCipher message

To decrypt a message, simply reverse the process:

> plaintext <- blockCipherDecryptBlocks blockCipher ciphertext
> message == plaintext -- True

-}

-- | A mutable block cipher object
newtype BlockCipher = MkBlockCipher { getBlockCipherForeignPtr :: ForeignPtr BotanBlockCipherStruct }

withBlockCipher     :: BlockCipher -> (BotanBlockCipher -> IO a) -> IO a
-- | Destroy a block cipher object immediately
blockCipherDestroy  :: BlockCipher -> IO ()
createBlockCipher   :: (Ptr BotanBlockCipher -> IO CInt) -> IO BlockCipher
(withBlockCipher, blockCipherDestroy, createBlockCipher)
    = mkBindings
        MkBotanBlockCipher runBotanBlockCipher
        MkBlockCipher getBlockCipherForeignPtr
        botan_block_cipher_destroy


-- | A block cipher secret key
type BlockCipherKey = ByteString

-- | A block cipher ciphertext
type BlockCipherCiphertext = ByteString

-- | Initialize a block cipher object
blockCipherInit
    :: BlockCipherName  -- ^ __cipher_name__
    -> IO BlockCipher   -- ^ __bc__
blockCipherInit = mkCreateObjectCString createBlockCipher botan_block_cipher_init

{- |
Reinitializes a block cipher

You must call blockCipherSetKey in order to use the block cipher again.
-}
blockCipherClear
    :: BlockCipher  -- ^ __bc__: The cipher object
    -> IO ()
blockCipherClear = mkWithObjectAction withBlockCipher botan_block_cipher_clear

{- |
Set the key for a block cipher

Throws an error if the key is not valid.
-}
blockCipherSetKey
    :: BlockCipher      -- ^ __bc__: The cipher object
    -> BlockCipherKey   -- ^ __key[]__: A cipher key
    -> IO ()
blockCipherSetKey = mkSetBytesLen withBlockCipher (\ cipher key -> botan_block_cipher_set_key cipher (ConstPtr key))

-- | Return the block size of a block cipher.
blockCipherBlockSize
    :: BlockCipher  -- ^ __bc__: The cipher object
    -> IO Int
blockCipherBlockSize = mkGetIntCode withBlockCipher botan_block_cipher_block_size

{- |
Encrypt one or more blocks with a block cipher

The plaintext length should be a multiple of the block size.
-}
blockCipherEncryptBlocks
    :: BlockCipher              -- ^ __bc__: The cipher object
    -> ByteString               -- ^ __in[]__: The plaintext
    -> IO BlockCipherCiphertext -- ^ __out[]__: The ciphertext
blockCipherEncryptBlocks blockCipher bytes = withBlockCipher blockCipher $ \ blockCipherPtr -> do
    asBytesLen bytes $ \ bytesPtr bytesLen -> do
        allocBytes (fromIntegral bytesLen) $ \ destPtr -> do
            throwBotanIfNegative_ $ botan_block_cipher_encrypt_blocks
                blockCipherPtr
                (ConstPtr bytesPtr)
                destPtr
                bytesLen

{- |
Decrypt one or more blocks with a block cipher.

The ciphertext length should be a multiple of the block size.

If an incorrect key was set, the content of the decrypted plaintext is unspecified.
-}
blockCipherDecryptBlocks
    :: BlockCipher              -- ^ __bc__: The cipher object
    -> BlockCipherCiphertext    -- ^ __in[]__: The ciphertext
    -> IO ByteString            -- ^ __out[]__: The plaintext
blockCipherDecryptBlocks blockCipher bytes = withBlockCipher blockCipher $ \ blockCipherPtr -> do
    asBytesLen bytes $ \ bytesPtr bytesLen -> do
        allocBytes (fromIntegral bytesLen) $ \ destPtr -> do
            throwBotanIfNegative_ $ botan_block_cipher_decrypt_blocks
                blockCipherPtr
                (ConstPtr bytesPtr)
                destPtr
                bytesLen

{- |
Get the name of a block cipher.

This function is not guaranteed to return the same exact value as used to initialize the context.
-}
blockCipherName
    :: BlockCipher          -- ^ __bc__
    -> IO BlockCipherName   -- ^ __name__
blockCipherName = mkGetCString withBlockCipher botan_block_cipher_name

{- |
Get the key specification of a block cipher

Returns the minimum, maximum, and modulo of valid keys.
-}
blockCipherGetKeyspec
    :: BlockCipher      -- ^ __bc__
    -> IO (Int,Int,Int) -- ^ __(min,max,mod)__
blockCipherGetKeyspec = mkGetSizes3 withBlockCipher botan_block_cipher_get_keyspec

-- | 128-bit block cipher name type
type BlockCipher128Name = BlockCipherName

pattern AES128
    ,   AES192
    ,   AES256
    ,   ARIA128
    ,   ARIA192
    ,   ARIA256
    ,   Camellia128
    ,   Camellia192
    ,   Camellia256
    ,   Noekeon
    ,   SEED
    ,   SM4
    ,   Serpent
    ,   Twofish
    :: BlockCipher128Name

pattern AES128      = BOTAN_BLOCK_CIPHER_128_AES_128
pattern AES192      = BOTAN_BLOCK_CIPHER_128_AES_192
pattern AES256      = BOTAN_BLOCK_CIPHER_128_AES_256
pattern ARIA128     = BOTAN_BLOCK_CIPHER_128_ARIA_128
pattern ARIA192     = BOTAN_BLOCK_CIPHER_128_ARIA_192
pattern ARIA256     = BOTAN_BLOCK_CIPHER_128_ARIA_256
pattern Camellia128 = BOTAN_BLOCK_CIPHER_128_CAMELLIA_128
pattern Camellia192 = BOTAN_BLOCK_CIPHER_128_CAMELLIA_192
pattern Camellia256 = BOTAN_BLOCK_CIPHER_128_CAMELLIA_256
pattern Noekeon     = BOTAN_BLOCK_CIPHER_128_NOEKEON
pattern SEED        = BOTAN_BLOCK_CIPHER_128_SEED
pattern SM4         = BOTAN_BLOCK_CIPHER_128_SM4
pattern Serpent     = BOTAN_BLOCK_CIPHER_128_SERPENT
pattern Twofish     = BOTAN_BLOCK_CIPHER_128_TWOFISH

blockCipher128s :: [BlockCipher128Name]
blockCipher128s =
    [ AES128
    , AES192
    , AES256
    , ARIA128
    , ARIA192
    , ARIA256
    , Camellia128
    , Camellia192
    , Camellia256
    , Noekeon
    , SEED
    , SM4
    , Serpent
    , Twofish
    ]

-- | Block cipher name type
type BlockCipherName = ByteString

pattern Blowfish
    ,   CAST128
    ,   DES
    ,   TripleDES
    ,   GOST_28147_89
    ,   IDEA
    ,   SHACAL2
    ,   Threefish512
    :: BlockCipherName

pattern Blowfish        = BOTAN_BLOCK_CIPHER_BLOWFISH
pattern CAST128         = BOTAN_BLOCK_CIPHER_CAST_128
pattern DES             = BOTAN_BLOCK_CIPHER_DES
pattern TripleDES       = BOTAN_BLOCK_CIPHER_TRIPLEDES
pattern GOST_28147_89   = BOTAN_BLOCK_CIPHER_GOST_28147_89
pattern IDEA            = BOTAN_BLOCK_CIPHER_IDEA
pattern SHACAL2         = BOTAN_BLOCK_CIPHER_SHACAL2
pattern Threefish512    = BOTAN_BLOCK_CIPHER_THREEFISH_512

blockCiphers :: [BlockCipherName]
blockCiphers =
    [ Blowfish
    , CAST128
    , DES
    , TripleDES
    , GOST_28147_89
    , IDEA
    , SHACAL2
    , Threefish512
    ]

allBlockCiphers :: [BlockCipherName]
allBlockCiphers = blockCipher128s ++ blockCiphers
