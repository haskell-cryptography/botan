module Botan.BlockCipher.Noekeon
( Noekeon(..)
, NoekeonSecretKey(..)
, pattern NoekeonSecretKey
, getNoekeonSecretKey
, NoekeonCiphertext(..)
, noekeonEncrypt
, noekeonDecrypt
, noekeonEncryptLazy
, noekeonDecryptLazy
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

-- Noekeon type

data Noekeon

newtype instance SecretKey Noekeon = MkNoekeonSecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

pattern NoekeonSecretKey :: ByteString -> SecretKey Noekeon
pattern NoekeonSecretKey bytes = MkNoekeonSecretKey (MkGSecretKey bytes)

getNoekeonSecretKey :: SecretKey Noekeon -> ByteString
getNoekeonSecretKey (NoekeonSecretKey bs) = bs

type NoekeonSecretKey = SecretKey Noekeon

newtype instance Ciphertext Noekeon = MkNoekeonCiphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

pattern NoekeonCiphertext :: ByteString -> Ciphertext Noekeon
pattern NoekeonCiphertext bs = MkNoekeonCiphertext (MkGCiphertext bs)

getNoekeonCiphertext :: Ciphertext Noekeon -> ByteString
getNoekeonCiphertext (NoekeonCiphertext bs) = bs

type NoekeonCiphertext = Ciphertext Noekeon

newtype instance LazyCiphertext Noekeon = MkNoekeonLazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

pattern NoekeonLazyCiphertext :: Lazy.ByteString -> LazyCiphertext Noekeon
pattern NoekeonLazyCiphertext lbs = MkNoekeonLazyCiphertext (MkGLazyCiphertext lbs)

getNoekeonLazyCiphertext :: LazyCiphertext Noekeon -> Lazy.ByteString
getNoekeonLazyCiphertext (NoekeonLazyCiphertext bs) = bs

type NoekeonLazyCiphertext = LazyCiphertext Noekeon

instance HasSecretKey Noekeon where

    secretKeySpec :: SizeSpecifier (SecretKey Noekeon)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.noekeon

instance (MonadRandomIO m )=> SecretKeyGen Noekeon m where

    newSecretKey :: MonadRandomIO m => m (SecretKey Noekeon)
    newSecretKey = NoekeonSecretKey <$> newSized (secretKeySpec @Noekeon)

    newSecretKeyMaybe :: MonadRandomIO m => Int -> m (Maybe (SecretKey Noekeon))
    newSecretKeyMaybe i = fmap NoekeonSecretKey <$> newSizedMaybe (secretKeySpec @Noekeon) i

instance HasCiphertext Noekeon where

instance BlockCipher Noekeon where

    blockCipherEncrypt :: SecretKey Noekeon -> ByteString -> Maybe (Ciphertext Noekeon)
    blockCipherEncrypt (NoekeonSecretKey k) = fmap NoekeonCiphertext . Botan.blockCipherEncrypt Botan.noekeon k

    blockCipherDecrypt :: SecretKey Noekeon -> Ciphertext Noekeon -> Maybe ByteString
    blockCipherDecrypt (NoekeonSecretKey k) (NoekeonCiphertext ct) = Botan.blockCipherDecrypt Botan.noekeon k ct

instance HasLazyCiphertext Noekeon where

instance IncrementalBlockCipher Noekeon where

    blockCipherEncryptLazy :: SecretKey Noekeon -> Lazy.ByteString -> Maybe (LazyCiphertext Noekeon)
    blockCipherEncryptLazy (NoekeonSecretKey k) = fmap NoekeonLazyCiphertext . Botan.blockCipherEncryptLazy Botan.noekeon k

    blockCipherDecryptLazy :: SecretKey Noekeon -> LazyCiphertext Noekeon -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (NoekeonSecretKey k) (NoekeonLazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.noekeon k ct

-- Noekeon blockCipher

noekeonEncrypt :: SecretKey Noekeon -> ByteString -> Maybe NoekeonCiphertext
noekeonEncrypt = blockCipherEncrypt

noekeonDecrypt :: SecretKey Noekeon -> NoekeonCiphertext -> Maybe ByteString
noekeonDecrypt = blockCipherDecrypt

noekeonEncryptLazy :: SecretKey Noekeon -> Lazy.ByteString -> Maybe NoekeonLazyCiphertext
noekeonEncryptLazy = blockCipherEncryptLazy

noekeonDecryptLazy :: SecretKey Noekeon -> NoekeonLazyCiphertext -> Maybe Lazy.ByteString
noekeonDecryptLazy = blockCipherDecryptLazy

-- Temporary BlockCipher128 conformance

instance BlockCipher128 Noekeon where
instance IncrementalBlockCipher128 Noekeon where
