module Botan.Cipher.ChaCha20Poly1305
( ChaCha20Poly1305(..)
, ChaCha20Poly1305SecretKey(..)
, ChaCha20Poly1305Nonce(..)
, ChaCha20Poly1305Ciphertext(..)
, ChaCha20Poly1305LazyCiphertext(..)
, chaCha20Poly1305Encrypt
, chaCha20Poly1305Decrypt
, chaCha20Poly1305EncryptLazy
, chaCha20Poly1305DecryptLazy
) where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Cipher as Botan
import qualified Botan.Utility as Botan

import           Botan.Prelude hiding (Ciphertext, LazyCiphertext)

import           Botan.Cipher.Class
import           Botan.RNG
import           Botan.Types.Class


-- ChaCha20Poly1305 type

data ChaCha20Poly1305

newtype instance SecretKey ChaCha20Poly1305 = MkChaCha20Poly1305SecretKey GSecretKey
    deriving newtype (Eq, Ord, Show, Encodable)

pattern ChaCha20Poly1305SecretKey :: ByteString -> SecretKey ChaCha20Poly1305
pattern ChaCha20Poly1305SecretKey bytes = MkChaCha20Poly1305SecretKey (MkGSecretKey bytes)

getChaCha20Poly1305SecretKey :: SecretKey ChaCha20Poly1305 -> ByteString
getChaCha20Poly1305SecretKey (ChaCha20Poly1305SecretKey bs) = bs

type ChaCha20Poly1305SecretKey = SecretKey ChaCha20Poly1305

newtype instance Nonce ChaCha20Poly1305 = MkChaCha20Poly1305Nonce GNonce
    deriving newtype (Eq, Ord, Show, Encodable, IsNonce)

pattern ChaCha20Poly1305Nonce :: ByteString -> Nonce ChaCha20Poly1305
pattern ChaCha20Poly1305Nonce bytes = MkChaCha20Poly1305Nonce (MkGNonce bytes)

getChaCha20Poly1305Nonce :: Nonce ChaCha20Poly1305 -> ByteString
getChaCha20Poly1305Nonce (ChaCha20Poly1305Nonce bs) = bs

type ChaCha20Poly1305Nonce = Nonce ChaCha20Poly1305

newtype instance Ciphertext ChaCha20Poly1305 = MkChaCha20Poly1305Ciphertext GCiphertext
    deriving newtype (Eq, Ord, Show, Encodable)

pattern ChaCha20Poly1305Ciphertext :: ByteString -> Ciphertext ChaCha20Poly1305
pattern ChaCha20Poly1305Ciphertext bs = MkChaCha20Poly1305Ciphertext (MkGCiphertext bs)

getChaCha20Poly1305Ciphertext :: Ciphertext ChaCha20Poly1305 -> ByteString
getChaCha20Poly1305Ciphertext (ChaCha20Poly1305Ciphertext bs) = bs

type ChaCha20Poly1305Ciphertext = Ciphertext ChaCha20Poly1305

newtype instance LazyCiphertext ChaCha20Poly1305 = MkChaCha20Poly1305LazyCiphertext GLazyCiphertext
    deriving newtype (Eq, Ord, Show, Encodable, LazyEncodable)

pattern ChaCha20Poly1305LazyCiphertext :: Lazy.ByteString -> LazyCiphertext ChaCha20Poly1305
pattern ChaCha20Poly1305LazyCiphertext lbs = MkChaCha20Poly1305LazyCiphertext (MkGLazyCiphertext lbs)

getChaCha20Poly1305LazyCiphertext :: LazyCiphertext ChaCha20Poly1305 -> Lazy.ByteString
getChaCha20Poly1305LazyCiphertext (ChaCha20Poly1305LazyCiphertext bs) = bs

type ChaCha20Poly1305LazyCiphertext = LazyCiphertext ChaCha20Poly1305

instance HasSecretKey ChaCha20Poly1305 where

    secretKeySpec :: SizeSpecifier (SecretKey ChaCha20Poly1305)
    secretKeySpec = coerceSizeSpec $ Botan.cipherKeySpec Botan.chaCha20Poly1305

instance (MonadRandomIO m )=> SecretKeyGen ChaCha20Poly1305 m where

    newSecretKey :: MonadRandomIO m => m (SecretKey ChaCha20Poly1305)
    newSecretKey = ChaCha20Poly1305SecretKey <$> newSized (secretKeySpec @ChaCha20Poly1305)

    newSecretKeyMaybe :: MonadRandomIO m => Int -> m (Maybe (SecretKey ChaCha20Poly1305))
    newSecretKeyMaybe i = fmap ChaCha20Poly1305SecretKey <$> newSizedMaybe (secretKeySpec @ChaCha20Poly1305) i

instance HasNonce ChaCha20Poly1305 where

    nonceSpec :: SizeSpecifier (Nonce ChaCha20Poly1305)
    -- nonceSpec = coerceSizeSpec $ Botan.cipherNonce Botan.chaCha20Poly1305
    -- Taken from: cipherNonceSizeIsValid n (AEAD ChaCha20Poly1305) = n `elem` [ 8, 12, 24 ]
    -- We should be moving algo-specific stuff here anyway.
    nonceSpec = SizeEnum [ 8, 12, 24 ]

instance (MonadRandomIO m )=> NonceGen ChaCha20Poly1305 m where

    newNonce :: MonadRandomIO m => m (Nonce ChaCha20Poly1305)
    newNonce = ChaCha20Poly1305Nonce <$> newSized (nonceSpec @ChaCha20Poly1305)

    newNonceMaybe :: MonadRandomIO m => Int -> m (Maybe (Nonce ChaCha20Poly1305))
    newNonceMaybe i = fmap ChaCha20Poly1305Nonce <$> newSizedMaybe (nonceSpec @ChaCha20Poly1305) i

instance HasCiphertext ChaCha20Poly1305 where
instance HasLazyCiphertext ChaCha20Poly1305 where

instance Cipher ChaCha20Poly1305 where

    cipherEncrypt :: SecretKey ChaCha20Poly1305 -> Nonce ChaCha20Poly1305 -> ByteString -> Ciphertext ChaCha20Poly1305
    cipherEncrypt (ChaCha20Poly1305SecretKey k) (ChaCha20Poly1305Nonce n) = ChaCha20Poly1305Ciphertext . Botan.cipherEncrypt Botan.chaCha20Poly1305 k n

    cipherDecrypt :: SecretKey ChaCha20Poly1305 -> Nonce ChaCha20Poly1305 -> Ciphertext ChaCha20Poly1305 -> Maybe ByteString
    cipherDecrypt (ChaCha20Poly1305SecretKey k) (ChaCha20Poly1305Nonce n) (ChaCha20Poly1305Ciphertext ct) = Botan.cipherDecrypt Botan.chaCha20Poly1305 k n ct

instance IncrementalCipher ChaCha20Poly1305 where

    cipherEncryptLazy :: SecretKey ChaCha20Poly1305 -> Nonce ChaCha20Poly1305 -> Lazy.ByteString -> LazyCiphertext ChaCha20Poly1305
    cipherEncryptLazy (ChaCha20Poly1305SecretKey k) (ChaCha20Poly1305Nonce n) = ChaCha20Poly1305LazyCiphertext . Botan.cipherEncryptLazy Botan.chaCha20Poly1305 k n

    cipherDecryptLazy :: SecretKey ChaCha20Poly1305 -> Nonce ChaCha20Poly1305 -> LazyCiphertext ChaCha20Poly1305 -> Maybe Lazy.ByteString
    cipherDecryptLazy (ChaCha20Poly1305SecretKey k) (ChaCha20Poly1305Nonce n) (ChaCha20Poly1305LazyCiphertext ct) = Botan.cipherDecryptLazy Botan.chaCha20Poly1305 k n ct

-- ChaCha20Poly1305 cipher

chaCha20Poly1305Encrypt :: SecretKey ChaCha20Poly1305 -> Nonce ChaCha20Poly1305 -> ByteString -> ChaCha20Poly1305Ciphertext
chaCha20Poly1305Encrypt = cipherEncrypt

chaCha20Poly1305Decrypt :: SecretKey ChaCha20Poly1305 -> Nonce ChaCha20Poly1305 -> ChaCha20Poly1305Ciphertext -> Maybe ByteString
chaCha20Poly1305Decrypt = cipherDecrypt

chaCha20Poly1305EncryptLazy :: SecretKey ChaCha20Poly1305 -> Nonce ChaCha20Poly1305 -> Lazy.ByteString -> ChaCha20Poly1305LazyCiphertext
chaCha20Poly1305EncryptLazy = cipherEncryptLazy

chaCha20Poly1305DecryptLazy :: SecretKey ChaCha20Poly1305 -> Nonce ChaCha20Poly1305 -> ChaCha20Poly1305LazyCiphertext -> Maybe Lazy.ByteString
chaCha20Poly1305DecryptLazy = cipherDecryptLazy
