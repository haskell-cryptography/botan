module Botan.BlockCipher.AES
( AES128(..)
, AES128CipherKey(..)
, AES128CipherText(..)
, aes128Encrypt
, aes128Decrypt
, aes128EncryptLazy
, aes128DecryptLazy
, AES192(..)
, AES192CipherKey(..)
, AES192CipherText(..)
, aes192Encrypt
, aes192Decrypt
, aes192EncryptLazy
, aes192DecryptLazy
, AES256(..)
, AES256CipherKey(..)
, AES256CipherText(..)
, aes256Encrypt
, aes256Decrypt
, aes256EncryptLazy
, aes256DecryptLazy
) where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.BlockCipher as Botan
import qualified Botan.Utility as Botan

import Botan.BlockCipher.Class
import Botan.Prelude

-- AES128 type

data AES128

newtype instance CipherKey AES128 = AES128CipherKey
    { getAES128CipherKey :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type AES128CipherKey = CipherKey AES128

newtype instance CipherText AES128 = AES128CipherText
    { getAES128CipherText :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type AES128CipherText = CipherText AES128

newtype instance IncrementalCipherText AES128 = AES128IncrementalCipherText
    { getAES128CIncrementalCipherText :: Lazy.ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type AES128IncrementalCipherText = IncrementalCipherText AES128

instance Show (CipherText AES128) where
    show :: CipherText AES128 -> String
    show (AES128CipherText bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance BlockCipher AES128 where

    mkCipherText = AES128CipherText

    blockCipherEncrypt :: CipherKey AES128 -> ByteString -> Maybe (CipherText AES128)
    blockCipherEncrypt (AES128CipherKey k) = fmap AES128CipherText . Botan.blockCipherEncrypt Botan.aes128 k

    blockCipherDecrypt :: CipherKey AES128 -> CipherText AES128 -> Maybe ByteString
    blockCipherDecrypt (AES128CipherKey k) (AES128CipherText ct) = Botan.blockCipherDecrypt Botan.aes128 k ct

instance IncrementalBlockCipher AES128 where

    mkIncrementalCipherText = AES128IncrementalCipherText
    fromIncremental (AES128IncrementalCipherText ct) = AES128CipherText $ ByteString.toStrict ct
    toIncremental (AES128CipherText ct) = AES128IncrementalCipherText $ ByteString.fromStrict ct

    blockCipherEncryptLazy :: CipherKey AES128 -> Lazy.ByteString -> Maybe (IncrementalCipherText AES128)
    blockCipherEncryptLazy (AES128CipherKey k) = fmap AES128IncrementalCipherText . Botan.blockCipherEncryptLazy Botan.aes128 k

    blockCipherDecryptLazy :: CipherKey AES128 -> IncrementalCipherText AES128 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (AES128CipherKey k) (AES128IncrementalCipherText ct) = Botan.blockCipherDecryptLazy Botan.aes128 k ct

-- AES blockCipher

aes128Encrypt :: CipherKey AES128 -> ByteString -> Maybe AES128CipherText
aes128Encrypt = blockCipherEncrypt

aes128Decrypt :: CipherKey AES128 -> AES128CipherText -> Maybe ByteString
aes128Decrypt = blockCipherDecrypt

aes128EncryptLazy :: CipherKey AES128 -> Lazy.ByteString -> Maybe AES128IncrementalCipherText
aes128EncryptLazy = blockCipherEncryptLazy

aes128DecryptLazy :: CipherKey AES128 -> AES128IncrementalCipherText -> Maybe Lazy.ByteString
aes128DecryptLazy = blockCipherDecryptLazy

-- AES192 type

data AES192

newtype instance CipherKey AES192 = AES192CipherKey
    { getAES192CipherKey :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type AES192CipherKey = CipherKey AES192

newtype instance CipherText AES192 = AES192CipherText
    { getAES192CipherText :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type AES192CipherText = CipherText AES192

newtype instance IncrementalCipherText AES192 = AES192IncrementalCipherText
    { getAES192CIncrementalCipherText :: Lazy.ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type AES192IncrementalCipherText = IncrementalCipherText AES192

instance Show (CipherText AES192) where
    show :: CipherText AES192 -> String
    show (AES192CipherText bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance BlockCipher AES192 where

    mkCipherText = AES192CipherText

    blockCipherEncrypt :: CipherKey AES192 -> ByteString -> Maybe (CipherText AES192)
    blockCipherEncrypt (AES192CipherKey k) = fmap AES192CipherText . Botan.blockCipherEncrypt Botan.aes192 k

    blockCipherDecrypt :: CipherKey AES192 -> CipherText AES192 -> Maybe ByteString
    blockCipherDecrypt (AES192CipherKey k) (AES192CipherText ct) = Botan.blockCipherDecrypt Botan.aes192 k ct

instance IncrementalBlockCipher AES192 where

    mkIncrementalCipherText = AES192IncrementalCipherText
    fromIncremental (AES192IncrementalCipherText ct) = AES192CipherText $ ByteString.toStrict ct
    toIncremental (AES192CipherText ct) = AES192IncrementalCipherText $ ByteString.fromStrict ct

    blockCipherEncryptLazy :: CipherKey AES192 -> Lazy.ByteString -> Maybe (IncrementalCipherText AES192)
    blockCipherEncryptLazy (AES192CipherKey k) = fmap AES192IncrementalCipherText . Botan.blockCipherEncryptLazy Botan.aes192 k

    blockCipherDecryptLazy :: CipherKey AES192 -> IncrementalCipherText AES192 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (AES192CipherKey k) (AES192IncrementalCipherText ct) = Botan.blockCipherDecryptLazy Botan.aes192 k ct

-- AES blockCipher

aes192Encrypt :: CipherKey AES192 -> ByteString -> Maybe AES192CipherText
aes192Encrypt = blockCipherEncrypt

aes192Decrypt :: CipherKey AES192 -> AES192CipherText -> Maybe ByteString
aes192Decrypt = blockCipherDecrypt

aes192EncryptLazy :: CipherKey AES192 -> Lazy.ByteString -> Maybe AES192IncrementalCipherText
aes192EncryptLazy = blockCipherEncryptLazy

aes192DecryptLazy :: CipherKey AES192 -> AES192IncrementalCipherText -> Maybe Lazy.ByteString
aes192DecryptLazy = blockCipherDecryptLazy

-- AES256 type

data AES256

newtype instance CipherKey AES256 = AES256CipherKey
    { getAES256CipherKey :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type AES256CipherKey = CipherKey AES256

newtype instance CipherText AES256 = AES256CipherText
    { getAES256CipherText :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type AES256CipherText = CipherText AES256

newtype instance IncrementalCipherText AES256 = AES256IncrementalCipherText
    { getAES256CIncrementalCipherText :: Lazy.ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type AES256IncrementalCipherText = IncrementalCipherText AES256

instance Show (CipherText AES256) where
    show :: CipherText AES256 -> String
    show (AES256CipherText bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance BlockCipher AES256 where

    mkCipherText = AES256CipherText

    blockCipherEncrypt :: CipherKey AES256 -> ByteString -> Maybe (CipherText AES256)
    blockCipherEncrypt (AES256CipherKey k) = fmap AES256CipherText . Botan.blockCipherEncrypt Botan.aes256 k

    blockCipherDecrypt :: CipherKey AES256 -> CipherText AES256 -> Maybe ByteString
    blockCipherDecrypt (AES256CipherKey k) (AES256CipherText ct) = Botan.blockCipherDecrypt Botan.aes256 k ct

instance IncrementalBlockCipher AES256 where

    mkIncrementalCipherText = AES256IncrementalCipherText
    fromIncremental (AES256IncrementalCipherText ct) = AES256CipherText $ ByteString.toStrict ct
    toIncremental (AES256CipherText ct) = AES256IncrementalCipherText $ ByteString.fromStrict ct

    blockCipherEncryptLazy :: CipherKey AES256 -> Lazy.ByteString -> Maybe (IncrementalCipherText AES256)
    blockCipherEncryptLazy (AES256CipherKey k) = fmap AES256IncrementalCipherText . Botan.blockCipherEncryptLazy Botan.aes256 k

    blockCipherDecryptLazy :: CipherKey AES256 -> IncrementalCipherText AES256 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (AES256CipherKey k) (AES256IncrementalCipherText ct) = Botan.blockCipherDecryptLazy Botan.aes256 k ct

-- AES blockCipher

aes256Encrypt :: CipherKey AES256 -> ByteString -> Maybe AES256CipherText
aes256Encrypt = blockCipherEncrypt

aes256Decrypt :: CipherKey AES256 -> AES256CipherText -> Maybe ByteString
aes256Decrypt = blockCipherDecrypt

aes256EncryptLazy :: CipherKey AES256 -> Lazy.ByteString -> Maybe AES256IncrementalCipherText
aes256EncryptLazy = blockCipherEncryptLazy

aes256DecryptLazy :: CipherKey AES256 -> AES256IncrementalCipherText -> Maybe Lazy.ByteString
aes256DecryptLazy = blockCipherDecryptLazy

