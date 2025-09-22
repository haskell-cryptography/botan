{-|
Module      : Botan.BlockCipher
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

-- ** Enumerations

, blockCiphers
, blockCipher128s

-- ** Associated types
, BlockCipherKeySpec(..)
, BlockCipherKey(..)
, newBlockCipherKey
, newBlockCipherKeyMaybe
, BlockCipherText(..)

-- ** Convenience
, BlockCipher128Key(..)
, blockCipher128Name
, blockCipher128KeySpec
, isBlockCipher128

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

, blowfish
, cast128
, des
, tripleDES
, gost_28147_89
, idea

, aes128
, aes192
, aes256
, aria128
, aria192
, aria256
, camellia128
, camellia192
, camellia256
, noekeon
, seed
, sm4
, serpent
, twofish

, shalcal2

, threefish512

) where

import qualified Botan.Low.BlockCipher as Low

import           Botan.Prelude

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy

import           Data.Maybe

import           Botan.KeySpec
import           Botan.RNG

-- NOTE: No nonces at this level - these are raw block ciphers.
--  For block ciphers with nonces, see Cipher

{- $introduction

-}

{- $usage

-}

--
-- Idiomatic interface
--

-- Block cipher type

data BlockCipher
    = Blowfish
    | CAST128
    | DES
    | TripleDES
    | GOST_28147_89
    | IDEA
    | AES128
    | AES192
    | AES256
    | ARIA128
    | ARIA192
    | ARIA256
    | Camellia128
    | Camellia192
    | Camellia256
    | Noekeon
    | SEED
    | Serpent
    | SM4
    | Twofish
    | SHACAL2
    | Threefish512
    -- | Cascade BlockCipher BlockCipher
    -- | Lion HashSpec StreamCipher Int
    deriving (Eq, Ord, Show)

-- NOTE: An enumeration of all block ciphers, assuming default values if any parameters exist
-- TODO: Maybe rename supportedBlockCiphers? Repeat pattern elsewhere?
blockCiphers :: [ BlockCipher ]
blockCiphers =
    [ Blowfish
    , CAST128
    , DES
    , TripleDES
    , GOST_28147_89
    , IDEA
    , AES128
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
    , SHACAL2
    , Threefish512
    ]

-- 128-bit block cipher type

newtype BlockCipher128 = MkBlockCipher128 { unBlockCipher128 :: BlockCipher }
    deriving (Eq, Ord, Show)

blockCipher128 :: BlockCipher -> Maybe BlockCipher128
blockCipher128 bc@AES128      = Just $ MkBlockCipher128 bc
blockCipher128 bc@AES192      = Just $ MkBlockCipher128 bc
blockCipher128 bc@AES256      = Just $ MkBlockCipher128 bc
blockCipher128 bc@ARIA128     = Just $ MkBlockCipher128 bc
blockCipher128 bc@ARIA192     = Just $ MkBlockCipher128 bc
blockCipher128 bc@ARIA256     = Just $ MkBlockCipher128 bc
blockCipher128 bc@Camellia128 = Just $ MkBlockCipher128 bc
blockCipher128 bc@Camellia192 = Just $ MkBlockCipher128 bc
blockCipher128 bc@Camellia256 = Just $ MkBlockCipher128 bc
blockCipher128 bc@Noekeon     = Just $ MkBlockCipher128 bc
blockCipher128 bc@SEED        = Just $ MkBlockCipher128 bc
blockCipher128 bc@Serpent     = Just $ MkBlockCipher128 bc
blockCipher128 bc@SM4         = Just $ MkBlockCipher128 bc
blockCipher128 bc@Twofish     = Just $ MkBlockCipher128 bc
blockCipher128 _              = Nothing

unsafeBlockCipher128 :: BlockCipher -> BlockCipher128
unsafeBlockCipher128 = MkBlockCipher128

blockCipher128s :: [ BlockCipher128 ]
blockCipher128s = fmap MkBlockCipher128
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

isBlockCipher128 :: BlockCipher -> Bool
isBlockCipher128 = isJust . blockCipher128

blockCipher128Name :: BlockCipher128 -> Low.BlockCipherName
blockCipher128Name = blockCipherName . unBlockCipher128

blockCipher128KeySpec :: BlockCipher128 -> BlockCipherKeySpec
blockCipher128KeySpec = blockCipherKeySpec . unBlockCipher128

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
    Blowfish      -> Low.Blowfish
    CAST128       -> Low.CAST128
    DES           -> Low.DES
    TripleDES     -> Low.TripleDES
    GOST_28147_89 -> Low.GOST_28147_89
    IDEA          -> Low.IDEA
    AES128        -> Low.AES128
    AES192        -> Low.AES192
    AES256        -> Low.AES256
    ARIA128       -> Low.ARIA128
    ARIA192       -> Low.ARIA192
    ARIA256       -> Low.ARIA256
    Camellia128   -> Low.Camellia128
    Camellia192   -> Low.Camellia192
    Camellia256   -> Low.Camellia256
    Noekeon       -> Low.Noekeon
    SEED          -> Low.SEED
    Serpent       -> Low.Serpent
    SM4           -> Low.SM4
    Twofish       -> Low.Twofish
    SHACAL2       -> Low.SHACAL2
    Threefish512  -> Low.Threefish512
    -- Cascade bca bcb -> "Cascade(" <> blockCipherName bca <> "," <> blockCipherName bcb <> ")"
    -- Lion h sc sz    -> "Lion(" <> hashSpecName h <> "," <> streamCipherName sc <> "," <> showBytes sz <> ")"

blockCipherBlockSize :: BlockCipher -> Int
blockCipherBlockSize Blowfish      = 8
blockCipherBlockSize CAST128       = 8
blockCipherBlockSize DES           = 8
blockCipherBlockSize TripleDES     = 8
blockCipherBlockSize GOST_28147_89 = 8
blockCipherBlockSize IDEA          = 8
blockCipherBlockSize AES128        = 16
blockCipherBlockSize AES192        = 16
blockCipherBlockSize AES256        = 16
blockCipherBlockSize ARIA128       = 16
blockCipherBlockSize ARIA192       = 16
blockCipherBlockSize ARIA256       = 16
blockCipherBlockSize Camellia128   = 16
blockCipherBlockSize Camellia192   = 16
blockCipherBlockSize Camellia256   = 16
blockCipherBlockSize Noekeon       = 16
blockCipherBlockSize SEED          = 16
blockCipherBlockSize Serpent       = 16
blockCipherBlockSize SM4           = 16
blockCipherBlockSize Twofish       = 16
blockCipherBlockSize SHACAL2       = 32
blockCipherBlockSize Threefish512  = 64
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
blockCipherKeySpec Blowfish      = keySpec 1 56 1
blockCipherKeySpec CAST128       = keySpec 11 16 1
blockCipherKeySpec DES           = keySpec 8 8 1
blockCipherKeySpec TripleDES     = keySpec 16 24 8
blockCipherKeySpec GOST_28147_89 = keySpec 32 32 1
blockCipherKeySpec IDEA          = keySpec 16 16 1
blockCipherKeySpec AES128        = keySpec 16 16 1
blockCipherKeySpec AES192        = keySpec 24 24 1
blockCipherKeySpec AES256        = keySpec 32 32 1
blockCipherKeySpec ARIA128       = keySpec 16 16 1
blockCipherKeySpec ARIA192       = keySpec 24 24 1
blockCipherKeySpec ARIA256       = keySpec 32 32 1
blockCipherKeySpec Camellia128   = keySpec 16 16 1
blockCipherKeySpec Camellia192   = keySpec 24 24 1
blockCipherKeySpec Camellia256   = keySpec 32 32 1
blockCipherKeySpec Noekeon       = keySpec 16 16 1
blockCipherKeySpec SEED          = keySpec 16 16 1
blockCipherKeySpec Serpent       = keySpec 16 32 8
blockCipherKeySpec SM4           = keySpec 16 16 1
blockCipherKeySpec Twofish       = keySpec 16 32 8
blockCipherKeySpec SHACAL2       = keySpec 16 64 4
blockCipherKeySpec Threefish512  = keySpec 64 64 1
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
    { mutableBlockCipherType :: BlockCipher
    , mutableBlockCipherCtx  :: Low.BlockCipher
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

blowfish :: BlockCipher
blowfish = Blowfish

cast128 :: BlockCipher
cast128 = CAST128

des :: BlockCipher
des = DES

tripleDES :: BlockCipher
tripleDES = TripleDES

gost_28147_89 :: BlockCipher
gost_28147_89 = GOST_28147_89

idea :: BlockCipher
idea = IDEA

-- 128-bit block cipher type

aes128 :: BlockCipher
aes128 = AES128

aes192 :: BlockCipher
aes192 = AES192

aes256 :: BlockCipher
aes256 = AES256

aria128 :: BlockCipher
aria128 = ARIA128

aria192 :: BlockCipher
aria192 = ARIA192

aria256 :: BlockCipher
aria256 = ARIA256

camellia128 :: BlockCipher
camellia128 = Camellia128

camellia192 :: BlockCipher
camellia192 = Camellia192

camellia256 :: BlockCipher
camellia256 = Camellia256

noekeon :: BlockCipher
noekeon = Noekeon

seed :: BlockCipher
seed = SEED

sm4 :: BlockCipher
sm4 = SM4

serpent :: BlockCipher
serpent = Serpent

twofish :: BlockCipher
twofish = Twofish

shalcal2 :: BlockCipher
shalcal2 = SHACAL2

threefish512 :: BlockCipher
threefish512 = Threefish512
