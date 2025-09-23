{-# LANGUAGE TypeFamilies #-}

module Botan.BlockCipher.Twofish (
    Twofish
  , TwofishSecretKey
  , pattern TwofishSecretKey
  , getTwofishSecretKey
  , TwofishCiphertext
  , twofishEncrypt
  , twofishDecrypt
  , twofishEncryptLazy
  , twofishDecryptLazy
  ) where

import qualified Data.ByteString.Lazy as Lazy

import qualified Botan.BlockCipher as Botan

import           Botan.Prelude hiding (Ciphertext, LazyCiphertext)

import           Botan.BlockCipher.Class
import           Botan.RNG
import           Botan.Types.Class

-- Twofish type

data Twofish

newtype instance SecretKey Twofish = MkTwofishSecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE TwofishSecretKey #-}
pattern TwofishSecretKey :: ByteString -> SecretKey Twofish
pattern TwofishSecretKey bytes = MkTwofishSecretKey (MkGSecretKey bytes)

getTwofishSecretKey :: SecretKey Twofish -> ByteString
getTwofishSecretKey (TwofishSecretKey bs) = bs

type TwofishSecretKey = SecretKey Twofish

newtype instance Ciphertext Twofish = MkTwofishCiphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE TwofishCiphertext #-}
pattern TwofishCiphertext :: ByteString -> Ciphertext Twofish
pattern TwofishCiphertext bs = MkTwofishCiphertext (MkGCiphertext bs)

type TwofishCiphertext = Ciphertext Twofish

newtype instance LazyCiphertext Twofish = MkTwofishLazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

{-# COMPLETE TwofishLazyCiphertext #-}
pattern TwofishLazyCiphertext :: Lazy.ByteString -> LazyCiphertext Twofish
pattern TwofishLazyCiphertext lbs = MkTwofishLazyCiphertext (MkGLazyCiphertext lbs)

type TwofishLazyCiphertext = LazyCiphertext Twofish

instance HasSecretKey Twofish where

    secretKeySpec :: SizeSpecifier (SecretKey Twofish)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.twofish

instance MonadRandomIO m => SecretKeyGen Twofish m where

    newSecretKey :: m (SecretKey Twofish)
    newSecretKey = TwofishSecretKey <$> newSized (secretKeySpec @Twofish)

    newSecretKeyMaybe :: Int -> m (Maybe (SecretKey Twofish))
    newSecretKeyMaybe i = fmap TwofishSecretKey <$> newSizedMaybe (secretKeySpec @Twofish) i

instance HasCiphertext Twofish where

instance BlockCipher Twofish where

    blockCipherEncrypt :: SecretKey Twofish -> ByteString -> Maybe (Ciphertext Twofish)
    blockCipherEncrypt (TwofishSecretKey k) = fmap TwofishCiphertext . Botan.blockCipherEncrypt Botan.twofish k

    blockCipherDecrypt :: SecretKey Twofish -> Ciphertext Twofish -> Maybe ByteString
    blockCipherDecrypt (TwofishSecretKey k) (TwofishCiphertext ct) = Botan.blockCipherDecrypt Botan.twofish k ct

instance HasLazyCiphertext Twofish where

instance IncrementalBlockCipher Twofish where

    blockCipherEncryptLazy :: SecretKey Twofish -> Lazy.ByteString -> Maybe (LazyCiphertext Twofish)
    blockCipherEncryptLazy (TwofishSecretKey k) = fmap TwofishLazyCiphertext . Botan.blockCipherEncryptLazy Botan.twofish k

    blockCipherDecryptLazy :: SecretKey Twofish -> LazyCiphertext Twofish -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (TwofishSecretKey k) (TwofishLazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.twofish k ct

-- Twofish blockCipher

twofishEncrypt :: SecretKey Twofish -> ByteString -> Maybe TwofishCiphertext
twofishEncrypt = blockCipherEncrypt

twofishDecrypt :: SecretKey Twofish -> TwofishCiphertext -> Maybe ByteString
twofishDecrypt = blockCipherDecrypt

twofishEncryptLazy :: SecretKey Twofish -> Lazy.ByteString -> Maybe TwofishLazyCiphertext
twofishEncryptLazy = blockCipherEncryptLazy

twofishDecryptLazy :: SecretKey Twofish -> TwofishLazyCiphertext -> Maybe Lazy.ByteString
twofishDecryptLazy = blockCipherDecryptLazy

-- Temporary BlockCipher128 conformance

instance BlockCipher128 Twofish where
instance IncrementalBlockCipher128 Twofish where
