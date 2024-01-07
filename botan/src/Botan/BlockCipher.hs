{-|
Module      : Botan.BlockCipher
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

module Botan.BlockCipher -- where
(

-- * BlockCipher
-- $introduction

-- * Usage
-- $usage

-- * Block ciphers

  BlockCipher(..)
-- , newBlockCipher
, blockCipherName

, BlockCipher128(..)
-- , newBlockCipher128
, blockCipher128Name

-- * AES
, AES(..)
-- , newAES

-- * ARIA
, ARIA(..)
-- , newARIA

-- * Camellia
, Camellia(..)
-- , newCamellia

-- * Keys
, BlockCipherKeySpec(..)
, blockCipherKeySpec
, BlockCipherKey(..)
, newBlockCipherKey
, BlockCipher128Key(..)
-- , newBlockCipher128Key

-- * Easy API

, encryptBlocks
, encryptBlocksGeneratingKey
, decryptBlocks

-- * Mutable API

) where

import qualified Botan.Low.BlockCipher as Low

import Botan.Prelude

import Botan.RNG

-- NOTE: No nonces at this level - these are raw block ciphers.
--  For block ciphers with nonces, see Cipher

{- $introduction

-}

{- $usage

-}

data BlockCipher
    = BlockCipher128 BlockCipher128
    | Blowfish
    -- | Cascade BlockCipher BlockCipher
    | CAST_128
    | DES
    | TripleDES
    | GOST_28147_89
    | IDEA
    -- | Lion HashSpec StreamCipher Int
    | SHACAL2
    | Threefish_512
    deriving (Show, Eq)

blockCipherName :: BlockCipher -> Low.BlockCipherName
blockCipherName spec = case spec of
    BlockCipher128 bc128    -> blockCipher128Name bc128
    Blowfish                -> Low.Blowfish
    -- Cascade bca bcb -> "Cascade(" <> blockCipherName bca <> "," <> blockCipherName bcb <> ")"
    CAST_128                -> Low.CAST_128
    DES                     -> Low.DES
    TripleDES               -> Low.TripleDES
    GOST_28147_89           -> Low.GOST_28147_89
    -- Lion h sc sz    -> "Lion(" <> hashSpecName h <> "," <> streamCipherName sc <> "," <> showBytes sz <> ")"
    IDEA                    -> Low.IDEA
    SHACAL2                 -> Low.SHACAL2
    Threefish_512           -> Low.Threefish_512

data BlockCipher128
    = AES AES
    | ARIA ARIA
    | Camellia Camellia
    | Noekeon
    | SEED
    | Serpent
    | SM4
    | Twofish
    deriving (Show, Eq)

type BlockCipher128Name = ByteString

blockCipher128Name :: BlockCipher128 -> BlockCipher128Name
blockCipher128Name spec = case spec of
    AES aes         -> aesName aes
    ARIA aria       -> ariaName aria
    Camellia cam    -> camelliaName cam
    Noekeon         -> Low.Noekeon
    SEED            -> Low.SEED
    Serpent         -> Low.Serpent
    SM4             -> Low.SM4
    Twofish         -> Low.Twofish

data AES
    = AES_128
    | AES_192
    | AES_256
    deriving (Show, Eq)

type AESName = ByteString

aesName :: AES -> AESName
aesName AES_128 = Low.AES_128
aesName AES_192 = Low.AES_192
aesName AES_256 = Low.AES_256

data ARIA
    = ARIA_128
    | ARIA_192
    | ARIA_256
    deriving (Show, Eq)

type ARIAName = ByteString

ariaName :: ARIA -> ARIAName
ariaName ARIA_128 = Low.ARIA_128
ariaName ARIA_192 = Low.ARIA_192
ariaName ARIA_256 = Low.ARIA_256

data Camellia
    = Camellia_128
    | Camellia_192
    | Camellia_256
    deriving (Show, Eq)

type CamelliaName = ByteString

camelliaName :: Camellia -> CamelliaName
camelliaName Camellia_128 = Low.Camellia_128
camelliaName Camellia_192 = Low.Camellia_192
camelliaName Camellia_256 = Low.Camellia_256

-- Keys

data BlockCipherKeySpec
    = BlockCipherKeySpec
    { blockCipherKeyMinimum :: Int
    , blockCipherKeyMaximum :: Int
    , blockCipherKeyModulo  :: Int
    }

-- NOTE: May be obviated by key-len == blockSize
blockCipherKeySpec :: BlockCipher -> BlockCipherKeySpec
blockCipherKeySpec = undefined

type BlockCipherKey = ByteString

newBlockCipherKey :: (MonadRandomIO m) => m BlockCipherKey
newBlockCipherKey = undefined

type BlockCipher128Key = BlockCipherKey

-- Easy API

encryptBlocks
    :: BlockCipher
    -> BlockCipherKey
    -> ByteString
    -> Maybe ByteString 
encryptBlocks = undefined

encryptBlocksGeneratingKey
    :: (MonadRandomIO m)
    => BlockCipher
    -> ByteString
    -> m (Maybe (ByteString, BlockCipherKey))
encryptBlocksGeneratingKey = undefined

decryptBlocks
    :: BlockCipher
    -> BlockCipherKey
    -> ByteString
    -> Maybe ByteString 
decryptBlocks = undefined

-- ORIGINAL

blockCipherCtxInit :: BlockCipher -> Low.BlockCipher
blockCipherCtxInit = blockCipherCtxInitName . blockCipherName

blockCipherCtxInitName :: Low.BlockCipherName -> Low.BlockCipher
blockCipherCtxInitName = unsafePerformIO1 Low.blockCipherInit

-- TODO:
-- blockCipherCtxBlockCipher
--     :: Low.BlockCipher  -- ^ The cipher object
--     -> BlockCipher
-- blockCipherCtxName = undefined

blockCipherCtxName
    :: Low.BlockCipher  -- ^ The cipher object
    -> Low.BlockCipherName
blockCipherCtxName = unsafePerformIO1 Low.blockCipherName

blockCipherCtxBlockSize
    :: Low.BlockCipher  -- ^ The cipher object
    -> Int
blockCipherCtxBlockSize = unsafePerformIO1 Low.blockCipherBlockSize

blockCipherCtxGetKeyspec
    :: Low.BlockCipher  -- ^ The cipher object
    -> BlockCipherKeySpec
blockCipherCtxGetKeyspec ctx = unsafePerformIO $ do
    (mn,mx,md) <- Low.blockCipherGetKeyspec ctx
    return $ BlockCipherKeySpec mn mx md

blockCipherCtxEncrypt :: Low.BlockCipher -> BlockCipherKey -> Plaintext -> Ciphertext
blockCipherCtxEncrypt ctx key pt = unsafePerformIO $ do
    Low.blockCipherSetKey ctx key
    ct <- Low.blockCipherEncryptBlocks ctx pt
    Low.blockCipherClear ctx
    return ct

blockCipherCtxDecrypt :: Low.BlockCipher -> BlockCipherKey -> Ciphertext -> Plaintext
blockCipherCtxDecrypt ctx key ct = unsafePerformIO $ do
    Low.blockCipherSetKey ctx key
    pt <- Low.blockCipherDecryptBlocks ctx ct
    Low.blockCipherClear ctx
    return pt

blockCipherEncrypt :: BlockCipher -> BlockCipherKey -> Plaintext -> Ciphertext
blockCipherEncrypt = blockCipherCtxEncrypt . blockCipherCtxInit

blockCipherDecrypt :: BlockCipher -> BlockCipherKey -> Ciphertext -> Plaintext
blockCipherDecrypt = blockCipherCtxDecrypt . blockCipherCtxInit
