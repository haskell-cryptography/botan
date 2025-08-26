module Botan.BlockCipher.Serpent
( Serpent(..)
, SerpentSecretKey(..)
, pattern SerpentSecretKey
, getSerpentSecretKey
, SerpentCiphertext(..)
, serpentEncrypt
, serpentDecrypt
, serpentEncryptLazy
, serpentDecryptLazy
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

-- Serpent type

data Serpent

newtype instance SecretKey Serpent = MkSerpentSecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

pattern SerpentSecretKey :: ByteString -> SecretKey Serpent
pattern SerpentSecretKey bytes = MkSerpentSecretKey (MkGSecretKey bytes)

getSerpentSecretKey :: SecretKey Serpent -> ByteString
getSerpentSecretKey (SerpentSecretKey bs) = bs

type SerpentSecretKey = SecretKey Serpent

newtype instance Ciphertext Serpent = MkSerpentCiphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

pattern SerpentCiphertext :: ByteString -> Ciphertext Serpent
pattern SerpentCiphertext bs = MkSerpentCiphertext (MkGCiphertext bs)

getSerpentCiphertext :: Ciphertext Serpent -> ByteString
getSerpentCiphertext (SerpentCiphertext bs) = bs

type SerpentCiphertext = Ciphertext Serpent

newtype instance LazyCiphertext Serpent = MkSerpentLazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

pattern SerpentLazyCiphertext :: Lazy.ByteString -> LazyCiphertext Serpent
pattern SerpentLazyCiphertext lbs = MkSerpentLazyCiphertext (MkGLazyCiphertext lbs)

getSerpentLazyCiphertext :: LazyCiphertext Serpent -> Lazy.ByteString
getSerpentLazyCiphertext (SerpentLazyCiphertext bs) = bs

type SerpentLazyCiphertext = LazyCiphertext Serpent

instance HasSecretKey Serpent where

    secretKeySpec :: SizeSpecifier (SecretKey Serpent)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.serpent

instance (MonadRandomIO m )=> SecretKeyGen Serpent m where

    newSecretKey :: MonadRandomIO m => m (SecretKey Serpent)
    newSecretKey = SerpentSecretKey <$> newSized (secretKeySpec @Serpent)

    newSecretKeyMaybe :: MonadRandomIO m => Int -> m (Maybe (SecretKey Serpent))
    newSecretKeyMaybe i = fmap SerpentSecretKey <$> newSizedMaybe (secretKeySpec @Serpent) i

instance HasCiphertext Serpent where

instance BlockCipher Serpent where

    blockCipherEncrypt :: SecretKey Serpent -> ByteString -> Maybe (Ciphertext Serpent)
    blockCipherEncrypt (SerpentSecretKey k) = fmap SerpentCiphertext . Botan.blockCipherEncrypt Botan.serpent k

    blockCipherDecrypt :: SecretKey Serpent -> Ciphertext Serpent -> Maybe ByteString
    blockCipherDecrypt (SerpentSecretKey k) (SerpentCiphertext ct) = Botan.blockCipherDecrypt Botan.serpent k ct

instance HasLazyCiphertext Serpent where

instance IncrementalBlockCipher Serpent where

    blockCipherEncryptLazy :: SecretKey Serpent -> Lazy.ByteString -> Maybe (LazyCiphertext Serpent)
    blockCipherEncryptLazy (SerpentSecretKey k) = fmap SerpentLazyCiphertext . Botan.blockCipherEncryptLazy Botan.serpent k

    blockCipherDecryptLazy :: SecretKey Serpent -> LazyCiphertext Serpent -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (SerpentSecretKey k) (SerpentLazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.serpent k ct

-- Serpent blockCipher

serpentEncrypt :: SecretKey Serpent -> ByteString -> Maybe SerpentCiphertext
serpentEncrypt = blockCipherEncrypt

serpentDecrypt :: SecretKey Serpent -> SerpentCiphertext -> Maybe ByteString
serpentDecrypt = blockCipherDecrypt

serpentEncryptLazy :: SecretKey Serpent -> Lazy.ByteString -> Maybe SerpentLazyCiphertext
serpentEncryptLazy = blockCipherEncryptLazy

serpentDecryptLazy :: SecretKey Serpent -> SerpentLazyCiphertext -> Maybe Lazy.ByteString
serpentDecryptLazy = blockCipherDecryptLazy

-- Temporary BlockCipher128 conformance

instance BlockCipher128 Serpent where
instance IncrementalBlockCipher128 Serpent where
