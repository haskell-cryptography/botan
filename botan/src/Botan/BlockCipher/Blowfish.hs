{-# LANGUAGE TypeFamilies #-}

module Botan.BlockCipher.Blowfish (
    Blowfish
  , BlowfishSecretKey
  , pattern BlowfishSecretKey
  , getBlowfishSecretKey
  , BlowfishCiphertext
  , blowfishEncrypt
  , blowfishDecrypt
  , blowfishEncryptLazy
  , blowfishDecryptLazy
  ) where

import qualified Data.ByteString.Lazy as Lazy

import qualified Botan.BlockCipher as Botan

import           Botan.Prelude hiding (Ciphertext, LazyCiphertext)

import           Botan.BlockCipher.Class
import           Botan.RNG
import           Botan.Types.Class

-- Blowfish type

data Blowfish

newtype instance SecretKey Blowfish = MkBlowfishSecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE BlowfishSecretKey #-}
pattern BlowfishSecretKey :: ByteString -> SecretKey Blowfish
pattern BlowfishSecretKey bytes = MkBlowfishSecretKey (MkGSecretKey bytes)

getBlowfishSecretKey :: SecretKey Blowfish -> ByteString
getBlowfishSecretKey (BlowfishSecretKey bs) = bs

type BlowfishSecretKey = SecretKey Blowfish

newtype instance Ciphertext Blowfish = MkBlowfishCiphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE BlowfishCiphertext #-}
pattern BlowfishCiphertext :: ByteString -> Ciphertext Blowfish
pattern BlowfishCiphertext bs = MkBlowfishCiphertext (MkGCiphertext bs)

type BlowfishCiphertext = Ciphertext Blowfish

newtype instance LazyCiphertext Blowfish = MkBlowfishLazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

{-# COMPLETE BlowfishLazyCiphertext #-}
pattern BlowfishLazyCiphertext :: Lazy.ByteString -> LazyCiphertext Blowfish
pattern BlowfishLazyCiphertext lbs = MkBlowfishLazyCiphertext (MkGLazyCiphertext lbs)

type BlowfishLazyCiphertext = LazyCiphertext Blowfish

instance HasSecretKey Blowfish where

    secretKeySpec :: SizeSpecifier (SecretKey Blowfish)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.blowfish

instance MonadRandomIO m => SecretKeyGen Blowfish m where

    newSecretKey :: m (SecretKey Blowfish)
    newSecretKey = BlowfishSecretKey <$> newSized (secretKeySpec @Blowfish)

    newSecretKeyMaybe :: Int -> m (Maybe (SecretKey Blowfish))
    newSecretKeyMaybe i = fmap BlowfishSecretKey <$> newSizedMaybe (secretKeySpec @Blowfish) i

instance HasCiphertext Blowfish where

instance BlockCipher Blowfish where

    blockCipherEncrypt :: SecretKey Blowfish -> ByteString -> Maybe (Ciphertext Blowfish)
    blockCipherEncrypt (BlowfishSecretKey k) = fmap BlowfishCiphertext . Botan.blockCipherEncrypt Botan.blowfish k

    blockCipherDecrypt :: SecretKey Blowfish -> Ciphertext Blowfish -> Maybe ByteString
    blockCipherDecrypt (BlowfishSecretKey k) (BlowfishCiphertext ct) = Botan.blockCipherDecrypt Botan.blowfish k ct

instance HasLazyCiphertext Blowfish where

instance IncrementalBlockCipher Blowfish where

    blockCipherEncryptLazy :: SecretKey Blowfish -> Lazy.ByteString -> Maybe (LazyCiphertext Blowfish)
    blockCipherEncryptLazy (BlowfishSecretKey k) = fmap BlowfishLazyCiphertext . Botan.blockCipherEncryptLazy Botan.blowfish k

    blockCipherDecryptLazy :: SecretKey Blowfish -> LazyCiphertext Blowfish -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (BlowfishSecretKey k) (BlowfishLazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.blowfish k ct

-- Blowfish blockCipher

blowfishEncrypt :: SecretKey Blowfish -> ByteString -> Maybe BlowfishCiphertext
blowfishEncrypt = blockCipherEncrypt

blowfishDecrypt :: SecretKey Blowfish -> BlowfishCiphertext -> Maybe ByteString
blowfishDecrypt = blockCipherDecrypt

blowfishEncryptLazy :: SecretKey Blowfish -> Lazy.ByteString -> Maybe BlowfishLazyCiphertext
blowfishEncryptLazy = blockCipherEncryptLazy

blowfishDecryptLazy :: SecretKey Blowfish -> BlowfishLazyCiphertext -> Maybe Lazy.ByteString
blowfishDecryptLazy = blockCipherDecryptLazy
