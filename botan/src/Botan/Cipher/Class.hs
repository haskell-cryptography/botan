module Botan.Cipher.Class
( Cipher(..)
, CipherKey(..)
, CipherNonce(..)
, CipherText(..)
, IncrementalCipherText(..)
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

import Botan.Prelude

import Data.Proxy (Proxy(..))

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy

data family CipherKey c
data family CipherNonce c

-- TODO: Strict family?
data family CipherText c
data family IncrementalCipherText c

-- NOTE: I think that CBC NoPadding is the only cipher that doesn't accept arbitrary length input
-- So we can drop the Maybe from cipherEncrypt
class (Eq (CipherText c), Ord (CipherText c)) => Cipher c where

    -- HACKY: Really need an IsCipherText, IsLazyCipherText, etc
    mkCipherText :: ByteString -> CipherText c

    cipherEncrypt :: CipherKey c -> CipherNonce c -> ByteString -> CipherText c
    default cipherEncrypt :: (IncrementalCipher c) => CipherKey c -> CipherNonce c -> ByteString -> CipherText c
    cipherEncrypt k n = fromIncremental . cipherEncryptLazy k n . ByteString.fromStrict

    cipherDecrypt :: CipherKey c -> CipherNonce c -> CipherText c -> Maybe ByteString
    default cipherDecrypt :: (IncrementalCipher c) => CipherKey c -> CipherNonce c -> CipherText c -> Maybe ByteString
    cipherDecrypt k n = fmap ByteString.toStrict . cipherDecryptLazy k n . toIncremental

cipherEncryptProxy :: (Cipher c) => Proxy c -> CipherKey c -> CipherNonce c -> ByteString -> CipherText c
cipherEncryptProxy _ = cipherEncrypt

cipherDecryptProxy :: Cipher c => Proxy c -> CipherKey c -> CipherNonce c -> CipherText c -> Maybe ByteString
cipherDecryptProxy _ = cipherDecrypt

cipherEncryptFile :: (Cipher c, MonadIO m) => CipherKey c -> CipherNonce c -> FilePath -> m (CipherText c)
cipherEncryptFile k n fp = cipherEncrypt k n <$> liftIO (ByteString.readFile fp)

cipherDecryptFile :: (Cipher c, MonadIO m) => CipherKey c -> CipherNonce c -> FilePath -> m (Maybe ByteString)
cipherDecryptFile k n fp = cipherDecrypt k n . mkCipherText <$> liftIO (ByteString.readFile fp)

class (Cipher c) => IncrementalCipher c where

    -- NOTE: Hacky Really need an IsCipherText, IsLazyCipherText, etc
    mkIncrementalCipherText :: Lazy.ByteString -> IncrementalCipherText c
    fromIncremental :: IncrementalCipherText c -> CipherText c
    toIncremental :: CipherText c -> IncrementalCipherText c

    cipherEncryptLazy :: CipherKey c -> CipherNonce c -> Lazy.ByteString -> IncrementalCipherText c
    cipherDecryptLazy :: CipherKey c -> CipherNonce c -> IncrementalCipherText c -> Maybe Lazy.ByteString

cipherEncryptFileLazy :: (IncrementalCipher c, MonadIO m) => CipherKey c -> CipherNonce c -> FilePath -> m (IncrementalCipherText c)
cipherEncryptFileLazy k n fp = do
    bs <- liftIO $ Lazy.readFile fp
    -- Seq is probably unnecessary
    let d = cipherEncryptLazy k n bs
        in d `seq` return d

cipherDecryptFileLazy :: (IncrementalCipher c, MonadIO m) => CipherKey c -> CipherNonce c -> FilePath -> m (Maybe Lazy.ByteString)
cipherDecryptFileLazy k n fp = do
    bs <- liftIO $ Lazy.readFile fp
    -- Seq is probably unnecessary
    let d = cipherDecryptLazy k n (mkIncrementalCipherText bs)
        in d `seq` return d
