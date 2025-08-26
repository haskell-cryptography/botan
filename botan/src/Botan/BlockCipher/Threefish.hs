module Botan.BlockCipher.Threefish
( Threefish512(..)
, Threefish512SecretKey(..)
, pattern Threefish512SecretKey
, getThreefish512SecretKey
, Threefish512Ciphertext(..)
, threefish512Encrypt
, threefish512Decrypt
, threefish512EncryptLazy
, threefish512DecryptLazy
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

-- Threefish512 type

data Threefish512

newtype instance SecretKey Threefish512 = MkThreefish512SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

pattern Threefish512SecretKey :: ByteString -> SecretKey Threefish512
pattern Threefish512SecretKey bytes = MkThreefish512SecretKey (MkGSecretKey bytes)

getThreefish512SecretKey :: SecretKey Threefish512 -> ByteString
getThreefish512SecretKey (Threefish512SecretKey bs) = bs

type Threefish512SecretKey = SecretKey Threefish512

newtype instance Ciphertext Threefish512 = MkThreefish512Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

pattern Threefish512Ciphertext :: ByteString -> Ciphertext Threefish512
pattern Threefish512Ciphertext bs = MkThreefish512Ciphertext (MkGCiphertext bs)

getThreefish512Ciphertext :: Ciphertext Threefish512 -> ByteString
getThreefish512Ciphertext (Threefish512Ciphertext bs) = bs

type Threefish512Ciphertext = Ciphertext Threefish512

newtype instance LazyCiphertext Threefish512 = MkThreefish512LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

pattern Threefish512LazyCiphertext :: Lazy.ByteString -> LazyCiphertext Threefish512
pattern Threefish512LazyCiphertext lbs = MkThreefish512LazyCiphertext (MkGLazyCiphertext lbs)

getThreefish512LazyCiphertext :: LazyCiphertext Threefish512 -> Lazy.ByteString
getThreefish512LazyCiphertext (Threefish512LazyCiphertext bs) = bs

type Threefish512LazyCiphertext = LazyCiphertext Threefish512

instance HasSecretKey Threefish512 where

    secretKeySpec :: SizeSpecifier (SecretKey Threefish512)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.threefish512

instance (MonadRandomIO m )=> SecretKeyGen Threefish512 m where

    newSecretKey :: MonadRandomIO m => m (SecretKey Threefish512)
    newSecretKey = Threefish512SecretKey <$> newSized (secretKeySpec @Threefish512)

    newSecretKeyMaybe :: MonadRandomIO m => Int -> m (Maybe (SecretKey Threefish512))
    newSecretKeyMaybe i = fmap Threefish512SecretKey <$> newSizedMaybe (secretKeySpec @Threefish512) i

instance HasCiphertext Threefish512 where

instance BlockCipher Threefish512 where

    blockCipherEncrypt :: SecretKey Threefish512 -> ByteString -> Maybe (Ciphertext Threefish512)
    blockCipherEncrypt (Threefish512SecretKey k) = fmap Threefish512Ciphertext . Botan.blockCipherEncrypt Botan.threefish512 k

    blockCipherDecrypt :: SecretKey Threefish512 -> Ciphertext Threefish512 -> Maybe ByteString
    blockCipherDecrypt (Threefish512SecretKey k) (Threefish512Ciphertext ct) = Botan.blockCipherDecrypt Botan.threefish512 k ct

instance HasLazyCiphertext Threefish512 where

instance IncrementalBlockCipher Threefish512 where

    blockCipherEncryptLazy :: SecretKey Threefish512 -> Lazy.ByteString -> Maybe (LazyCiphertext Threefish512)
    blockCipherEncryptLazy (Threefish512SecretKey k) = fmap Threefish512LazyCiphertext . Botan.blockCipherEncryptLazy Botan.threefish512 k

    blockCipherDecryptLazy :: SecretKey Threefish512 -> LazyCiphertext Threefish512 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (Threefish512SecretKey k) (Threefish512LazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.threefish512 k ct

-- Threefish512 blockCipher

threefish512Encrypt :: SecretKey Threefish512 -> ByteString -> Maybe Threefish512Ciphertext
threefish512Encrypt = blockCipherEncrypt

threefish512Decrypt :: SecretKey Threefish512 -> Threefish512Ciphertext -> Maybe ByteString
threefish512Decrypt = blockCipherDecrypt

threefish512EncryptLazy :: SecretKey Threefish512 -> Lazy.ByteString -> Maybe Threefish512LazyCiphertext
threefish512EncryptLazy = blockCipherEncryptLazy

threefish512DecryptLazy :: SecretKey Threefish512 -> Threefish512LazyCiphertext -> Maybe Lazy.ByteString
threefish512DecryptLazy = blockCipherDecryptLazy
