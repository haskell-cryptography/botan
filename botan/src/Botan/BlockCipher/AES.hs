module Botan.BlockCipher.AES
( AES128(..)
, AES128SecretKey(..)
, pattern AES128SecretKey
, getAES128SecretKey
, AES128Ciphertext(..)
, aes128Encrypt
, aes128Decrypt
, aes128EncryptLazy
, aes128DecryptLazy
, AES192(..)
, AES192SecretKey(..)
, pattern AES192SecretKey
, getAES192SecretKey
, AES192Ciphertext(..)
, aes192Encrypt
, aes192Decrypt
, aes192EncryptLazy
, aes192DecryptLazy
, AES256(..)
, AES256SecretKey(..)
, pattern AES256SecretKey
, getAES256SecretKey
, AES256Ciphertext(..)
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

import Botan.Prelude hiding (Ciphertext, LazyCiphertext)

import Botan.BlockCipher.Class
import Botan.Types.Class
import Botan.RNG

-- AES128 type

data AES128

newtype instance SecretKey AES128 = MkAES128SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

pattern AES128SecretKey :: ByteString -> SecretKey AES128
pattern AES128SecretKey bytes = MkAES128SecretKey (MkGSecretKey bytes)

getAES128SecretKey :: SecretKey AES128 -> ByteString
getAES128SecretKey (AES128SecretKey bs) = bs

type AES128SecretKey = SecretKey AES128

newtype instance Ciphertext AES128 = MkAES128Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

pattern AES128Ciphertext :: ByteString -> Ciphertext AES128
pattern AES128Ciphertext bs = MkAES128Ciphertext (MkGCiphertext bs)

getAES128Ciphertext :: Ciphertext AES128 -> ByteString
getAES128Ciphertext (AES128Ciphertext bs) = bs

type AES128Ciphertext = Ciphertext AES128

newtype instance LazyCiphertext AES128 = MkAES128LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

pattern AES128LazyCiphertext :: Lazy.ByteString -> LazyCiphertext AES128
pattern AES128LazyCiphertext lbs = MkAES128LazyCiphertext (MkGLazyCiphertext lbs)

getAES128LazyCiphertext :: LazyCiphertext AES128 -> Lazy.ByteString
getAES128LazyCiphertext (AES128LazyCiphertext bs) = bs

type AES128LazyCiphertext = LazyCiphertext AES128

instance HasSecretKey AES128 where
    
    secretKeySpec :: SizeSpecifier (SecretKey AES128)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.aes128

instance (MonadRandomIO m )=> SecretKeyGen AES128 m where

    newSecretKey :: MonadRandomIO m => m (SecretKey AES128)
    newSecretKey = AES128SecretKey <$> newSeed (secretKeySpec @AES128)
    
    newSecretKeyMaybe :: MonadRandomIO m => Int -> m (Maybe (SecretKey AES128))
    newSecretKeyMaybe i = fmap AES128SecretKey <$> newSeedMaybe (secretKeySpec @AES128) i

instance HasCiphertext AES128 where

instance BlockCipher AES128 where

    blockCipherEncrypt :: SecretKey AES128 -> ByteString -> Maybe (Ciphertext AES128)
    blockCipherEncrypt (AES128SecretKey k) = fmap AES128Ciphertext . Botan.blockCipherEncrypt Botan.aes128 k

    blockCipherDecrypt :: SecretKey AES128 -> Ciphertext AES128 -> Maybe ByteString
    blockCipherDecrypt (AES128SecretKey k) (AES128Ciphertext ct) = Botan.blockCipherDecrypt Botan.aes128 k ct

instance HasLazyCiphertext AES128 where

instance IncrementalBlockCipher AES128 where

    blockCipherEncryptLazy :: SecretKey AES128 -> Lazy.ByteString -> Maybe (LazyCiphertext AES128)
    blockCipherEncryptLazy (AES128SecretKey k) = fmap AES128LazyCiphertext . Botan.blockCipherEncryptLazy Botan.aes128 k

    blockCipherDecryptLazy :: SecretKey AES128 -> LazyCiphertext AES128 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (AES128SecretKey k) (AES128LazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.aes128 k ct

-- AES blockCipher

aes128Encrypt :: SecretKey AES128 -> ByteString -> Maybe AES128Ciphertext
aes128Encrypt = blockCipherEncrypt

aes128Decrypt :: SecretKey AES128 -> AES128Ciphertext -> Maybe ByteString
aes128Decrypt = blockCipherDecrypt

aes128EncryptLazy :: SecretKey AES128 -> Lazy.ByteString -> Maybe AES128LazyCiphertext
aes128EncryptLazy = blockCipherEncryptLazy

aes128DecryptLazy :: SecretKey AES128 -> AES128LazyCiphertext -> Maybe Lazy.ByteString
aes128DecryptLazy = blockCipherDecryptLazy

-- AES192 type

data AES192

newtype instance SecretKey AES192 = MkAES192SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

pattern AES192SecretKey :: ByteString -> SecretKey AES192
pattern AES192SecretKey bytes = MkAES192SecretKey (MkGSecretKey bytes)

getAES192SecretKey :: SecretKey AES192 -> ByteString
getAES192SecretKey (AES192SecretKey bs) = bs

type AES192SecretKey = SecretKey AES192

newtype instance Ciphertext AES192 = MkAES192Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

pattern AES192Ciphertext :: ByteString -> Ciphertext AES192
pattern AES192Ciphertext bs = MkAES192Ciphertext (MkGCiphertext bs)

getAES192Ciphertext :: Ciphertext AES192 -> ByteString
getAES192Ciphertext (AES192Ciphertext bs) = bs

type AES192Ciphertext = Ciphertext AES192

newtype instance LazyCiphertext AES192 = MkAES192LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

pattern AES192LazyCiphertext :: Lazy.ByteString -> LazyCiphertext AES192
pattern AES192LazyCiphertext lbs = MkAES192LazyCiphertext (MkGLazyCiphertext lbs)

getAES192LazyCiphertext :: LazyCiphertext AES192 -> Lazy.ByteString
getAES192LazyCiphertext (AES192LazyCiphertext bs) = bs

type AES192LazyCiphertext = LazyCiphertext AES192

instance HasSecretKey AES192 where
    
    secretKeySpec :: SizeSpecifier (SecretKey AES192)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.aes192

instance (MonadRandomIO m )=> SecretKeyGen AES192 m where

    newSecretKey :: MonadRandomIO m => m (SecretKey AES192)
    newSecretKey = AES192SecretKey <$> newSeed (secretKeySpec @AES192)
    
    newSecretKeyMaybe :: MonadRandomIO m => Int -> m (Maybe (SecretKey AES192))
    newSecretKeyMaybe i = fmap AES192SecretKey <$> newSeedMaybe (secretKeySpec @AES192) i

instance HasCiphertext AES192 where

instance BlockCipher AES192 where

    blockCipherEncrypt :: SecretKey AES192 -> ByteString -> Maybe (Ciphertext AES192)
    blockCipherEncrypt (AES192SecretKey k) = fmap AES192Ciphertext . Botan.blockCipherEncrypt Botan.aes192 k

    blockCipherDecrypt :: SecretKey AES192 -> Ciphertext AES192 -> Maybe ByteString
    blockCipherDecrypt (AES192SecretKey k) (AES192Ciphertext ct) = Botan.blockCipherDecrypt Botan.aes192 k ct

instance HasLazyCiphertext AES192 where

instance IncrementalBlockCipher AES192 where

    blockCipherEncryptLazy :: SecretKey AES192 -> Lazy.ByteString -> Maybe (LazyCiphertext AES192)
    blockCipherEncryptLazy (AES192SecretKey k) = fmap AES192LazyCiphertext . Botan.blockCipherEncryptLazy Botan.aes192 k

    blockCipherDecryptLazy :: SecretKey AES192 -> LazyCiphertext AES192 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (AES192SecretKey k) (AES192LazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.aes192 k ct

-- AES blockCipher

aes192Encrypt :: SecretKey AES192 -> ByteString -> Maybe AES192Ciphertext
aes192Encrypt = blockCipherEncrypt

aes192Decrypt :: SecretKey AES192 -> AES192Ciphertext -> Maybe ByteString
aes192Decrypt = blockCipherDecrypt

aes192EncryptLazy :: SecretKey AES192 -> Lazy.ByteString -> Maybe AES192LazyCiphertext
aes192EncryptLazy = blockCipherEncryptLazy

aes192DecryptLazy :: SecretKey AES192 -> AES192LazyCiphertext -> Maybe Lazy.ByteString
aes192DecryptLazy = blockCipherDecryptLazy

-- AES256 type

data AES256

newtype instance SecretKey AES256 = MkAES256SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

pattern AES256SecretKey :: ByteString -> SecretKey AES256
pattern AES256SecretKey bytes = MkAES256SecretKey (MkGSecretKey bytes)

getAES256SecretKey :: SecretKey AES256 -> ByteString
getAES256SecretKey (AES256SecretKey bs) = bs

type AES256SecretKey = SecretKey AES256

newtype instance Ciphertext AES256 = MkAES256Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

pattern AES256Ciphertext :: ByteString -> Ciphertext AES256
pattern AES256Ciphertext bs = MkAES256Ciphertext (MkGCiphertext bs)

getAES256Ciphertext :: Ciphertext AES256 -> ByteString
getAES256Ciphertext (AES256Ciphertext bs) = bs

type AES256Ciphertext = Ciphertext AES256

newtype instance LazyCiphertext AES256 = MkAES256LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

pattern AES256LazyCiphertext :: Lazy.ByteString -> LazyCiphertext AES256
pattern AES256LazyCiphertext lbs = MkAES256LazyCiphertext (MkGLazyCiphertext lbs)

getAES256LazyCiphertext :: LazyCiphertext AES256 -> Lazy.ByteString
getAES256LazyCiphertext (AES256LazyCiphertext bs) = bs

type AES256LazyCiphertext = LazyCiphertext AES256

instance HasSecretKey AES256 where
    
    secretKeySpec :: SizeSpecifier (SecretKey AES256)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.aes256

instance (MonadRandomIO m )=> SecretKeyGen AES256 m where

    newSecretKey :: MonadRandomIO m => m (SecretKey AES256)
    newSecretKey = AES256SecretKey <$> newSeed (secretKeySpec @AES256)
    
    newSecretKeyMaybe :: MonadRandomIO m => Int -> m (Maybe (SecretKey AES256))
    newSecretKeyMaybe i = fmap AES256SecretKey <$> newSeedMaybe (secretKeySpec @AES256) i

instance HasCiphertext AES256 where

instance BlockCipher AES256 where

    blockCipherEncrypt :: SecretKey AES256 -> ByteString -> Maybe (Ciphertext AES256)
    blockCipherEncrypt (AES256SecretKey k) = fmap AES256Ciphertext . Botan.blockCipherEncrypt Botan.aes256 k

    blockCipherDecrypt :: SecretKey AES256 -> Ciphertext AES256 -> Maybe ByteString
    blockCipherDecrypt (AES256SecretKey k) (AES256Ciphertext ct) = Botan.blockCipherDecrypt Botan.aes256 k ct

instance HasLazyCiphertext AES256 where

instance IncrementalBlockCipher AES256 where

    blockCipherEncryptLazy :: SecretKey AES256 -> Lazy.ByteString -> Maybe (LazyCiphertext AES256)
    blockCipherEncryptLazy (AES256SecretKey k) = fmap AES256LazyCiphertext . Botan.blockCipherEncryptLazy Botan.aes256 k

    blockCipherDecryptLazy :: SecretKey AES256 -> LazyCiphertext AES256 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (AES256SecretKey k) (AES256LazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.aes256 k ct

-- AES blockCipher

aes256Encrypt :: SecretKey AES256 -> ByteString -> Maybe AES256Ciphertext
aes256Encrypt = blockCipherEncrypt

aes256Decrypt :: SecretKey AES256 -> AES256Ciphertext -> Maybe ByteString
aes256Decrypt = blockCipherDecrypt

aes256EncryptLazy :: SecretKey AES256 -> Lazy.ByteString -> Maybe AES256LazyCiphertext
aes256EncryptLazy = blockCipherEncryptLazy

aes256DecryptLazy :: SecretKey AES256 -> AES256LazyCiphertext -> Maybe Lazy.ByteString
aes256DecryptLazy = blockCipherDecryptLazy

-- Temporary BlockCipher128 conformance

instance BlockCipher128 AES128 where
instance IncrementalBlockCipher128 AES128 where
instance BlockCipher128 AES192 where
instance IncrementalBlockCipher128 AES192 where
instance BlockCipher128 AES256 where
instance IncrementalBlockCipher128 AES256 where
