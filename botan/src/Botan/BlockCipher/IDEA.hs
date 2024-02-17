module Botan.BlockCipher.IDEA
( IDEA(..)
, IDEASecretKey(..)
, pattern IDEASecretKey
, getIDEASecretKey
, IDEACiphertext(..)
, ideaEncrypt
, ideaDecrypt
, ideaEncryptLazy
, ideaDecryptLazy
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

-- IDEA type

data IDEA

newtype instance SecretKey IDEA = MkIDEASecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

pattern IDEASecretKey :: ByteString -> SecretKey IDEA
pattern IDEASecretKey bytes = MkIDEASecretKey (MkGSecretKey bytes)

getIDEASecretKey :: SecretKey IDEA -> ByteString
getIDEASecretKey (IDEASecretKey bs) = bs

type IDEASecretKey = SecretKey IDEA

newtype instance Ciphertext IDEA = MkIDEACiphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

pattern IDEACiphertext :: ByteString -> Ciphertext IDEA
pattern IDEACiphertext bs = MkIDEACiphertext (MkGCiphertext bs)

getIDEACiphertext :: Ciphertext IDEA -> ByteString
getIDEACiphertext (IDEACiphertext bs) = bs

type IDEACiphertext = Ciphertext IDEA

newtype instance LazyCiphertext IDEA = MkIDEALazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

pattern IDEALazyCiphertext :: Lazy.ByteString -> LazyCiphertext IDEA
pattern IDEALazyCiphertext lbs = MkIDEALazyCiphertext (MkGLazyCiphertext lbs)

getIDEALazyCiphertext :: LazyCiphertext IDEA -> Lazy.ByteString
getIDEALazyCiphertext (IDEALazyCiphertext bs) = bs

type IDEALazyCiphertext = LazyCiphertext IDEA

instance HasSecretKey IDEA where
    
    secretKeySpec :: SizeSpecifier (SecretKey IDEA)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.idea

instance (MonadRandomIO m )=> SecretKeyGen IDEA m where

    newSecretKey :: MonadRandomIO m => m (SecretKey IDEA)
    newSecretKey = IDEASecretKey <$> newSized (secretKeySpec @IDEA)
    
    newSecretKeyMaybe :: MonadRandomIO m => Int -> m (Maybe (SecretKey IDEA))
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
