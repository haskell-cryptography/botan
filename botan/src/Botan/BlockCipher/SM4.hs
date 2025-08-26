module Botan.BlockCipher.SM4
( SM4(..)
, SM4SecretKey(..)
, pattern SM4SecretKey
, getSM4SecretKey
, SM4Ciphertext(..)
, sm4Encrypt
, sm4Decrypt
, sm4EncryptLazy
, sm4DecryptLazy
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

-- SM4 type

data SM4

newtype instance SecretKey SM4 = MkSM4SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

pattern SM4SecretKey :: ByteString -> SecretKey SM4
pattern SM4SecretKey bytes = MkSM4SecretKey (MkGSecretKey bytes)

getSM4SecretKey :: SecretKey SM4 -> ByteString
getSM4SecretKey (SM4SecretKey bs) = bs

type SM4SecretKey = SecretKey SM4

newtype instance Ciphertext SM4 = MkSM4Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

pattern SM4Ciphertext :: ByteString -> Ciphertext SM4
pattern SM4Ciphertext bs = MkSM4Ciphertext (MkGCiphertext bs)

getSM4Ciphertext :: Ciphertext SM4 -> ByteString
getSM4Ciphertext (SM4Ciphertext bs) = bs

type SM4Ciphertext = Ciphertext SM4

newtype instance LazyCiphertext SM4 = MkSM4LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

pattern SM4LazyCiphertext :: Lazy.ByteString -> LazyCiphertext SM4
pattern SM4LazyCiphertext lbs = MkSM4LazyCiphertext (MkGLazyCiphertext lbs)

getSM4LazyCiphertext :: LazyCiphertext SM4 -> Lazy.ByteString
getSM4LazyCiphertext (SM4LazyCiphertext bs) = bs

type SM4LazyCiphertext = LazyCiphertext SM4

instance HasSecretKey SM4 where

    secretKeySpec :: SizeSpecifier (SecretKey SM4)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.sm4

instance (MonadRandomIO m )=> SecretKeyGen SM4 m where

    newSecretKey :: MonadRandomIO m => m (SecretKey SM4)
    newSecretKey = SM4SecretKey <$> newSized (secretKeySpec @SM4)

    newSecretKeyMaybe :: MonadRandomIO m => Int -> m (Maybe (SecretKey SM4))
    newSecretKeyMaybe i = fmap SM4SecretKey <$> newSizedMaybe (secretKeySpec @SM4) i

instance HasCiphertext SM4 where

instance BlockCipher SM4 where

    blockCipherEncrypt :: SecretKey SM4 -> ByteString -> Maybe (Ciphertext SM4)
    blockCipherEncrypt (SM4SecretKey k) = fmap SM4Ciphertext . Botan.blockCipherEncrypt Botan.sm4 k

    blockCipherDecrypt :: SecretKey SM4 -> Ciphertext SM4 -> Maybe ByteString
    blockCipherDecrypt (SM4SecretKey k) (SM4Ciphertext ct) = Botan.blockCipherDecrypt Botan.sm4 k ct

instance HasLazyCiphertext SM4 where

instance IncrementalBlockCipher SM4 where

    blockCipherEncryptLazy :: SecretKey SM4 -> Lazy.ByteString -> Maybe (LazyCiphertext SM4)
    blockCipherEncryptLazy (SM4SecretKey k) = fmap SM4LazyCiphertext . Botan.blockCipherEncryptLazy Botan.sm4 k

    blockCipherDecryptLazy :: SecretKey SM4 -> LazyCiphertext SM4 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (SM4SecretKey k) (SM4LazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.sm4 k ct

-- SM4 blockCipher

sm4Encrypt :: SecretKey SM4 -> ByteString -> Maybe SM4Ciphertext
sm4Encrypt = blockCipherEncrypt

sm4Decrypt :: SecretKey SM4 -> SM4Ciphertext -> Maybe ByteString
sm4Decrypt = blockCipherDecrypt

sm4EncryptLazy :: SecretKey SM4 -> Lazy.ByteString -> Maybe SM4LazyCiphertext
sm4EncryptLazy = blockCipherEncryptLazy

sm4DecryptLazy :: SecretKey SM4 -> SM4LazyCiphertext -> Maybe Lazy.ByteString
sm4DecryptLazy = blockCipherDecryptLazy
