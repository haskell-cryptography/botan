module Botan.BlockCipher.GOST
( GOST_28147_89(..)
, GOST_28147_89SecretKey(..)
, pattern GOST_28147_89SecretKey
, getGOST_28147_89SecretKey
, GOST_28147_89Ciphertext(..)
, gost_28147_89Encrypt
, gost_28147_89Decrypt
, gost_28147_89EncryptLazy
, gost_28147_89DecryptLazy
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

-- GOST_28147_89 type

data GOST_28147_89

newtype instance SecretKey GOST_28147_89 = MkGOST_28147_89SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

pattern GOST_28147_89SecretKey :: ByteString -> SecretKey GOST_28147_89
pattern GOST_28147_89SecretKey bytes = MkGOST_28147_89SecretKey (MkGSecretKey bytes)

getGOST_28147_89SecretKey :: SecretKey GOST_28147_89 -> ByteString
getGOST_28147_89SecretKey (GOST_28147_89SecretKey bs) = bs

type GOST_28147_89SecretKey = SecretKey GOST_28147_89

newtype instance Ciphertext GOST_28147_89 = MkGOST_28147_89Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

pattern GOST_28147_89Ciphertext :: ByteString -> Ciphertext GOST_28147_89
pattern GOST_28147_89Ciphertext bs = MkGOST_28147_89Ciphertext (MkGCiphertext bs)

getGOST_28147_89Ciphertext :: Ciphertext GOST_28147_89 -> ByteString
getGOST_28147_89Ciphertext (GOST_28147_89Ciphertext bs) = bs

type GOST_28147_89Ciphertext = Ciphertext GOST_28147_89

newtype instance LazyCiphertext GOST_28147_89 = MkGOST_28147_89LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

pattern GOST_28147_89LazyCiphertext :: Lazy.ByteString -> LazyCiphertext GOST_28147_89
pattern GOST_28147_89LazyCiphertext lbs = MkGOST_28147_89LazyCiphertext (MkGLazyCiphertext lbs)

getGOST_28147_89LazyCiphertext :: LazyCiphertext GOST_28147_89 -> Lazy.ByteString
getGOST_28147_89LazyCiphertext (GOST_28147_89LazyCiphertext bs) = bs

type GOST_28147_89LazyCiphertext = LazyCiphertext GOST_28147_89

instance HasSecretKey GOST_28147_89 where

    secretKeySpec :: SizeSpecifier (SecretKey GOST_28147_89)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.gost_28147_89

instance (MonadRandomIO m )=> SecretKeyGen GOST_28147_89 m where

    newSecretKey :: MonadRandomIO m => m (SecretKey GOST_28147_89)
    newSecretKey = GOST_28147_89SecretKey <$> newSized (secretKeySpec @GOST_28147_89)

    newSecretKeyMaybe :: MonadRandomIO m => Int -> m (Maybe (SecretKey GOST_28147_89))
    newSecretKeyMaybe i = fmap GOST_28147_89SecretKey <$> newSizedMaybe (secretKeySpec @GOST_28147_89) i

instance HasCiphertext GOST_28147_89 where

instance BlockCipher GOST_28147_89 where

    blockCipherEncrypt :: SecretKey GOST_28147_89 -> ByteString -> Maybe (Ciphertext GOST_28147_89)
    blockCipherEncrypt (GOST_28147_89SecretKey k) = fmap GOST_28147_89Ciphertext . Botan.blockCipherEncrypt Botan.gost_28147_89 k

    blockCipherDecrypt :: SecretKey GOST_28147_89 -> Ciphertext GOST_28147_89 -> Maybe ByteString
    blockCipherDecrypt (GOST_28147_89SecretKey k) (GOST_28147_89Ciphertext ct) = Botan.blockCipherDecrypt Botan.gost_28147_89 k ct

instance HasLazyCiphertext GOST_28147_89 where

instance IncrementalBlockCipher GOST_28147_89 where

    blockCipherEncryptLazy :: SecretKey GOST_28147_89 -> Lazy.ByteString -> Maybe (LazyCiphertext GOST_28147_89)
    blockCipherEncryptLazy (GOST_28147_89SecretKey k) = fmap GOST_28147_89LazyCiphertext . Botan.blockCipherEncryptLazy Botan.gost_28147_89 k

    blockCipherDecryptLazy :: SecretKey GOST_28147_89 -> LazyCiphertext GOST_28147_89 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (GOST_28147_89SecretKey k) (GOST_28147_89LazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.gost_28147_89 k ct

-- GOST_28147_89 blockCipher

gost_28147_89Encrypt :: SecretKey GOST_28147_89 -> ByteString -> Maybe GOST_28147_89Ciphertext
gost_28147_89Encrypt = blockCipherEncrypt

gost_28147_89Decrypt :: SecretKey GOST_28147_89 -> GOST_28147_89Ciphertext -> Maybe ByteString
gost_28147_89Decrypt = blockCipherDecrypt

gost_28147_89EncryptLazy :: SecretKey GOST_28147_89 -> Lazy.ByteString -> Maybe GOST_28147_89LazyCiphertext
gost_28147_89EncryptLazy = blockCipherEncryptLazy

gost_28147_89DecryptLazy :: SecretKey GOST_28147_89 -> GOST_28147_89LazyCiphertext -> Maybe Lazy.ByteString
gost_28147_89DecryptLazy = blockCipherDecryptLazy
