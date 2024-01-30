module Botan.BlockCipher.Class
( BlockCipher(..)
, SecretKey(..)
, Ciphertext(..)
, LazyCiphertext(..)
, blockCipherEncryptProxy
, blockCipherDecryptProxy
, blockCipherEncryptFile
, blockCipherDecryptFile
, IncrementalBlockCipher(..)
, blockCipherEncryptFileLazy
, blockCipherDecryptFileLazy
) where

import Botan.Prelude hiding (Ciphertext, LazyCiphertext)

import Data.Proxy (Proxy(..))

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy

import Botan.Types.Class
import Botan.RNG

-- instance (BlockCipher bc, MonadRandomIO m) => SecretKeyGen bc m where
--     newSecretKey :: m (SecretKey alg)
--     newSecretKey = _

--     newSecretKeyMaybe :: Int -> m (Maybe (SecretKey alg))
--     newSecretKeyMaybe = _

class (HasSecretKey bc, HasCiphertext bc) => BlockCipher bc where

    blockCipherEncrypt :: SecretKey bc -> ByteString -> Maybe (Ciphertext bc)
    default blockCipherEncrypt :: (IncrementalBlockCipher bc) => SecretKey bc -> ByteString -> Maybe (Ciphertext bc)
    blockCipherEncrypt k = fmap toStrictCiphertext . blockCipherEncryptLazy k . ByteString.fromStrict

    blockCipherDecrypt :: SecretKey bc -> Ciphertext bc -> Maybe ByteString
    default blockCipherDecrypt :: (IncrementalBlockCipher bc) => SecretKey bc -> Ciphertext bc -> Maybe ByteString
    blockCipherDecrypt k = fmap ByteString.toStrict . blockCipherDecryptLazy k . fromStrictCiphertext

blockCipherEncryptProxy :: (BlockCipher bc) => Proxy bc -> SecretKey bc -> ByteString -> Maybe (Ciphertext bc)
blockCipherEncryptProxy _ = blockCipherEncrypt

blockCipherDecryptProxy :: BlockCipher bc => Proxy bc -> SecretKey bc -> Ciphertext bc -> Maybe ByteString
blockCipherDecryptProxy _ = blockCipherDecrypt

blockCipherEncryptFile :: (BlockCipher bc, MonadIO m) => SecretKey bc -> FilePath -> m (Maybe (Ciphertext bc))
blockCipherEncryptFile k fp = blockCipherEncrypt k <$> liftIO (ByteString.readFile fp)

blockCipherDecryptFile :: (BlockCipher bc, MonadIO m) => SecretKey bc -> FilePath -> m (Maybe ByteString)
blockCipherDecryptFile k fp = blockCipherDecrypt k . unsafeDecode <$> liftIO (ByteString.readFile fp)

class (BlockCipher bc, HasLazyCiphertext bc) => IncrementalBlockCipher bc where
    blockCipherEncryptLazy :: SecretKey bc -> Lazy.ByteString -> Maybe (LazyCiphertext bc)
    blockCipherDecryptLazy :: SecretKey bc -> LazyCiphertext bc -> Maybe Lazy.ByteString

blockCipherEncryptFileLazy :: (IncrementalBlockCipher bc, MonadIO m) => SecretKey bc -> FilePath -> m (Maybe (LazyCiphertext bc))
blockCipherEncryptFileLazy k fp = do
    bs <- liftIO $ Lazy.readFile fp
    -- Seq is probably unnecessary
    let d = blockCipherEncryptLazy k bs
        in d `seq` return d

blockCipherDecryptFileLazy :: (IncrementalBlockCipher bc, MonadIO m) => SecretKey bc -> FilePath -> m (Maybe Lazy.ByteString)
blockCipherDecryptFileLazy k fp = do
    bs <- liftIO $ Lazy.readFile fp
    -- Seq is probably unnecessary
    let d = blockCipherDecryptLazy k (unsafeDecodeLazy bs)
        in d `seq` return d
