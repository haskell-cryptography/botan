module Botan.BlockCipher.Class
( BlockCipher(..)
, CipherKey(..)
, CipherText(..)
, IncrementalCipherText(..)
, blockCipherEncryptProxy
, blockCipherDecryptProxy
, blockCipherEncryptFile
, blockCipherDecryptFile
, IncrementalBlockCipher(..)
, blockCipherEncryptFileLazy
, blockCipherDecryptFileLazy
-- , MutableBlockCipher(..)
-- , MutableCtx(..)
) where

import Botan.Prelude

import Data.Proxy (Proxy(..))

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy

data family CipherKey bc

-- TODO: Strict family?
data family CipherText bc
data family IncrementalCipherText bc

class (Eq (CipherText bc), Ord (CipherText bc)) => BlockCipher bc where

    -- HACKY: Really need an IsCipherText, IsLazyCipherText, etc
    -- blockCipherWitness :: bc
    mkCipherText :: ByteString -> CipherText bc

    blockCipherEncrypt :: CipherKey bc -> ByteString -> Maybe (CipherText bc)
    default blockCipherEncrypt :: (IncrementalBlockCipher bc) => CipherKey bc -> ByteString -> Maybe (CipherText bc)
    blockCipherEncrypt k = fmap fromIncremental . blockCipherEncryptLazy k . ByteString.fromStrict

    blockCipherDecrypt :: CipherKey bc -> CipherText bc -> Maybe ByteString
    default blockCipherDecrypt :: (IncrementalBlockCipher bc) => CipherKey bc -> CipherText bc -> Maybe ByteString
    blockCipherDecrypt k = fmap ByteString.toStrict . blockCipherDecryptLazy k . toIncremental

blockCipherEncryptProxy :: (BlockCipher bc) => Proxy bc -> CipherKey bc -> ByteString -> Maybe (CipherText bc)
blockCipherEncryptProxy _ = blockCipherEncrypt

blockCipherDecryptProxy :: BlockCipher bc => Proxy bc -> CipherKey bc -> CipherText bc -> Maybe ByteString
blockCipherDecryptProxy _ = blockCipherDecrypt

blockCipherEncryptFile :: (BlockCipher bc, MonadIO m) => CipherKey bc -> FilePath -> m (Maybe (CipherText bc))
blockCipherEncryptFile k fp = blockCipherEncrypt k <$> liftIO (ByteString.readFile fp)

blockCipherDecryptFile :: (BlockCipher bc, MonadIO m) => CipherKey bc -> FilePath -> m (Maybe ByteString)
blockCipherDecryptFile k fp = blockCipherDecrypt k . mkCipherText <$> liftIO (ByteString.readFile fp)

class (BlockCipher bc) => IncrementalBlockCipher bc where

    -- NOTE: Hacky Really need an IsCipherText, IsLazyCipherText, etc
    mkIncrementalCipherText :: Lazy.ByteString -> IncrementalCipherText bc
    fromIncremental :: IncrementalCipherText bc -> CipherText bc
    toIncremental :: CipherText bc -> IncrementalCipherText bc

    blockCipherEncryptLazy :: CipherKey bc -> Lazy.ByteString -> Maybe (IncrementalCipherText bc)
    blockCipherDecryptLazy :: CipherKey bc -> IncrementalCipherText bc -> Maybe Lazy.ByteString

blockCipherEncryptFileLazy :: (IncrementalBlockCipher bc, MonadIO m) => CipherKey bc -> FilePath -> m (Maybe (IncrementalCipherText bc))
blockCipherEncryptFileLazy k fp = do
    bs <- liftIO $ Lazy.readFile fp
    -- Seq is probably unnecessary
    let d = blockCipherEncryptLazy k bs
        in d `seq` return d

blockCipherDecryptFileLazy :: (IncrementalBlockCipher bc, MonadIO m) => CipherKey bc -> FilePath -> m (Maybe Lazy.ByteString)
blockCipherDecryptFileLazy k fp = do
    bs <- liftIO $ Lazy.readFile fp
    -- Seq is probably unnecessary
    let d = blockCipherDecryptLazy k (mkIncrementalCipherText bs)
        in d `seq` return d
