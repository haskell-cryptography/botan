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
, blockCipherBlockSize
-- , blockCipherValidKeyLength
-- , blockCipherValidateKeyLength

, BlockCipher128(..)
-- , newBlockCipher128
, blockCipher128Name

-- * Keys
, BlockCipherKeySpec(..)
, blockCipherKeySpec
-- , blockCipherKeySpecValidLength
-- , blockCipherKeySpecValidateLength
, BlockCipherKey(..)
, newBlockCipherKey
, newBlockCipherKeyMaybe
, BlockCipher128Key(..)
-- , newBlockCipher128Key

-- * Easy API

, encryptBlocks
, encryptBlocksGeneratingKey
, decryptBlocks

, blockCipher128s
, blockCiphers
, allBlockCiphers

-- * Mutable API

) where

import qualified Botan.Low.BlockCipher as Low

import Botan.Prelude

import Data.Maybe

import Botan.KeySpec
import Botan.RNG

-- NOTE: No nonces at this level - these are raw block ciphers.
--  For block ciphers with nonces, see Cipher

{- $introduction

-}

{- $usage

-}

blockCipher128s =
    [ BlockCipher128 $ AES_128
    , BlockCipher128 $ AES_192
    , BlockCipher128 $ AES_256
    , BlockCipher128 $ ARIA_128
    , BlockCipher128 $ ARIA_192
    , BlockCipher128 $ ARIA_256
    , BlockCipher128 $ Camellia_128
    , BlockCipher128 $ Camellia_192
    , BlockCipher128 $ Camellia_256
    , BlockCipher128 $ Noekeon
    , BlockCipher128 $ SEED
    , BlockCipher128 $ Serpent
    , BlockCipher128 $ SM4
    , BlockCipher128 $ Twofish
    ]

blockCiphers =
    [ Blowfish
    , CAST_128
    , DES
    , TripleDES
    , GOST_28147_89
    , IDEA
    , SHACAL2
    , Threefish_512
    ]

allBlockCiphers = blockCipher128s ++ blockCiphers

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
    = AES_128
    | AES_192
    | AES_256
    | ARIA_128
    | ARIA_192
    | ARIA_256
    | Camellia_128
    | Camellia_192
    | Camellia_256
    | Noekeon
    | SEED
    | Serpent
    | SM4
    | Twofish
    deriving (Show, Eq)

type BlockCipher128Name = ByteString

blockCipher128Name :: BlockCipher128 -> BlockCipher128Name
blockCipher128Name spec = case spec of
    AES_128         -> Low.AES_128
    AES_192         -> Low.AES_192
    AES_256         -> Low.AES_256
    ARIA_128        -> Low.ARIA_128
    ARIA_192        -> Low.ARIA_192
    ARIA_256        -> Low.ARIA_256
    Camellia_128    -> Low.Camellia_128
    Camellia_192    -> Low.Camellia_192
    Camellia_256    -> Low.Camellia_256
    Noekeon         -> Low.Noekeon
    SEED            -> Low.SEED
    Serpent         -> Low.Serpent
    SM4             -> Low.SM4
    Twofish         -> Low.Twofish

-- Keys

type BlockCipherKeySpec = KeySpec

-- TODO: Generalize keyspec?
-- data BlockCipherKeySpec
--     = BlockCipherKeySpec
--     { blockCipherKeyMinimum :: Int
--     , blockCipherKeyMaximum :: Int
--     , blockCipherKeyModulo  :: Int
--     }

-- blockCipherKeySpecValidLength :: BlockCipherKeySpec -> Int
-- blockCipherKeySpecValidLength (BlockCipherKeySpec mn mx md) = mx

-- blockCipherKeySpecValidateLength :: Int -> BlockCipherKeySpec -> Bool 
-- blockCipherKeySpecValidateLength len (BlockCipherKeySpec mn mx md) = mn <= len && len <= mx && mod len md == 0

-- blockCipherValidKeyLength :: BlockCipher -> Int
-- blockCipherValidKeyLength bc = blockCipherKeySpecValidLength (blockCipherKeySpec bc)

-- blockCipherValidateKeyLength :: Int -> BlockCipher -> Bool
-- blockCipherValidateKeyLength len bc = blockCipherKeySpecValidateLength len (blockCipherKeySpec bc)

-- NOTE: May be obviated by key-len == blockSize
blockCipherKeySpec :: BlockCipher -> BlockCipherKeySpec
blockCipherKeySpec (BlockCipher128 AES_128)        = keySpec 16 16 1
blockCipherKeySpec (BlockCipher128 AES_192)        = keySpec 24 24 1
blockCipherKeySpec (BlockCipher128 AES_256)        = keySpec 32 32 1
blockCipherKeySpec (BlockCipher128 ARIA_128)       = keySpec 16 16 1
blockCipherKeySpec (BlockCipher128 ARIA_192)       = keySpec 24 24 1
blockCipherKeySpec (BlockCipher128 ARIA_256)       = keySpec 32 32 1
blockCipherKeySpec (BlockCipher128 Camellia_128)   = keySpec 16 16 1
blockCipherKeySpec (BlockCipher128 Camellia_192)   = keySpec 24 24 1
blockCipherKeySpec (BlockCipher128 Camellia_256)   = keySpec 32 32 1
blockCipherKeySpec (BlockCipher128 Noekeon)        = keySpec 16 16 1
blockCipherKeySpec (BlockCipher128 SEED)           = keySpec 16 16 1
blockCipherKeySpec (BlockCipher128 Serpent)        = keySpec 16 32 8
blockCipherKeySpec (BlockCipher128 SM4)            = keySpec 16 16 1
blockCipherKeySpec (BlockCipher128 Twofish)        = keySpec 16 32 8
blockCipherKeySpec Blowfish                        = keySpec 1 56 1
blockCipherKeySpec CAST_128                        = keySpec 11 16 1
blockCipherKeySpec DES                             = keySpec 8 8 1
blockCipherKeySpec TripleDES                       = keySpec 16 24 8
blockCipherKeySpec GOST_28147_89                   = keySpec 32 32 1
blockCipherKeySpec IDEA                            = keySpec 16 16 1
blockCipherKeySpec SHACAL2                         = keySpec 16 64 4
blockCipherKeySpec Threefish_512                   = keySpec 64 64 1
-- NOTE: Statically generatated:
{-
generateBlockCipherKeySpecs :: IO ()
generateBlockCipherKeySpecs = do
    each <- forM blockCiphers  $ \ bc -> do
        mbc <- Low.blockCipherInit (blockCipherName bc)
        (mn,mx,md) <- Low.blockCipherGetKeyspec mbc
        return $ concat $
            [ "blockCipherKeySpec "
            , showsPrec 11 bc ""
            , " = BlockCipherKeySpec "
            , show mn
            , " "
            , show mx
            , " "
            , show md
            ]
    putStrLn $ unlines $
        "blockCipherKeySpec :: BlockCipher -> BlockCipherKeySpec"
        : each
-}
-- TODO: generateStatic fnName fnType init get print...

blockCipherBlockSize :: BlockCipher -> Int
blockCipherBlockSize (BlockCipher128 AES_128)       = 16
blockCipherBlockSize (BlockCipher128 AES_192)       = 16
blockCipherBlockSize (BlockCipher128 AES_256)       = 16
blockCipherBlockSize (BlockCipher128 ARIA_128)      = 16
blockCipherBlockSize (BlockCipher128 ARIA_192)      = 16
blockCipherBlockSize (BlockCipher128 ARIA_256)      = 16
blockCipherBlockSize (BlockCipher128 Camellia_128)  = 16
blockCipherBlockSize (BlockCipher128 Camellia_192)  = 16
blockCipherBlockSize (BlockCipher128 Camellia_256)  = 16
blockCipherBlockSize (BlockCipher128 Noekeon)       = 16
blockCipherBlockSize (BlockCipher128 SEED)          = 16
blockCipherBlockSize (BlockCipher128 Serpent)       = 16
blockCipherBlockSize (BlockCipher128 SM4)           = 16
blockCipherBlockSize (BlockCipher128 Twofish)       = 16
blockCipherBlockSize Blowfish                       = 8
blockCipherBlockSize CAST_128                       = 8
blockCipherBlockSize DES                            = 8
blockCipherBlockSize TripleDES                      = 8
blockCipherBlockSize GOST_28147_89                  = 8
blockCipherBlockSize IDEA                           = 8
blockCipherBlockSize SHACAL2                        = 32
blockCipherBlockSize Threefish_512                  = 64
-- NOTE: Statically generatated:
{-
generateBlockCipherBlockSizes :: IO ()
generateBlockCipherBlockSizes = do
    each <- forM blockCiphers  $ \ bc -> do
        mbc <- Low.blockCipherInit (blockCipherName bc)
        bsz <- Low.blockCipherBlockSize mbc
        return $ concat $
            [ "blockCipherBlockSize "
            , showsPrec 11 bc ""
            , " = "
            , show bsz
            ]
    putStrLn $ unlines $
        "blockCipherBlockSize :: BlockCipher -> Int"
        : each
-}


type BlockCipherKey = ByteString

newBlockCipherKey :: (MonadRandomIO m) => BlockCipher -> m BlockCipherKey
-- newBlockCipherKey bc = fromJust <$> newBlockCipherKeyLen (blockCipherKeyMaximum (blockCipherKeySpec bc)) bc
newBlockCipherKey = newKey . blockCipherKeySpec

-- newBlockCipherKeyLen :: (MonadRandomIO m) => Int -> BlockCipher -> m (Maybe BlockCipherKey)
-- newBlockCipherKeyLen len bc = if blockCipherValidateKeyLength len bc
--     then Just <$> getRandomBytes len
--     else return Nothing

newBlockCipherKeyMaybe :: (MonadRandomIO m) => Int -> BlockCipher -> m (Maybe BlockCipherKey)
newBlockCipherKeyMaybe sz bc = newKeyMaybe sz (blockCipherKeySpec bc) 

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
    return $ keySpec mn mx md

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
