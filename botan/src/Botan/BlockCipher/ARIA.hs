{-# LANGUAGE TypeFamilies #-}

module Botan.BlockCipher.ARIA (
    ARIA128
  , ARIA128SecretKey
  , pattern ARIA128SecretKey
  , getARIA128SecretKey
  , ARIA128Ciphertext
  , aria128Encrypt
  , aria128Decrypt
  , aria128EncryptLazy
  , aria128DecryptLazy
  , ARIA192
  , ARIA192SecretKey
  , pattern ARIA192SecretKey
  , getARIA192SecretKey
  , ARIA192Ciphertext
  , aria192Encrypt
  , aria192Decrypt
  , aria192EncryptLazy
  , aria192DecryptLazy
  , ARIA256
  , ARIA256SecretKey
  , pattern ARIA256SecretKey
  , getARIA256SecretKey
  , ARIA256Ciphertext
  , aria256Encrypt
  , aria256Decrypt
  , aria256EncryptLazy
  , aria256DecryptLazy
  ) where

import qualified Data.ByteString.Lazy as Lazy

import qualified Botan.BlockCipher as Botan

import           Botan.Prelude hiding (Ciphertext, LazyCiphertext)

import           Botan.BlockCipher.Class
import           Botan.RNG
import           Botan.Types.Class

-- ARIA128 type

data ARIA128

newtype instance SecretKey ARIA128 = MkARIA128SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE ARIA128SecretKey #-}
pattern ARIA128SecretKey :: ByteString -> SecretKey ARIA128
pattern ARIA128SecretKey bytes = MkARIA128SecretKey (MkGSecretKey bytes)

getARIA128SecretKey :: SecretKey ARIA128 -> ByteString
getARIA128SecretKey (ARIA128SecretKey bs) = bs

type ARIA128SecretKey = SecretKey ARIA128

newtype instance Ciphertext ARIA128 = MkARIA128Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE ARIA128Ciphertext #-}
pattern ARIA128Ciphertext :: ByteString -> Ciphertext ARIA128
pattern ARIA128Ciphertext bs = MkARIA128Ciphertext (MkGCiphertext bs)

type ARIA128Ciphertext = Ciphertext ARIA128

newtype instance LazyCiphertext ARIA128 = MkARIA128LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

{-# COMPLETE ARIA128LazyCiphertext #-}
pattern ARIA128LazyCiphertext :: Lazy.ByteString -> LazyCiphertext ARIA128
pattern ARIA128LazyCiphertext lbs = MkARIA128LazyCiphertext (MkGLazyCiphertext lbs)

type ARIA128LazyCiphertext = LazyCiphertext ARIA128

instance HasSecretKey ARIA128 where

    secretKeySpec :: SizeSpecifier (SecretKey ARIA128)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.aria128

instance MonadRandomIO m => SecretKeyGen ARIA128 m where

    newSecretKey :: m (SecretKey ARIA128)
    newSecretKey = ARIA128SecretKey <$> newSized (secretKeySpec @ARIA128)

    newSecretKeyMaybe :: Int -> m (Maybe (SecretKey ARIA128))
    newSecretKeyMaybe i = fmap ARIA128SecretKey <$> newSizedMaybe (secretKeySpec @ARIA128) i

instance HasCiphertext ARIA128 where

instance BlockCipher ARIA128 where

    blockCipherEncrypt :: SecretKey ARIA128 -> ByteString -> Maybe (Ciphertext ARIA128)
    blockCipherEncrypt (ARIA128SecretKey k) = fmap ARIA128Ciphertext . Botan.blockCipherEncrypt Botan.aria128 k

    blockCipherDecrypt :: SecretKey ARIA128 -> Ciphertext ARIA128 -> Maybe ByteString
    blockCipherDecrypt (ARIA128SecretKey k) (ARIA128Ciphertext ct) = Botan.blockCipherDecrypt Botan.aria128 k ct

instance HasLazyCiphertext ARIA128 where

instance IncrementalBlockCipher ARIA128 where

    blockCipherEncryptLazy :: SecretKey ARIA128 -> Lazy.ByteString -> Maybe (LazyCiphertext ARIA128)
    blockCipherEncryptLazy (ARIA128SecretKey k) = fmap ARIA128LazyCiphertext . Botan.blockCipherEncryptLazy Botan.aria128 k

    blockCipherDecryptLazy :: SecretKey ARIA128 -> LazyCiphertext ARIA128 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (ARIA128SecretKey k) (ARIA128LazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.aria128 k ct

-- ARIA blockCipher

aria128Encrypt :: SecretKey ARIA128 -> ByteString -> Maybe ARIA128Ciphertext
aria128Encrypt = blockCipherEncrypt

aria128Decrypt :: SecretKey ARIA128 -> ARIA128Ciphertext -> Maybe ByteString
aria128Decrypt = blockCipherDecrypt

aria128EncryptLazy :: SecretKey ARIA128 -> Lazy.ByteString -> Maybe ARIA128LazyCiphertext
aria128EncryptLazy = blockCipherEncryptLazy

aria128DecryptLazy :: SecretKey ARIA128 -> ARIA128LazyCiphertext -> Maybe Lazy.ByteString
aria128DecryptLazy = blockCipherDecryptLazy

-- ARIA192 type

data ARIA192

newtype instance SecretKey ARIA192 = MkARIA192SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE ARIA192SecretKey #-}
pattern ARIA192SecretKey :: ByteString -> SecretKey ARIA192
pattern ARIA192SecretKey bytes = MkARIA192SecretKey (MkGSecretKey bytes)

getARIA192SecretKey :: SecretKey ARIA192 -> ByteString
getARIA192SecretKey (ARIA192SecretKey bs) = bs

type ARIA192SecretKey = SecretKey ARIA192

newtype instance Ciphertext ARIA192 = MkARIA192Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE ARIA192Ciphertext #-}
pattern ARIA192Ciphertext :: ByteString -> Ciphertext ARIA192
pattern ARIA192Ciphertext bs = MkARIA192Ciphertext (MkGCiphertext bs)

type ARIA192Ciphertext = Ciphertext ARIA192

{-# COMPLETE ARIA192LazyCiphertext #-}
newtype instance LazyCiphertext ARIA192 = MkARIA192LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

pattern ARIA192LazyCiphertext :: Lazy.ByteString -> LazyCiphertext ARIA192
pattern ARIA192LazyCiphertext lbs = MkARIA192LazyCiphertext (MkGLazyCiphertext lbs)

type ARIA192LazyCiphertext = LazyCiphertext ARIA192

instance HasSecretKey ARIA192 where

    secretKeySpec :: SizeSpecifier (SecretKey ARIA192)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.aria192

instance MonadRandomIO m => SecretKeyGen ARIA192 m where

    newSecretKey :: m (SecretKey ARIA192)
    newSecretKey = ARIA192SecretKey <$> newSized (secretKeySpec @ARIA192)

    newSecretKeyMaybe :: Int -> m (Maybe (SecretKey ARIA192))
    newSecretKeyMaybe i = fmap ARIA192SecretKey <$> newSizedMaybe (secretKeySpec @ARIA192) i

instance HasCiphertext ARIA192 where

instance BlockCipher ARIA192 where

    blockCipherEncrypt :: SecretKey ARIA192 -> ByteString -> Maybe (Ciphertext ARIA192)
    blockCipherEncrypt (ARIA192SecretKey k) = fmap ARIA192Ciphertext . Botan.blockCipherEncrypt Botan.aria192 k

    blockCipherDecrypt :: SecretKey ARIA192 -> Ciphertext ARIA192 -> Maybe ByteString
    blockCipherDecrypt (ARIA192SecretKey k) (ARIA192Ciphertext ct) = Botan.blockCipherDecrypt Botan.aria192 k ct

instance HasLazyCiphertext ARIA192 where

instance IncrementalBlockCipher ARIA192 where

    blockCipherEncryptLazy :: SecretKey ARIA192 -> Lazy.ByteString -> Maybe (LazyCiphertext ARIA192)
    blockCipherEncryptLazy (ARIA192SecretKey k) = fmap ARIA192LazyCiphertext . Botan.blockCipherEncryptLazy Botan.aria192 k

    blockCipherDecryptLazy :: SecretKey ARIA192 -> LazyCiphertext ARIA192 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (ARIA192SecretKey k) (ARIA192LazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.aria192 k ct

-- ARIA blockCipher

aria192Encrypt :: SecretKey ARIA192 -> ByteString -> Maybe ARIA192Ciphertext
aria192Encrypt = blockCipherEncrypt

aria192Decrypt :: SecretKey ARIA192 -> ARIA192Ciphertext -> Maybe ByteString
aria192Decrypt = blockCipherDecrypt

aria192EncryptLazy :: SecretKey ARIA192 -> Lazy.ByteString -> Maybe ARIA192LazyCiphertext
aria192EncryptLazy = blockCipherEncryptLazy

aria192DecryptLazy :: SecretKey ARIA192 -> ARIA192LazyCiphertext -> Maybe Lazy.ByteString
aria192DecryptLazy = blockCipherDecryptLazy

-- ARIA256 type

data ARIA256

newtype instance SecretKey ARIA256 = MkARIA256SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE ARIA256SecretKey #-}
pattern ARIA256SecretKey :: ByteString -> SecretKey ARIA256
pattern ARIA256SecretKey bytes = MkARIA256SecretKey (MkGSecretKey bytes)

getARIA256SecretKey :: SecretKey ARIA256 -> ByteString
getARIA256SecretKey (ARIA256SecretKey bs) = bs

type ARIA256SecretKey = SecretKey ARIA256

newtype instance Ciphertext ARIA256 = MkARIA256Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE ARIA256Ciphertext #-}
pattern ARIA256Ciphertext :: ByteString -> Ciphertext ARIA256
pattern ARIA256Ciphertext bs = MkARIA256Ciphertext (MkGCiphertext bs)

type ARIA256Ciphertext = Ciphertext ARIA256

newtype instance LazyCiphertext ARIA256 = MkARIA256LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

{-# COMPLETE ARIA256LazyCiphertext #-}
pattern ARIA256LazyCiphertext :: Lazy.ByteString -> LazyCiphertext ARIA256
pattern ARIA256LazyCiphertext lbs = MkARIA256LazyCiphertext (MkGLazyCiphertext lbs)

type ARIA256LazyCiphertext = LazyCiphertext ARIA256

instance HasSecretKey ARIA256 where

    secretKeySpec :: SizeSpecifier (SecretKey ARIA256)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.aria256

instance MonadRandomIO m => SecretKeyGen ARIA256 m where

    newSecretKey :: m (SecretKey ARIA256)
    newSecretKey = ARIA256SecretKey <$> newSized (secretKeySpec @ARIA256)

    newSecretKeyMaybe :: Int -> m (Maybe (SecretKey ARIA256))
    newSecretKeyMaybe i = fmap ARIA256SecretKey <$> newSizedMaybe (secretKeySpec @ARIA256) i

instance HasCiphertext ARIA256 where

instance BlockCipher ARIA256 where

    blockCipherEncrypt :: SecretKey ARIA256 -> ByteString -> Maybe (Ciphertext ARIA256)
    blockCipherEncrypt (ARIA256SecretKey k) = fmap ARIA256Ciphertext . Botan.blockCipherEncrypt Botan.aria256 k

    blockCipherDecrypt :: SecretKey ARIA256 -> Ciphertext ARIA256 -> Maybe ByteString
    blockCipherDecrypt (ARIA256SecretKey k) (ARIA256Ciphertext ct) = Botan.blockCipherDecrypt Botan.aria256 k ct

instance HasLazyCiphertext ARIA256 where

instance IncrementalBlockCipher ARIA256 where

    blockCipherEncryptLazy :: SecretKey ARIA256 -> Lazy.ByteString -> Maybe (LazyCiphertext ARIA256)
    blockCipherEncryptLazy (ARIA256SecretKey k) = fmap ARIA256LazyCiphertext . Botan.blockCipherEncryptLazy Botan.aria256 k

    blockCipherDecryptLazy :: SecretKey ARIA256 -> LazyCiphertext ARIA256 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (ARIA256SecretKey k) (ARIA256LazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.aria256 k ct

-- ARIA blockCipher

aria256Encrypt :: SecretKey ARIA256 -> ByteString -> Maybe ARIA256Ciphertext
aria256Encrypt = blockCipherEncrypt

aria256Decrypt :: SecretKey ARIA256 -> ARIA256Ciphertext -> Maybe ByteString
aria256Decrypt = blockCipherDecrypt

aria256EncryptLazy :: SecretKey ARIA256 -> Lazy.ByteString -> Maybe ARIA256LazyCiphertext
aria256EncryptLazy = blockCipherEncryptLazy

aria256DecryptLazy :: SecretKey ARIA256 -> ARIA256LazyCiphertext -> Maybe Lazy.ByteString
aria256DecryptLazy = blockCipherDecryptLazy

-- Temporary BlockCipher128 conformance

instance BlockCipher128 ARIA128 where
instance IncrementalBlockCipher128 ARIA128 where
instance BlockCipher128 ARIA192 where
instance IncrementalBlockCipher128 ARIA192 where
instance BlockCipher128 ARIA256 where
instance IncrementalBlockCipher128 ARIA256 where
