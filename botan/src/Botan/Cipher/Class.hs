{-# LANGUAGE DefaultSignatures #-}

module Botan.Cipher.Class (
    Cipher(..)
  , SecretKey
  , Nonce
  , Ciphertext
  , LazyCiphertext
  , cipherEncryptProxy
  , cipherDecryptProxy
  , cipherEncryptFile
  , cipherDecryptFile
  , IncrementalCipher(..)
  , cipherEncryptFileLazy
  , cipherDecryptFileLazy
  -- , MutableCipher(..)
  -- , MutableCtx(..)
  ) where

import           Botan.Prelude hiding (Ciphertext, LazyCiphertext)

import           Data.Proxy (Proxy (..))

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy

import           Botan.Types.Class

-- NOTE: I think that CBC NoPadding is the only cipher that doesn't accept arbitrary length input
-- So we can drop the Maybe from cipherEncrypt
class (HasSecretKey c, HasNonce c, HasCiphertext c) => Cipher c where

    cipherEncrypt :: SecretKey c -> Nonce c -> ByteString -> Ciphertext c
    default cipherEncrypt :: (IncrementalCipher c) => SecretKey c -> Nonce c -> ByteString -> Ciphertext c
    cipherEncrypt k n = toStrictCiphertext . cipherEncryptLazy k n . ByteString.fromStrict

    cipherDecrypt :: SecretKey c -> Nonce c -> Ciphertext c -> Maybe ByteString
    default cipherDecrypt :: (IncrementalCipher c) => SecretKey c -> Nonce c -> Ciphertext c -> Maybe ByteString
    cipherDecrypt k n = fmap ByteString.toStrict . cipherDecryptLazy k n . fromStrictCiphertext

cipherEncryptProxy :: (Cipher c) => Proxy c -> SecretKey c -> Nonce c -> ByteString -> Ciphertext c
cipherEncryptProxy _ = cipherEncrypt

cipherDecryptProxy :: Cipher c => Proxy c -> SecretKey c -> Nonce c -> Ciphertext c -> Maybe ByteString
cipherDecryptProxy _ = cipherDecrypt

cipherEncryptFile :: (Cipher c, MonadIO m) => SecretKey c -> Nonce c -> FilePath -> m (Ciphertext c)
cipherEncryptFile k n fp = cipherEncrypt k n <$> liftIO (ByteString.readFile fp)

cipherDecryptFile :: (Cipher c, MonadIO m) => SecretKey c -> Nonce c -> FilePath -> m (Maybe ByteString)
cipherDecryptFile k n fp = cipherDecrypt k n . unsafeDecode <$> liftIO (ByteString.readFile fp)

class HasLazyCiphertext c => IncrementalCipher c where

    cipherEncryptLazy :: SecretKey c -> Nonce c -> Lazy.ByteString -> LazyCiphertext c
    cipherDecryptLazy :: SecretKey c -> Nonce c -> LazyCiphertext c -> Maybe Lazy.ByteString

cipherEncryptFileLazy :: (IncrementalCipher c, MonadIO m) => SecretKey c -> Nonce c -> FilePath -> m (LazyCiphertext c)
cipherEncryptFileLazy k n fp = do
    bs <- liftIO $ Lazy.readFile fp
    -- Seq is probably unnecessary
    let d = cipherEncryptLazy k n bs
        in d `seq` return d

cipherDecryptFileLazy :: (IncrementalCipher c, MonadIO m) => SecretKey c -> Nonce c -> FilePath -> m (Maybe Lazy.ByteString)
cipherDecryptFileLazy k n fp = do
    bs <- liftIO $ Lazy.readFile fp
    -- Seq is probably unnecessary
    let d = cipherDecryptLazy k n (unsafeDecodeLazy bs)
        in d `seq` return d
