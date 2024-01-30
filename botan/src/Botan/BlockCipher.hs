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

-- * Block ciphers
-- $introduction

-- * Usage
-- $usage

-- * Idiomatic interface

-- ** Data type
  BlockCipher(..)
, BlockCipher128(..)

-- TODO: BlockCipher128-specific variants of functions
, BlockCipher128Key(..)
, blockCipher128Name

-- ** Enumerations

, allBlockCiphers
, blockCipher128s
, blockCiphers

-- ** Associated types
, BlockCipherKeySpec(..)
, BlockCipherKey(..)
, newBlockCipherKey
, newBlockCipherKeyMaybe
, BlockCipherText(..)

-- ** Accessors

, blockCipherName
, blockCipherBlockSize
, blockCipherKeySpec

-- ** Idiomatic algorithm
, blockCipherEncrypt
, blockCipherDecrypt
, blockCipherEncryptLazy
, blockCipherDecryptLazy

-- * Mutable interface

-- ** Tagged mutable context
, MutableBlockCipher(..)

-- ** Destructor
, destroyBlockCipher

-- ** Initializers
, newBlockCipher
-- , newBlockCipher128

-- ** Accessors
, getBlockCipherName
, getBlockCipherBlockSize
, getBlockCipherKeySpec
, setBlockCipherKey

-- ** Accessory functions
, clearBlockCipher

-- ** Mutable algorithm
, encryptBlockCipherBlocks
, decryptBlockCipherBlocks
, autoEncryptBlockCipherBlocks
-- , autoEncryptBlockCipherBlocksGeneratingkey
, autoDecryptBlockCipherBlocks

-- Algorithm references
, aes128
, aes192
, aes256

) where

import qualified Botan.Low.BlockCipher as Low

import Botan.Prelude

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy

import Data.Maybe

import Botan.KeySpec
import Botan.RNG

-- NOTE: No nonces at this level - these are raw block ciphers.
--  For block ciphers with nonces, see Cipher

{- $introduction

-}

{- $usage

-}

--
-- Idiomatic interface
--

-- Data type

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

-- Enumerations


allBlockCiphers :: [ BlockCipher ]
allBlockCiphers = fmap BlockCipher128 blockCipher128s ++ blockCiphers

blockCipher128s :: [ BlockCipher128 ]
blockCipher128s =
    [ AES_128
    , AES_192
    , AES_256
    , ARIA_128
    , ARIA_192
    , ARIA_256
    , Camellia_128
    , Camellia_192
    , Camellia_256
    , Noekeon
    , SEED
    , Serpent
    , SM4
    , Twofish
    ]

blockCiphers :: [ BlockCipher ]
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

-- Associated types

type BlockCipherKeySpec = KeySpec

type BlockCipherKey = ByteString
type BlockCipher128Key = BlockCipherKey

newBlockCipherKey :: (MonadRandomIO m) => BlockCipher -> m BlockCipherKey
newBlockCipherKey = newKey . blockCipherKeySpec

newBlockCipherKeyMaybe :: (MonadRandomIO m) => Int -> BlockCipher -> m (Maybe BlockCipherKey)
newBlockCipherKeyMaybe sz bc = newKeyMaybe sz (blockCipherKeySpec bc) 

type BlockCipherText = ByteString
-- TODO:
-- data BlockCipherText = MkBlockCipherText
--     { blockCipherTextType :: BlockCipher
--     , blockCipherTextText :: ByteString
--     }

-- Accessors

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

blockCipher128Name :: BlockCipher128 -> Low.BlockCipherName
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

-- Idiomatic algorithm

blockCipherEncrypt
    :: BlockCipher
    -> BlockCipherKey
    -> ByteString
    -> Maybe ByteString
blockCipherEncrypt bc k pt = unsafePerformIO $ do
    mc <- newBlockCipher bc
    autoEncryptBlockCipherBlocks mc k pt
{-# NOINLINE blockCipherEncrypt #-}

-- TODO: blockCipherEncryptGeneratingKey

blockCipherDecrypt
    :: BlockCipher
    -> BlockCipherKey
    -> ByteString
    -> Maybe ByteString
blockCipherDecrypt bc k ct = unsafePerformIO $ do
    mc <- newBlockCipher bc
    autoDecryptBlockCipherBlocks mc k ct
{-# NOINLINE blockCipherDecrypt #-}

blockCipherEncryptLazy
    :: BlockCipher
    -> BlockCipherKey
    -> Lazy.ByteString
    -> Maybe Lazy.ByteString
blockCipherEncryptLazy = undefined

blockCipherDecryptLazy
    :: BlockCipher
    -> BlockCipherKey
    -> Lazy.ByteString
    -> Maybe Lazy.ByteString
blockCipherDecryptLazy = undefined

--
-- Mutable interface
--

-- Tagged mutable context

data MutableBlockCipher = MkMutableBlockCipher
    { mutableBlockCipherType    :: BlockCipher
    , mutableBlockCipherCtx     :: Low.BlockCipher
    }

-- Destructor

destroyBlockCipher :: (MonadIO m) => MutableBlockCipher -> m ()
destroyBlockCipher = liftIO . Low.blockCipherDestroy . mutableBlockCipherCtx

-- Initializers

newBlockCipher :: (MonadIO m) => BlockCipher -> m MutableBlockCipher
newBlockCipher c = do
    ctx <- liftIO $ Low.blockCipherInit $ blockCipherName c
    return $ MkMutableBlockCipher c ctx

-- newBlockCipher128 = undefined

-- Accessors

-- NOTE: Because of synonyms, `blockCipherName (mutableBlockCipherType mc) == getBlockCipherName` may not be `True`.
getBlockCipherName
    :: (MonadIO m)
    => MutableBlockCipher   -- ^ The cipher object
    -> m (Low.BlockCipherName)  -- ^ The cipher name
getBlockCipherName = liftIO . Low.blockCipherName . mutableBlockCipherCtx

getBlockCipherBlockSize
    :: (MonadIO m)
    => MutableBlockCipher  -- ^ The cipher object
    -> m Int
getBlockCipherBlockSize = liftIO . Low.blockCipherBlockSize . mutableBlockCipherCtx

getBlockCipherKeySpec
    :: (MonadIO m)
    => MutableBlockCipher  -- ^ The cipher object
    -> m BlockCipherKeySpec
getBlockCipherKeySpec mc = do
    (mn,mx,md) <- liftIO $ Low.blockCipherGetKeyspec (mutableBlockCipherCtx mc)
    return $ keySpec mn mx md

setBlockCipherKey
    :: (MonadIO m)
    => BlockCipherKey
    -> MutableBlockCipher
    -> m Bool
setBlockCipherKey k mc = do
    valid <- keySizeIsValid (ByteString.length k) <$> getBlockCipherKeySpec mc
    if valid
    then do
        liftIO $ Low.blockCipherSetKey (mutableBlockCipherCtx mc) k
        return True
    else return False

-- Accessory functions

clearBlockCipher :: (MonadIO m) => MutableBlockCipher -> m ()
clearBlockCipher = liftIO . Low.blockCipherClear . mutableBlockCipherCtx

-- Mutable algorithm

-- NOTE: This is messed up garbage - redo it

encryptBlockCipherBlocks
    :: (MonadIO m)
    => MutableBlockCipher
    -> ByteString
    -> m BlockCipherText
encryptBlockCipherBlocks mc pt = liftIO $ Low.blockCipherEncryptBlocks (mutableBlockCipherCtx mc) pt

-- NOTE: Not maybe because it should never fail in a proper context (ie, having set the key successfully)
decryptBlockCipherBlocks
    :: (MonadIO m)
    => MutableBlockCipher
    -> BlockCipherText
    -> m ByteString
decryptBlockCipherBlocks mc ct = liftIO $ Low.blockCipherDecryptBlocks (mutableBlockCipherCtx mc) ct

autoEncryptBlockCipherBlocks
    :: (MonadIO m)
    => MutableBlockCipher
    -> BlockCipherKey
    -> ByteString
    -> m (Maybe BlockCipherText)
autoEncryptBlockCipherBlocks mc k pt = do
    wasSet <- setBlockCipherKey k mc
    if wasSet
    then do
        bct <- encryptBlockCipherBlocks mc pt
        clearBlockCipher mc
        return $ Just bct
    else return Nothing


-- NOTE: This *actually doesn't throw an exception* if the buffer isn't
-- block-sized! BUFFER OVERFLOW!
-- TODO: Safe-ify this
autoDecryptBlockCipherBlocks
    :: (MonadIO m)
    => MutableBlockCipher
    -> BlockCipherKey
    -> BlockCipherText
    -> m (Maybe ByteString)
autoDecryptBlockCipherBlocks mc k ct = do
    wasSet <- setBlockCipherKey k mc
    if wasSet
    then do
        pt <- decryptBlockCipherBlocks mc ct
        clearBlockCipher mc
        return $ Just pt
    else return Nothing

--
-- Algorithm references
--

aes128 :: BlockCipher
aes128 = BlockCipher128 AES_128

aes192 :: BlockCipher
aes192 = BlockCipher128 AES_192

aes256 :: BlockCipher
aes256 = BlockCipher128 AES_256
