module Botan.BlockCipher.SEED
( SEED(..)
, SEEDSecretKey(..)
, pattern SEEDSecretKey
, getSEEDSecretKey
, SEEDCiphertext(..)
, seedEncrypt
, seedDecrypt
, seedEncryptLazy
, seedDecryptLazy
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

-- SEED type

data SEED

newtype instance SecretKey SEED = MkSEEDSecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

pattern SEEDSecretKey :: ByteString -> SecretKey SEED
pattern SEEDSecretKey bytes = MkSEEDSecretKey (MkGSecretKey bytes)

getSEEDSecretKey :: SecretKey SEED -> ByteString
getSEEDSecretKey (SEEDSecretKey bs) = bs

type SEEDSecretKey = SecretKey SEED

newtype instance Ciphertext SEED = MkSEEDCiphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

pattern SEEDCiphertext :: ByteString -> Ciphertext SEED
pattern SEEDCiphertext bs = MkSEEDCiphertext (MkGCiphertext bs)

getSEEDCiphertext :: Ciphertext SEED -> ByteString
getSEEDCiphertext (SEEDCiphertext bs) = bs

type SEEDCiphertext = Ciphertext SEED

newtype instance LazyCiphertext SEED = MkSEEDLazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

pattern SEEDLazyCiphertext :: Lazy.ByteString -> LazyCiphertext SEED
pattern SEEDLazyCiphertext lbs = MkSEEDLazyCiphertext (MkGLazyCiphertext lbs)

getSEEDLazyCiphertext :: LazyCiphertext SEED -> Lazy.ByteString
getSEEDLazyCiphertext (SEEDLazyCiphertext bs) = bs

type SEEDLazyCiphertext = LazyCiphertext SEED

instance HasSecretKey SEED where
    
    secretKeySpec :: SizeSpecifier (SecretKey SEED)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.seed

instance (MonadRandomIO m )=> SecretKeyGen SEED m where

    newSecretKey :: MonadRandomIO m => m (SecretKey SEED)
    newSecretKey = SEEDSecretKey <$> newSeed (secretKeySpec @SEED)
    
    newSecretKeyMaybe :: MonadRandomIO m => Int -> m (Maybe (SecretKey SEED))
    newSecretKeyMaybe i = fmap SEEDSecretKey <$> newSeedMaybe (secretKeySpec @SEED) i

instance HasCiphertext SEED where

instance BlockCipher SEED where

    blockCipherEncrypt :: SecretKey SEED -> ByteString -> Maybe (Ciphertext SEED)
    blockCipherEncrypt (SEEDSecretKey k) = fmap SEEDCiphertext . Botan.blockCipherEncrypt Botan.seed k

    blockCipherDecrypt :: SecretKey SEED -> Ciphertext SEED -> Maybe ByteString
    blockCipherDecrypt (SEEDSecretKey k) (SEEDCiphertext ct) = Botan.blockCipherDecrypt Botan.seed k ct

instance HasLazyCiphertext SEED where

instance IncrementalBlockCipher SEED where

    blockCipherEncryptLazy :: SecretKey SEED -> Lazy.ByteString -> Maybe (LazyCiphertext SEED)
    blockCipherEncryptLazy (SEEDSecretKey k) = fmap SEEDLazyCiphertext . Botan.blockCipherEncryptLazy Botan.seed k

    blockCipherDecryptLazy :: SecretKey SEED -> LazyCiphertext SEED -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (SEEDSecretKey k) (SEEDLazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.seed k ct

-- SEED blockCipher

seedEncrypt :: SecretKey SEED -> ByteString -> Maybe SEEDCiphertext
seedEncrypt = blockCipherEncrypt

seedDecrypt :: SecretKey SEED -> SEEDCiphertext -> Maybe ByteString
seedDecrypt = blockCipherDecrypt

seedEncryptLazy :: SecretKey SEED -> Lazy.ByteString -> Maybe SEEDLazyCiphertext
seedEncryptLazy = blockCipherEncryptLazy

seedDecryptLazy :: SecretKey SEED -> SEEDLazyCiphertext -> Maybe Lazy.ByteString
seedDecryptLazy = blockCipherDecryptLazy

-- Temporary BlockCipher128 conformance

instance BlockCipher128 SEED where
instance IncrementalBlockCipher128 SEED where

