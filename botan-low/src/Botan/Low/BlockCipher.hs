{-|
Module      : Botan.Low.BlockCipher
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

{-# LANGUAGE OverloadedStrings #-}

module Botan.Low.BlockCipher (
    -- * Introduction
    -- $introduction
    -- * Example usage
    -- $usage
    -- * Block ciphers
    BlockCipher(..)
  , BlockCipherName
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
    -- * Available ciphers
    -- $available-ciphers
  , pattern AES128
  , pattern AES192
  , pattern AES256
  , pattern ARIA128
  , pattern ARIA192
  , pattern ARIA256
  , pattern Blowfish
  , pattern Camellia128
  , pattern Camellia192
  , pattern Camellia256
  , pattern Cascade
  , cascade
  , pattern CAST128
  , pattern DES
  , pattern TripleDES
  , pattern GOST_28147_89
  , pattern IDEA
  , pattern Lion
  , lion
  , pattern Noekeon
  , pattern SEED
  , pattern Serpent
  , pattern SHACAL2
  , pattern SM4
  , pattern Threefish512
  , pattern Twofish
    -- ** Convenience
  , blockCiphers
  , blockCipher128s
  , allBlockCiphers
  ) where

import           Botan.Bindings.BlockCipher
import           Botan.Bindings.ConstPtr (ConstPtr (..))
import           Botan.Low.Error.Internal
import           Botan.Low.Hash
import           Botan.Low.Internal.ByteString
import           Botan.Low.Internal.String
import           Botan.Low.Make
import           Botan.Low.Remake
import           Control.Monad
import           Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import qualified Data.ByteString.Char8 as BSC
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Ptr

{- $setup
>>> import Control.Monad
>>> import Botan.Low.Hash
-}

{-------------------------------------------------------------------------------
  Introduction
-------------------------------------------------------------------------------}

{- $introduction

A /block cipher/ is a deterministic, cryptographic primitive suitable for
encrypting or decrypting a single, fixed-size block of data at a time. Block
ciphers are used as building blocks for more complex cryptographic operations.
If you are looking to encrypt user data, you are probably looking for
"Botan.Low.Cipher" instead.
-}

{-------------------------------------------------------------------------------
  Example usage
-------------------------------------------------------------------------------}

{- $usage

Unless you need a specific block cipher, it is strongly recommended that you use
the 'AES256' algorithm.

>>> :{
{-# OPTIONS_GHC -Wall #-}
{-# LANGUAGE OverloadedStrings #-}
import Botan.Low.BlockCipher
import Botan.Low.RNG
import Control.Exception
import Data.ByteString as BS
:}

For this example, we will use the 'AES256' algorithm. To use a block cipher, we
first need a secret key of the appropriate length. Such keys should be generated
securely, but to keep it simple in this example, we will just use a random
number
generator to generate a secret key.

>>> :{
generateKey :: BlockCipher -> IO ByteString
generateKey blockCipher = do
    rng <- rngInit "user"
    (_,keySize,_) <- blockCipherGetKeyspec blockCipher
    key <- rngGet rng keySize
    pure key
:}

We can now initialise a block cipher object and set its secret key.

>>> :{
initBlockCipher :: IO BlockCipher
initBlockCipher = do
    blockCipher <- blockCipherInit AES256
    key <- generateKey blockCipher
    blockCipherSetKey blockCipher key
    pure blockCipher
:}

Using the initialised block cipher, we can now encrypt a message.
To encrypt a message, it must be a multiple of the block size.
To decrypt a message, simply reverse the process. As a sanity check,
we show that decryption after encryption yields the original message

>>> :{
roundtrip :: BlockCipher -> ByteString -> IO ()
roundtrip blockCipher message = do
    ciphertext <- blockCipherEncryptBlocks blockCipher message
    plaintext <- blockCipherDecryptBlocks blockCipher ciphertext
    print $ message == plaintext
:}

Now we tie together the program. We initialise the block cipher
(and set its secret key). Then, we generate a message, and check that it
roundtrips through the encryption and decryption functions.

>>> :{
main :: IO ()
main = do
    blockCipher <- initBlockCipher
    blockSize <- blockCipherBlockSize blockCipher
    -- AES256 block size is always 16 bytes
    let message = "0000DEADBEEF0000"
    assert (BS.length message == blockSize) $ pure ()
    roundtrip blockCipher message
:}

All that is left to do is run the program.

>>> main
True

-}

{-------------------------------------------------------------------------------
  Block ciphers
-------------------------------------------------------------------------------}

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
blockCipherInit ::
     BlockCipherName  -- ^ __cipher_name__
  -> IO BlockCipher   -- ^ __bc__
blockCipherInit = mkCreateObjectCString createBlockCipher botan_block_cipher_init

-- | Reinitializes a block cipher
--
-- You must call blockCipherSetKey in order to use the block cipher again.
blockCipherClear ::
     BlockCipher  -- ^ __bc__: The cipher object
  -> IO ()
blockCipherClear = mkWithObjectAction withBlockCipher botan_block_cipher_clear

-- | Set the key for a block cipher
--
-- Throws an error if the key is not valid.
blockCipherSetKey ::
     BlockCipher      -- ^ __bc__: The cipher object
  -> BlockCipherKey   -- ^ __key[]__: A cipher key
  -> IO ()
blockCipherSetKey = mkSetBytesLen withBlockCipher $ \cipher key ->
    botan_block_cipher_set_key cipher (ConstPtr key)

-- | Return the block size of a block cipher.
blockCipherBlockSize ::
     BlockCipher  -- ^ __bc__: The cipher object
  -> IO Int
blockCipherBlockSize = mkGetIntCode withBlockCipher botan_block_cipher_block_size

-- | Encrypt one or more blocks with a block cipher
--
-- Precondition: the length of the plaintext should be a multiple of the block
-- size, or this function throws an error.
blockCipherEncryptBlocks ::
     BlockCipher              -- ^ __bc__: The cipher object
  -> ByteString               -- ^ __in[]__: The plaintext
  -> IO BlockCipherCiphertext -- ^ __out[]__: The ciphertext
blockCipherEncryptBlocks blockCipher bytes = do
    blockSize <- blockCipherBlockSize blockCipher
    let (numBlocks,remBytes) = BS.length bytes `quotRem` blockSize
    when (remBytes /= 0) $
      error "blockCipherEncryptBlocks: length of the input plaintext is not a\
            \multiple of the block size"
    go (fromIntegral numBlocks)
  where
    go :: CSize -> IO BlockCipherCiphertext
    go numBlocks =
      withBlockCipher blockCipher $ \ blockCipherPtr ->
      asBytesLen bytes $ \ bytesPtr bytesLen ->
      allocBytes (fromIntegral bytesLen) $ \ destPtr ->
      throwBotanIfNegative_ $ botan_block_cipher_encrypt_blocks
          blockCipherPtr
          (ConstPtr bytesPtr)
          destPtr
          numBlocks

-- | Decrypt one or more blocks with a block cipher.
--
-- Precondition: the length of the ciphertext should be a multiple of the block size,
-- or this function throws an error.
--
-- If an incorrect key was set, the content of the decrypted plaintext is
-- unspecified.
blockCipherDecryptBlocks ::
     BlockCipher              -- ^ __bc__: The cipher object
  -> BlockCipherCiphertext    -- ^ __in[]__: The ciphertext
  -> IO ByteString            -- ^ __out[]__: The plaintext
blockCipherDecryptBlocks blockCipher bytes = do
    blockSize <- blockCipherBlockSize blockCipher
    let (numBlocks,remBytes) = BS.length bytes `quotRem` blockSize
    when (remBytes /= 0) $
      error "blockCipherDecryptBlocks: length of the input plaintext is not a\
            \multiple of the block size"
    go (fromIntegral numBlocks)
  where
    go :: CSize -> IO ByteString
    go numBlocks =
      withBlockCipher blockCipher $ \ blockCipherPtr ->
      asBytesLen bytes $ \ bytesPtr bytesLen ->
      allocBytes (fromIntegral bytesLen) $ \ destPtr ->
      throwBotanIfNegative_ $ botan_block_cipher_decrypt_blocks
          blockCipherPtr
          (ConstPtr bytesPtr)
          destPtr
          numBlocks

-- | Get the name of a block cipher.
--
-- This function is not guaranteed to return the same exact value as used to initialize the context.
blockCipherName ::
     BlockCipher          -- ^ __bc__
  -> IO BlockCipherName   -- ^ __name__
blockCipherName = mkGetCString withBlockCipher botan_block_cipher_name

-- | Get the key specification of a block cipher
--
-- Returns the minimum, maximum, and modulo of valid keys.
blockCipherGetKeyspec ::
     BlockCipher      -- ^ __bc__
  -> IO (Int,Int,Int) -- ^ __(min,max,mod)__
blockCipherGetKeyspec = mkGetSizes3 withBlockCipher botan_block_cipher_get_keyspec

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
algorithm specification names, or by using utility functions like 'cascade' that
this module also provides.

WARNING: 64-bit block ciphers should be avoided.

WARNING: the @Kuznyechik@ block ciphier is not included because its security is
disputed.

See the [Available
Ciphers](https://botan.randombit.net/handbook/api_ref/block_cipher.html#available-ciphers)
section of the C++ API reference for more information about available ciphers.

Each algorithm expects a certain size of block to encrypt or decrypt. For the
available algorithms, these block sizes in number of bits are listed below. For
algorithms that require parameters, the block size may vary depending on the
parameters. For the examples below, we pick some arbitrary parameters.

>>> :{
forM_ allBlockCiphers $ \name -> do
  let name' =
        if name == Cascade
        then cascade Serpent AES256
        else if name == Lion
        then lion SHA1 "RC4" (Just 64)
        else name
  blockCipher <- blockCipherInit name'
  sz <- blockCipherBlockSize blockCipher
  print (name, sz * 8)
:}
("AES-128",128)
("AES-192",128)
("AES-256",128)
("ARIA-128",128)
("ARIA-192",128)
("ARIA-256",128)
("Camellia-128",128)
("Camellia-192",128)
("Camellia-256",128)
("Noekeon",128)
("SEED",128)
("Serpent",128)
("SM4",128)
("Twofish",128)
("Blowfish",64)
("Cascade",128)
("CAST-128",64)
("DES",64)
("TripleDES",64)
("GOST-28147-89",64)
("IDEA",64)
("Lion",512)
("SHACAL2",256)
("Threefish-512",512)

-}

-- | Block cipher name type
type BlockCipherName = ByteString

pattern
    AES128
  , AES192
  , AES256
  , ARIA128
  , ARIA192
  , ARIA256
  , Blowfish
  , Camellia128
  , Camellia192
  , Camellia256
  , Cascade
  , CAST128
  , DES
  , TripleDES
  , GOST_28147_89
  , IDEA
  , Lion
  , Noekeon
  , SEED
  , Serpent
  , SHACAL2
  , SM4
  , Threefish512
  , Twofish
  :: BlockCipherName

pattern AES128        = BOTAN_BLOCK_CIPHER_AES_128
pattern AES192        = BOTAN_BLOCK_CIPHER_AES_192
pattern AES256        = BOTAN_BLOCK_CIPHER_AES_256
pattern ARIA128       = BOTAN_BLOCK_CIPHER_ARIA_128
pattern ARIA192       = BOTAN_BLOCK_CIPHER_ARIA_192
pattern ARIA256       = BOTAN_BLOCK_CIPHER_ARIA_256
pattern Blowfish      = BOTAN_BLOCK_CIPHER_BLOWFISH
pattern Camellia128   = BOTAN_BLOCK_CIPHER_CAMELLIA_128
pattern Camellia192   = BOTAN_BLOCK_CIPHER_CAMELLIA_192
pattern Camellia256   = BOTAN_BLOCK_CIPHER_CAMELLIA_256
pattern Cascade       = BOTAN_BLOCK_CIPHER_CASCADE

-- |
-- >>> cascade Serpent AES256
-- "Cascade(Serpent,AES-256)"
cascade :: BlockCipherName -> BlockCipherName -> BlockCipherName
cascade ciph1 ciph2 = Cascade /$ ciph1 <> "," <> ciph2

pattern CAST128       = BOTAN_BLOCK_CIPHER_CAST_128
pattern DES           = BOTAN_BLOCK_CIPHER_DES
pattern TripleDES     = BOTAN_BLOCK_CIPHER_TRIPLEDES
pattern GOST_28147_89 = BOTAN_BLOCK_CIPHER_GOST_28147_89
pattern IDEA          = BOTAN_BLOCK_CIPHER_IDEA
pattern Lion          = BOTAN_BLOCK_CIPHER_LION

-- |
-- >>> lion SHA1 "RC4" Nothing
-- "Lion(SHA-1,RC4)"
--
-- >>> lion SHA1 "RC4" (Just 64)
-- "Lion(SHA-1,RC4,64)"
lion :: HashName -> ByteString -> Maybe Word -> BlockCipherName
lion hashFun streamCiph optBlockSize =
    Lion /$ hashFun <> "," <> streamCiph <> case optBlockSize of
      Nothing        -> ""
      Just blockSize -> "," <> BSC.pack (show blockSize)

pattern Noekeon       = BOTAN_BLOCK_CIPHER_NOEKEON
pattern SEED          = BOTAN_BLOCK_CIPHER_SEED
pattern Serpent       = BOTAN_BLOCK_CIPHER_SERPENT
pattern SHACAL2       = BOTAN_BLOCK_CIPHER_SHACAL2
pattern SM4           = BOTAN_BLOCK_CIPHER_SM4
pattern Threefish512  = BOTAN_BLOCK_CIPHER_THREEFISH_512
pattern Twofish       = BOTAN_BLOCK_CIPHER_TWOFISH

blockCipher128s :: [BlockCipherName]
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
    , Serpent
    , SM4
    , Twofish
    ]

blockCiphers :: [BlockCipherName]
blockCiphers =
    [ Blowfish
    , Cascade
    , CAST128
    , DES
    , TripleDES
    , GOST_28147_89
    , IDEA
    , Lion
    , SHACAL2
    , Threefish512
    ]

allBlockCiphers :: [BlockCipherName]
allBlockCiphers = blockCipher128s ++ blockCiphers
