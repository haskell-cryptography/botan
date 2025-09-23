{-# LANGUAGE TypeFamilies #-}

module Botan.BlockCipher.DES (
    DES
  , DESSecretKey
  , pattern DESSecretKey
  , getDESSecretKey
  , DESCiphertext
  , desEncrypt
  , desDecrypt
  , desEncryptLazy
  , desDecryptLazy
  , TripleDES
  , TripleDESSecretKey
  , pattern TripleDESSecretKey
  , getTripleDESSecretKey
  , TripleDESCiphertext
  , tripleDESEncrypt
  , tripleDESDecrypt
  , tripleDESEncryptLazy
  , tripleDESDecryptLazy
  ) where

import qualified Data.ByteString.Lazy as Lazy

import qualified Botan.BlockCipher as Botan

import           Botan.Prelude hiding (Ciphertext, LazyCiphertext)

import           Botan.BlockCipher.Class
import           Botan.RNG
import           Botan.Types.Class

-- DES type

data DES

newtype instance SecretKey DES = MkDESSecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE DESSecretKey #-}
pattern DESSecretKey :: ByteString -> SecretKey DES
pattern DESSecretKey bytes = MkDESSecretKey (MkGSecretKey bytes)

getDESSecretKey :: SecretKey DES -> ByteString
getDESSecretKey (DESSecretKey bs) = bs

type DESSecretKey = SecretKey DES

newtype instance Ciphertext DES = MkDESCiphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE DESCiphertext #-}
pattern DESCiphertext :: ByteString -> Ciphertext DES
pattern DESCiphertext bs = MkDESCiphertext (MkGCiphertext bs)

type DESCiphertext = Ciphertext DES

newtype instance LazyCiphertext DES = MkDESLazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

{-# COMPLETE DESLazyCiphertext #-}
pattern DESLazyCiphertext :: Lazy.ByteString -> LazyCiphertext DES
pattern DESLazyCiphertext lbs = MkDESLazyCiphertext (MkGLazyCiphertext lbs)

type DESLazyCiphertext = LazyCiphertext DES

instance HasSecretKey DES where

    secretKeySpec :: SizeSpecifier (SecretKey DES)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.des

instance MonadRandomIO m => SecretKeyGen DES m where

    newSecretKey :: m (SecretKey DES)
    newSecretKey = DESSecretKey <$> newSized (secretKeySpec @DES)

    newSecretKeyMaybe :: Int -> m (Maybe (SecretKey DES))
    newSecretKeyMaybe i = fmap DESSecretKey <$> newSizedMaybe (secretKeySpec @DES) i

instance HasCiphertext DES where

instance BlockCipher DES where

    blockCipherEncrypt :: SecretKey DES -> ByteString -> Maybe (Ciphertext DES)
    blockCipherEncrypt (DESSecretKey k) = fmap DESCiphertext . Botan.blockCipherEncrypt Botan.des k

    blockCipherDecrypt :: SecretKey DES -> Ciphertext DES -> Maybe ByteString
    blockCipherDecrypt (DESSecretKey k) (DESCiphertext ct) = Botan.blockCipherDecrypt Botan.des k ct

instance HasLazyCiphertext DES where

instance IncrementalBlockCipher DES where

    blockCipherEncryptLazy :: SecretKey DES -> Lazy.ByteString -> Maybe (LazyCiphertext DES)
    blockCipherEncryptLazy (DESSecretKey k) = fmap DESLazyCiphertext . Botan.blockCipherEncryptLazy Botan.des k

    blockCipherDecryptLazy :: SecretKey DES -> LazyCiphertext DES -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (DESSecretKey k) (DESLazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.des k ct

-- DES blockCipher

desEncrypt :: SecretKey DES -> ByteString -> Maybe DESCiphertext
desEncrypt = blockCipherEncrypt

desDecrypt :: SecretKey DES -> DESCiphertext -> Maybe ByteString
desDecrypt = blockCipherDecrypt

desEncryptLazy :: SecretKey DES -> Lazy.ByteString -> Maybe DESLazyCiphertext
desEncryptLazy = blockCipherEncryptLazy

desDecryptLazy :: SecretKey DES -> DESLazyCiphertext -> Maybe Lazy.ByteString
desDecryptLazy = blockCipherDecryptLazy


-- Triple DES type

data TripleDES

newtype instance SecretKey TripleDES = MkTripleDESSecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE TripleDESSecretKey #-}
pattern TripleDESSecretKey :: ByteString -> SecretKey TripleDES
pattern TripleDESSecretKey bytes = MkTripleDESSecretKey (MkGSecretKey bytes)

getTripleDESSecretKey :: SecretKey TripleDES -> ByteString
getTripleDESSecretKey (TripleDESSecretKey bs) = bs

type TripleDESSecretKey = SecretKey TripleDES

newtype instance Ciphertext TripleDES = MkTripleDESCiphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE TripleDESCiphertext #-}
pattern TripleDESCiphertext :: ByteString -> Ciphertext TripleDES
pattern TripleDESCiphertext bs = MkTripleDESCiphertext (MkGCiphertext bs)

type TripleDESCiphertext = Ciphertext TripleDES

newtype instance LazyCiphertext TripleDES = MkTripleDESLazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

{-# COMPLETE TripleDESLazyCiphertext #-}
pattern TripleDESLazyCiphertext :: Lazy.ByteString -> LazyCiphertext TripleDES
pattern TripleDESLazyCiphertext lbs = MkTripleDESLazyCiphertext (MkGLazyCiphertext lbs)

type TripleDESLazyCiphertext = LazyCiphertext TripleDES

instance HasSecretKey TripleDES where

    secretKeySpec :: SizeSpecifier (SecretKey TripleDES)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.tripleDES

instance MonadRandomIO m => SecretKeyGen TripleDES m where

    newSecretKey :: m (SecretKey TripleDES)
    newSecretKey = TripleDESSecretKey <$> newSized (secretKeySpec @TripleDES)

    newSecretKeyMaybe :: Int -> m (Maybe (SecretKey TripleDES))
    newSecretKeyMaybe i = fmap TripleDESSecretKey <$> newSizedMaybe (secretKeySpec @TripleDES) i

instance HasCiphertext TripleDES where

instance BlockCipher TripleDES where

    blockCipherEncrypt :: SecretKey TripleDES -> ByteString -> Maybe (Ciphertext TripleDES)
    blockCipherEncrypt (TripleDESSecretKey k) = fmap TripleDESCiphertext . Botan.blockCipherEncrypt Botan.tripleDES k

    blockCipherDecrypt :: SecretKey TripleDES -> Ciphertext TripleDES -> Maybe ByteString
    blockCipherDecrypt (TripleDESSecretKey k) (TripleDESCiphertext ct) = Botan.blockCipherDecrypt Botan.tripleDES k ct

instance HasLazyCiphertext TripleDES where

instance IncrementalBlockCipher TripleDES where

    blockCipherEncryptLazy :: SecretKey TripleDES -> Lazy.ByteString -> Maybe (LazyCiphertext TripleDES)
    blockCipherEncryptLazy (TripleDESSecretKey k) = fmap TripleDESLazyCiphertext . Botan.blockCipherEncryptLazy Botan.tripleDES k

    blockCipherDecryptLazy :: SecretKey TripleDES -> LazyCiphertext TripleDES -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (TripleDESSecretKey k) (TripleDESLazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.tripleDES k ct

-- TripleDES blockCipher

tripleDESEncrypt :: SecretKey TripleDES -> ByteString -> Maybe TripleDESCiphertext
tripleDESEncrypt = blockCipherEncrypt

tripleDESDecrypt :: SecretKey TripleDES -> TripleDESCiphertext -> Maybe ByteString
tripleDESDecrypt = blockCipherDecrypt

tripleDESEncryptLazy :: SecretKey TripleDES -> Lazy.ByteString -> Maybe TripleDESLazyCiphertext
tripleDESEncryptLazy = blockCipherEncryptLazy

tripleDESDecryptLazy :: SecretKey TripleDES -> TripleDESLazyCiphertext -> Maybe Lazy.ByteString
tripleDESDecryptLazy = blockCipherDecryptLazy
