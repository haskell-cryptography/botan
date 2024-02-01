module Botan.BlockCipher.SHALCAL
( SHALCAL2(..)
, SHALCAL2SecretKey(..)
, pattern SHALCAL2SecretKey
, getSHALCAL2SecretKey
, SHALCAL2Ciphertext(..)
, shalcal2Encrypt
, shalcal2Decrypt
, shalcal2EncryptLazy
, shalcal2DecryptLazy
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

-- SHALCAL2 type

data SHALCAL2

newtype instance SecretKey SHALCAL2 = MkSHALCAL2SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

pattern SHALCAL2SecretKey :: ByteString -> SecretKey SHALCAL2
pattern SHALCAL2SecretKey bytes = MkSHALCAL2SecretKey (MkGSecretKey bytes)

getSHALCAL2SecretKey :: SecretKey SHALCAL2 -> ByteString
getSHALCAL2SecretKey (SHALCAL2SecretKey bs) = bs

type SHALCAL2SecretKey = SecretKey SHALCAL2

newtype instance Ciphertext SHALCAL2 = MkSHALCAL2Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

pattern SHALCAL2Ciphertext :: ByteString -> Ciphertext SHALCAL2
pattern SHALCAL2Ciphertext bs = MkSHALCAL2Ciphertext (MkGCiphertext bs)

getSHALCAL2Ciphertext :: Ciphertext SHALCAL2 -> ByteString
getSHALCAL2Ciphertext (SHALCAL2Ciphertext bs) = bs

type SHALCAL2Ciphertext = Ciphertext SHALCAL2

newtype instance LazyCiphertext SHALCAL2 = MkSHALCAL2LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

pattern SHALCAL2LazyCiphertext :: Lazy.ByteString -> LazyCiphertext SHALCAL2
pattern SHALCAL2LazyCiphertext lbs = MkSHALCAL2LazyCiphertext (MkGLazyCiphertext lbs)

getSHALCAL2LazyCiphertext :: LazyCiphertext SHALCAL2 -> Lazy.ByteString
getSHALCAL2LazyCiphertext (SHALCAL2LazyCiphertext bs) = bs

type SHALCAL2LazyCiphertext = LazyCiphertext SHALCAL2

instance HasSecretKey SHALCAL2 where
    
    secretKeySpec :: SizeSpecifier (SecretKey SHALCAL2)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.shalcal2

instance (MonadRandomIO m )=> SecretKeyGen SHALCAL2 m where

    newSecretKey :: MonadRandomIO m => m (SecretKey SHALCAL2)
    newSecretKey = SHALCAL2SecretKey <$> newSeed (secretKeySpec @SHALCAL2)
    
    newSecretKeyMaybe :: MonadRandomIO m => Int -> m (Maybe (SecretKey SHALCAL2))
    newSecretKeyMaybe i = fmap SHALCAL2SecretKey <$> newSeedMaybe (secretKeySpec @SHALCAL2) i

instance HasCiphertext SHALCAL2 where

instance BlockCipher SHALCAL2 where

    blockCipherEncrypt :: SecretKey SHALCAL2 -> ByteString -> Maybe (Ciphertext SHALCAL2)
    blockCipherEncrypt (SHALCAL2SecretKey k) = fmap SHALCAL2Ciphertext . Botan.blockCipherEncrypt Botan.shalcal2 k

    blockCipherDecrypt :: SecretKey SHALCAL2 -> Ciphertext SHALCAL2 -> Maybe ByteString
    blockCipherDecrypt (SHALCAL2SecretKey k) (SHALCAL2Ciphertext ct) = Botan.blockCipherDecrypt Botan.shalcal2 k ct

instance HasLazyCiphertext SHALCAL2 where

instance IncrementalBlockCipher SHALCAL2 where

    blockCipherEncryptLazy :: SecretKey SHALCAL2 -> Lazy.ByteString -> Maybe (LazyCiphertext SHALCAL2)
    blockCipherEncryptLazy (SHALCAL2SecretKey k) = fmap SHALCAL2LazyCiphertext . Botan.blockCipherEncryptLazy Botan.shalcal2 k

    blockCipherDecryptLazy :: SecretKey SHALCAL2 -> LazyCiphertext SHALCAL2 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (SHALCAL2SecretKey k) (SHALCAL2LazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.shalcal2 k ct

-- SHALCAL2 blockCipher

shalcal2Encrypt :: SecretKey SHALCAL2 -> ByteString -> Maybe SHALCAL2Ciphertext
shalcal2Encrypt = blockCipherEncrypt

shalcal2Decrypt :: SecretKey SHALCAL2 -> SHALCAL2Ciphertext -> Maybe ByteString
shalcal2Decrypt = blockCipherDecrypt

shalcal2EncryptLazy :: SecretKey SHALCAL2 -> Lazy.ByteString -> Maybe SHALCAL2LazyCiphertext
shalcal2EncryptLazy = blockCipherEncryptLazy

shalcal2DecryptLazy :: SecretKey SHALCAL2 -> SHALCAL2LazyCiphertext -> Maybe Lazy.ByteString
shalcal2DecryptLazy = blockCipherDecryptLazy
