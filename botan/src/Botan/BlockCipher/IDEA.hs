{-# LANGUAGE TypeFamilies #-}

module Botan.BlockCipher.IDEA (
    IDEA
  , IDEASecretKey
  , pattern IDEASecretKey
  , getIDEASecretKey
  , IDEACiphertext
  , ideaEncrypt
  , ideaDecrypt
  , ideaEncryptLazy
  , ideaDecryptLazy
  ) where

import qualified Data.ByteString.Lazy as Lazy

import qualified Botan.BlockCipher as Botan

import           Botan.Prelude hiding (Ciphertext, LazyCiphertext)

import           Botan.BlockCipher.Class
import           Botan.RNG
import           Botan.Types.Class

-- IDEA type

data IDEA

newtype instance SecretKey IDEA = MkIDEASecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE IDEASecretKey #-}
pattern IDEASecretKey :: ByteString -> SecretKey IDEA
pattern IDEASecretKey bytes = MkIDEASecretKey (MkGSecretKey bytes)

getIDEASecretKey :: SecretKey IDEA -> ByteString
getIDEASecretKey (IDEASecretKey bs) = bs

type IDEASecretKey = SecretKey IDEA

newtype instance Ciphertext IDEA = MkIDEACiphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

{-# COMPLETE IDEACiphertext #-}
pattern IDEACiphertext :: ByteString -> Ciphertext IDEA
pattern IDEACiphertext bs = MkIDEACiphertext (MkGCiphertext bs)

type IDEACiphertext = Ciphertext IDEA

newtype instance LazyCiphertext IDEA = MkIDEALazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

{-# COMPLETE IDEALazyCiphertext #-}
pattern IDEALazyCiphertext :: Lazy.ByteString -> LazyCiphertext IDEA
pattern IDEALazyCiphertext lbs = MkIDEALazyCiphertext (MkGLazyCiphertext lbs)

type IDEALazyCiphertext = LazyCiphertext IDEA

instance HasSecretKey IDEA where

    secretKeySpec :: SizeSpecifier (SecretKey IDEA)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.idea

instance MonadRandomIO m => SecretKeyGen IDEA m where

    newSecretKey :: m (SecretKey IDEA)
    newSecretKey = IDEASecretKey <$> newSized (secretKeySpec @IDEA)

    newSecretKeyMaybe :: Int -> m (Maybe (SecretKey IDEA))
    newSecretKeyMaybe i = fmap IDEASecretKey <$> newSizedMaybe (secretKeySpec @IDEA) i

instance HasCiphertext IDEA where

instance BlockCipher IDEA where

    blockCipherEncrypt :: SecretKey IDEA -> ByteString -> Maybe (Ciphertext IDEA)
    blockCipherEncrypt (IDEASecretKey k) = fmap IDEACiphertext . Botan.blockCipherEncrypt Botan.idea k

    blockCipherDecrypt :: SecretKey IDEA -> Ciphertext IDEA -> Maybe ByteString
    blockCipherDecrypt (IDEASecretKey k) (IDEACiphertext ct) = Botan.blockCipherDecrypt Botan.idea k ct

instance HasLazyCiphertext IDEA where

instance IncrementalBlockCipher IDEA where

    blockCipherEncryptLazy :: SecretKey IDEA -> Lazy.ByteString -> Maybe (LazyCiphertext IDEA)
    blockCipherEncryptLazy (IDEASecretKey k) = fmap IDEALazyCiphertext . Botan.blockCipherEncryptLazy Botan.idea k

    blockCipherDecryptLazy :: SecretKey IDEA -> LazyCiphertext IDEA -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (IDEASecretKey k) (IDEALazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.idea k ct

-- IDEA blockCipher

ideaEncrypt :: SecretKey IDEA -> ByteString -> Maybe IDEACiphertext
ideaEncrypt = blockCipherEncrypt

ideaDecrypt :: SecretKey IDEA -> IDEACiphertext -> Maybe ByteString
ideaDecrypt = blockCipherDecrypt

ideaEncryptLazy :: SecretKey IDEA -> Lazy.ByteString -> Maybe IDEALazyCiphertext
ideaEncryptLazy = blockCipherEncryptLazy

ideaDecryptLazy :: SecretKey IDEA -> IDEALazyCiphertext -> Maybe Lazy.ByteString
ideaDecryptLazy = blockCipherDecryptLazy
