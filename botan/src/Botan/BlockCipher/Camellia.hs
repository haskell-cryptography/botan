{-# LANGUAGE TypeFamilies #-}

module Botan.BlockCipher.Camellia (
    Camellia128
  , Camellia128SecretKey
  , pattern Camellia128SecretKey
  , getCamellia128SecretKey
  , Camellia128Ciphertext
  , camellia128Encrypt
  , camellia128Decrypt
  , camellia128EncryptLazy
  , camellia128DecryptLazy
  , Camellia192
  , Camellia192SecretKey
  , pattern Camellia192SecretKey
  , getCamellia192SecretKey
  , Camellia192Ciphertext
  , camellia192Encrypt
  , camellia192Decrypt
  , camellia192EncryptLazy
  , camellia192DecryptLazy
  , Camellia256
  , Camellia256SecretKey
  , pattern Camellia256SecretKey
  , getCamellia256SecretKey
  , Camellia256Ciphertext
  , camellia256Encrypt
  , camellia256Decrypt
  , camellia256EncryptLazy
  , camellia256DecryptLazy
  ) where

import qualified Data.ByteString.Lazy as Lazy

import qualified Botan.BlockCipher as Botan

import           Botan.Prelude hiding (Ciphertext, LazyCiphertext)

import           Botan.BlockCipher.Class
import           Botan.RNG
import           Botan.Types.Class

-- Camellia128 type

data Camellia128

newtype instance SecretKey Camellia128 = MkCamellia128SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE Camellia128SecretKey #-}
pattern Camellia128SecretKey :: ByteString -> SecretKey Camellia128
pattern Camellia128SecretKey bytes = MkCamellia128SecretKey (MkGSecretKey bytes)

getCamellia128SecretKey :: SecretKey Camellia128 -> ByteString
getCamellia128SecretKey (Camellia128SecretKey bs) = bs

type Camellia128SecretKey = SecretKey Camellia128

newtype instance Ciphertext Camellia128 = MkCamellia128Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE Camellia128Ciphertext #-}
pattern Camellia128Ciphertext :: ByteString -> Ciphertext Camellia128
pattern Camellia128Ciphertext bs = MkCamellia128Ciphertext (MkGCiphertext bs)

type Camellia128Ciphertext = Ciphertext Camellia128

newtype instance LazyCiphertext Camellia128 = MkCamellia128LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

{-# COMPLETE Camellia128LazyCiphertext #-}
pattern Camellia128LazyCiphertext :: Lazy.ByteString -> LazyCiphertext Camellia128
pattern Camellia128LazyCiphertext lbs = MkCamellia128LazyCiphertext (MkGLazyCiphertext lbs)

type Camellia128LazyCiphertext = LazyCiphertext Camellia128

instance HasSecretKey Camellia128 where

    secretKeySpec :: SizeSpecifier (SecretKey Camellia128)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.camellia128

instance MonadRandomIO m => SecretKeyGen Camellia128 m where

    newSecretKey :: m (SecretKey Camellia128)
    newSecretKey = Camellia128SecretKey <$> newSized (secretKeySpec @Camellia128)

    newSecretKeyMaybe :: Int -> m (Maybe (SecretKey Camellia128))
    newSecretKeyMaybe i = fmap Camellia128SecretKey <$> newSizedMaybe (secretKeySpec @Camellia128) i

instance HasCiphertext Camellia128 where

instance BlockCipher Camellia128 where

    blockCipherEncrypt :: SecretKey Camellia128 -> ByteString -> Maybe (Ciphertext Camellia128)
    blockCipherEncrypt (Camellia128SecretKey k) = fmap Camellia128Ciphertext . Botan.blockCipherEncrypt Botan.camellia128 k

    blockCipherDecrypt :: SecretKey Camellia128 -> Ciphertext Camellia128 -> Maybe ByteString
    blockCipherDecrypt (Camellia128SecretKey k) (Camellia128Ciphertext ct) = Botan.blockCipherDecrypt Botan.camellia128 k ct

instance HasLazyCiphertext Camellia128 where

instance IncrementalBlockCipher Camellia128 where

    blockCipherEncryptLazy :: SecretKey Camellia128 -> Lazy.ByteString -> Maybe (LazyCiphertext Camellia128)
    blockCipherEncryptLazy (Camellia128SecretKey k) = fmap Camellia128LazyCiphertext . Botan.blockCipherEncryptLazy Botan.camellia128 k

    blockCipherDecryptLazy :: SecretKey Camellia128 -> LazyCiphertext Camellia128 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (Camellia128SecretKey k) (Camellia128LazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.camellia128 k ct

-- Camellia blockCipher

camellia128Encrypt :: SecretKey Camellia128 -> ByteString -> Maybe Camellia128Ciphertext
camellia128Encrypt = blockCipherEncrypt

camellia128Decrypt :: SecretKey Camellia128 -> Camellia128Ciphertext -> Maybe ByteString
camellia128Decrypt = blockCipherDecrypt

camellia128EncryptLazy :: SecretKey Camellia128 -> Lazy.ByteString -> Maybe Camellia128LazyCiphertext
camellia128EncryptLazy = blockCipherEncryptLazy

camellia128DecryptLazy :: SecretKey Camellia128 -> Camellia128LazyCiphertext -> Maybe Lazy.ByteString
camellia128DecryptLazy = blockCipherDecryptLazy

-- Camellia192 type

data Camellia192

newtype instance SecretKey Camellia192 = MkCamellia192SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE Camellia192SecretKey #-}
pattern Camellia192SecretKey :: ByteString -> SecretKey Camellia192
pattern Camellia192SecretKey bytes = MkCamellia192SecretKey (MkGSecretKey bytes)

getCamellia192SecretKey :: SecretKey Camellia192 -> ByteString
getCamellia192SecretKey (Camellia192SecretKey bs) = bs

type Camellia192SecretKey = SecretKey Camellia192

newtype instance Ciphertext Camellia192 = MkCamellia192Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE Camellia192Ciphertext #-}
pattern Camellia192Ciphertext :: ByteString -> Ciphertext Camellia192
pattern Camellia192Ciphertext bs = MkCamellia192Ciphertext (MkGCiphertext bs)

type Camellia192Ciphertext = Ciphertext Camellia192

newtype instance LazyCiphertext Camellia192 = MkCamellia192LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

{-# COMPLETE Camellia192LazyCiphertext #-}
pattern Camellia192LazyCiphertext :: Lazy.ByteString -> LazyCiphertext Camellia192
pattern Camellia192LazyCiphertext lbs = MkCamellia192LazyCiphertext (MkGLazyCiphertext lbs)

type Camellia192LazyCiphertext = LazyCiphertext Camellia192

instance HasSecretKey Camellia192 where

    secretKeySpec :: SizeSpecifier (SecretKey Camellia192)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.camellia192

instance MonadRandomIO m => SecretKeyGen Camellia192 m where

    newSecretKey :: m (SecretKey Camellia192)
    newSecretKey = Camellia192SecretKey <$> newSized (secretKeySpec @Camellia192)

    newSecretKeyMaybe :: Int -> m (Maybe (SecretKey Camellia192))
    newSecretKeyMaybe i = fmap Camellia192SecretKey <$> newSizedMaybe (secretKeySpec @Camellia192) i

instance HasCiphertext Camellia192 where

instance BlockCipher Camellia192 where

    blockCipherEncrypt :: SecretKey Camellia192 -> ByteString -> Maybe (Ciphertext Camellia192)
    blockCipherEncrypt (Camellia192SecretKey k) = fmap Camellia192Ciphertext . Botan.blockCipherEncrypt Botan.camellia192 k

    blockCipherDecrypt :: SecretKey Camellia192 -> Ciphertext Camellia192 -> Maybe ByteString
    blockCipherDecrypt (Camellia192SecretKey k) (Camellia192Ciphertext ct) = Botan.blockCipherDecrypt Botan.camellia192 k ct

instance HasLazyCiphertext Camellia192 where

instance IncrementalBlockCipher Camellia192 where

    blockCipherEncryptLazy :: SecretKey Camellia192 -> Lazy.ByteString -> Maybe (LazyCiphertext Camellia192)
    blockCipherEncryptLazy (Camellia192SecretKey k) = fmap Camellia192LazyCiphertext . Botan.blockCipherEncryptLazy Botan.camellia192 k

    blockCipherDecryptLazy :: SecretKey Camellia192 -> LazyCiphertext Camellia192 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (Camellia192SecretKey k) (Camellia192LazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.camellia192 k ct

-- Camellia blockCipher

camellia192Encrypt :: SecretKey Camellia192 -> ByteString -> Maybe Camellia192Ciphertext
camellia192Encrypt = blockCipherEncrypt

camellia192Decrypt :: SecretKey Camellia192 -> Camellia192Ciphertext -> Maybe ByteString
camellia192Decrypt = blockCipherDecrypt

camellia192EncryptLazy :: SecretKey Camellia192 -> Lazy.ByteString -> Maybe Camellia192LazyCiphertext
camellia192EncryptLazy = blockCipherEncryptLazy

camellia192DecryptLazy :: SecretKey Camellia192 -> Camellia192LazyCiphertext -> Maybe Lazy.ByteString
camellia192DecryptLazy = blockCipherDecryptLazy

-- Camellia256 type

data Camellia256

newtype instance SecretKey Camellia256 = MkCamellia256SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE Camellia256SecretKey #-}
pattern Camellia256SecretKey :: ByteString -> SecretKey Camellia256
pattern Camellia256SecretKey bytes = MkCamellia256SecretKey (MkGSecretKey bytes)

getCamellia256SecretKey :: SecretKey Camellia256 -> ByteString
getCamellia256SecretKey (Camellia256SecretKey bs) = bs

type Camellia256SecretKey = SecretKey Camellia256

newtype instance Ciphertext Camellia256 = MkCamellia256Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE Camellia256Ciphertext #-}
pattern Camellia256Ciphertext :: ByteString -> Ciphertext Camellia256
pattern Camellia256Ciphertext bs = MkCamellia256Ciphertext (MkGCiphertext bs)

type Camellia256Ciphertext = Ciphertext Camellia256

newtype instance LazyCiphertext Camellia256 = MkCamellia256LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

{-# COMPLETE Camellia256LazyCiphertext #-}
pattern Camellia256LazyCiphertext :: Lazy.ByteString -> LazyCiphertext Camellia256
pattern Camellia256LazyCiphertext lbs = MkCamellia256LazyCiphertext (MkGLazyCiphertext lbs)

type Camellia256LazyCiphertext = LazyCiphertext Camellia256

instance HasSecretKey Camellia256 where

    secretKeySpec :: SizeSpecifier (SecretKey Camellia256)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.camellia256

instance MonadRandomIO m => SecretKeyGen Camellia256 m where

    newSecretKey :: m (SecretKey Camellia256)
    newSecretKey = Camellia256SecretKey <$> newSized (secretKeySpec @Camellia256)

    newSecretKeyMaybe :: Int -> m (Maybe (SecretKey Camellia256))
    newSecretKeyMaybe i = fmap Camellia256SecretKey <$> newSizedMaybe (secretKeySpec @Camellia256) i

instance HasCiphertext Camellia256 where

instance BlockCipher Camellia256 where

    blockCipherEncrypt :: SecretKey Camellia256 -> ByteString -> Maybe (Ciphertext Camellia256)
    blockCipherEncrypt (Camellia256SecretKey k) = fmap Camellia256Ciphertext . Botan.blockCipherEncrypt Botan.camellia256 k

    blockCipherDecrypt :: SecretKey Camellia256 -> Ciphertext Camellia256 -> Maybe ByteString
    blockCipherDecrypt (Camellia256SecretKey k) (Camellia256Ciphertext ct) = Botan.blockCipherDecrypt Botan.camellia256 k ct

instance HasLazyCiphertext Camellia256 where

instance IncrementalBlockCipher Camellia256 where

    blockCipherEncryptLazy :: SecretKey Camellia256 -> Lazy.ByteString -> Maybe (LazyCiphertext Camellia256)
    blockCipherEncryptLazy (Camellia256SecretKey k) = fmap Camellia256LazyCiphertext . Botan.blockCipherEncryptLazy Botan.camellia256 k

    blockCipherDecryptLazy :: SecretKey Camellia256 -> LazyCiphertext Camellia256 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (Camellia256SecretKey k) (Camellia256LazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.camellia256 k ct

-- Camellia blockCipher

camellia256Encrypt :: SecretKey Camellia256 -> ByteString -> Maybe Camellia256Ciphertext
camellia256Encrypt = blockCipherEncrypt

camellia256Decrypt :: SecretKey Camellia256 -> Camellia256Ciphertext -> Maybe ByteString
camellia256Decrypt = blockCipherDecrypt

camellia256EncryptLazy :: SecretKey Camellia256 -> Lazy.ByteString -> Maybe Camellia256LazyCiphertext
camellia256EncryptLazy = blockCipherEncryptLazy

camellia256DecryptLazy :: SecretKey Camellia256 -> Camellia256LazyCiphertext -> Maybe Lazy.ByteString
camellia256DecryptLazy = blockCipherDecryptLazy

-- Temporary BlockCipher128 conformance

instance BlockCipher128 Camellia128 where
instance IncrementalBlockCipher128 Camellia128 where
instance BlockCipher128 Camellia192 where
instance IncrementalBlockCipher128 Camellia192 where
instance BlockCipher128 Camellia256 where
instance IncrementalBlockCipher128 Camellia256 where
