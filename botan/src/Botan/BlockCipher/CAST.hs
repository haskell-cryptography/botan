module Botan.BlockCipher.CAST
( CAST128(..)
, CAST128SecretKey(..)
, pattern CAST128SecretKey
, getCAST128SecretKey
, CAST128Ciphertext(..)
, cast128Encrypt
, cast128Decrypt
, cast128EncryptLazy
, cast128DecryptLazy
) where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.BlockCipher as Botan
import qualified Botan.Utility as Botan

import           Botan.Prelude hiding (Ciphertext, LazyCiphertext)

import           Botan.BlockCipher.Class
import           Botan.RNG
import           Botan.Types.Class

-- CAST128 type

data CAST128

newtype instance SecretKey CAST128 = MkCAST128SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

pattern CAST128SecretKey :: ByteString -> SecretKey CAST128
pattern CAST128SecretKey bytes = MkCAST128SecretKey (MkGSecretKey bytes)

getCAST128SecretKey :: SecretKey CAST128 -> ByteString
getCAST128SecretKey (CAST128SecretKey bs) = bs

type CAST128SecretKey = SecretKey CAST128

newtype instance Ciphertext CAST128 = MkCAST128Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

pattern CAST128Ciphertext :: ByteString -> Ciphertext CAST128
pattern CAST128Ciphertext bs = MkCAST128Ciphertext (MkGCiphertext bs)

getCAST128Ciphertext :: Ciphertext CAST128 -> ByteString
getCAST128Ciphertext (CAST128Ciphertext bs) = bs

type CAST128Ciphertext = Ciphertext CAST128

newtype instance LazyCiphertext CAST128 = MkCAST128LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

pattern CAST128LazyCiphertext :: Lazy.ByteString -> LazyCiphertext CAST128
pattern CAST128LazyCiphertext lbs = MkCAST128LazyCiphertext (MkGLazyCiphertext lbs)

getCAST128LazyCiphertext :: LazyCiphertext CAST128 -> Lazy.ByteString
getCAST128LazyCiphertext (CAST128LazyCiphertext bs) = bs

type CAST128LazyCiphertext = LazyCiphertext CAST128

instance HasSecretKey CAST128 where

    secretKeySpec :: SizeSpecifier (SecretKey CAST128)
    secretKeySpec = coerceSizeSpec $ Botan.blockCipherKeySpec Botan.cast128

instance (MonadRandomIO m )=> SecretKeyGen CAST128 m where

    newSecretKey :: MonadRandomIO m => m (SecretKey CAST128)
    newSecretKey = CAST128SecretKey <$> newSized (secretKeySpec @CAST128)

    newSecretKeyMaybe :: MonadRandomIO m => Int -> m (Maybe (SecretKey CAST128))
    newSecretKeyMaybe i = fmap CAST128SecretKey <$> newSizedMaybe (secretKeySpec @CAST128) i

instance HasCiphertext CAST128 where

instance BlockCipher CAST128 where

    blockCipherEncrypt :: SecretKey CAST128 -> ByteString -> Maybe (Ciphertext CAST128)
    blockCipherEncrypt (CAST128SecretKey k) = fmap CAST128Ciphertext . Botan.blockCipherEncrypt Botan.cast128 k

    blockCipherDecrypt :: SecretKey CAST128 -> Ciphertext CAST128 -> Maybe ByteString
    blockCipherDecrypt (CAST128SecretKey k) (CAST128Ciphertext ct) = Botan.blockCipherDecrypt Botan.cast128 k ct

instance HasLazyCiphertext CAST128 where

instance IncrementalBlockCipher CAST128 where

    blockCipherEncryptLazy :: SecretKey CAST128 -> Lazy.ByteString -> Maybe (LazyCiphertext CAST128)
    blockCipherEncryptLazy (CAST128SecretKey k) = fmap CAST128LazyCiphertext . Botan.blockCipherEncryptLazy Botan.cast128 k

    blockCipherDecryptLazy :: SecretKey CAST128 -> LazyCiphertext CAST128 -> Maybe Lazy.ByteString
    blockCipherDecryptLazy (CAST128SecretKey k) (CAST128LazyCiphertext ct) = Botan.blockCipherDecryptLazy Botan.cast128 k ct

-- CAST128 blockCipher

cast128Encrypt :: SecretKey CAST128 -> ByteString -> Maybe CAST128Ciphertext
cast128Encrypt = blockCipherEncrypt

cast128Decrypt :: SecretKey CAST128 -> CAST128Ciphertext -> Maybe ByteString
cast128Decrypt = blockCipherDecrypt

cast128EncryptLazy :: SecretKey CAST128 -> Lazy.ByteString -> Maybe CAST128LazyCiphertext
cast128EncryptLazy = blockCipherEncryptLazy

cast128DecryptLazy :: SecretKey CAST128 -> CAST128LazyCiphertext -> Maybe Lazy.ByteString
cast128DecryptLazy = blockCipherDecryptLazy
