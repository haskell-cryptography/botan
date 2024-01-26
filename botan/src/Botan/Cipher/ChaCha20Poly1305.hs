module Botan.Cipher.ChaCha20Poly1305
( ChaCha20Poly1305(..)
, ChaCha20Poly1305CipherKey(..)
, ChaCha20Poly1305CipherNonce(..)
, ChaCha20Poly1305CipherText(..)
, ChaCha20Poly1305IncrementalCipherText(..)
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

import Botan.Cipher.Class
import Botan.Prelude

-- ChaCha20Poly1305 type

data ChaCha20Poly1305

newtype instance CipherKey ChaCha20Poly1305 = ChaCha20Poly1305CipherKey
    { getChaCha20Poly1305CipherKey :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type ChaCha20Poly1305CipherKey = CipherKey ChaCha20Poly1305

newtype instance CipherNonce ChaCha20Poly1305 = ChaCha20Poly1305CipherNonce
    { getChaCha20Poly1305CipherNonce :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type ChaCha20Poly1305CipherNonce = CipherNonce ChaCha20Poly1305

newtype instance CipherText ChaCha20Poly1305 = ChaCha20Poly1305CipherText
    { getChaCha20Poly1305CipherText :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type ChaCha20Poly1305CipherText = CipherText ChaCha20Poly1305

newtype instance IncrementalCipherText ChaCha20Poly1305 = ChaCha20Poly1305IncrementalCipherText
    { getChaCha20Poly1305CIncrementalCipherText :: Lazy.ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type ChaCha20Poly1305IncrementalCipherText = IncrementalCipherText ChaCha20Poly1305

instance Show (CipherText ChaCha20Poly1305) where
    show :: CipherText ChaCha20Poly1305 -> String
    show (ChaCha20Poly1305CipherText bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Cipher ChaCha20Poly1305 where

    mkCipherText = ChaCha20Poly1305CipherText

    cipherEncrypt :: CipherKey ChaCha20Poly1305 -> CipherNonce ChaCha20Poly1305 -> ByteString -> CipherText ChaCha20Poly1305
    cipherEncrypt (ChaCha20Poly1305CipherKey k) (ChaCha20Poly1305CipherNonce n) = ChaCha20Poly1305CipherText . Botan.cipherEncrypt Botan.chaCha20Poly1305 k n

    cipherDecrypt :: CipherKey ChaCha20Poly1305 -> CipherNonce ChaCha20Poly1305 -> CipherText ChaCha20Poly1305 -> Maybe ByteString
    cipherDecrypt (ChaCha20Poly1305CipherKey k) (ChaCha20Poly1305CipherNonce n) (ChaCha20Poly1305CipherText ct) = Botan.cipherDecrypt Botan.chaCha20Poly1305 k n ct

instance IncrementalCipher ChaCha20Poly1305 where

    mkIncrementalCipherText = ChaCha20Poly1305IncrementalCipherText
    fromIncremental (ChaCha20Poly1305IncrementalCipherText ct) = ChaCha20Poly1305CipherText $ ByteString.toStrict ct
    toIncremental (ChaCha20Poly1305CipherText ct) = ChaCha20Poly1305IncrementalCipherText $ ByteString.fromStrict ct

    cipherEncryptLazy :: CipherKey ChaCha20Poly1305 -> CipherNonce ChaCha20Poly1305 -> Lazy.ByteString -> IncrementalCipherText ChaCha20Poly1305
    cipherEncryptLazy (ChaCha20Poly1305CipherKey k) (ChaCha20Poly1305CipherNonce n) = ChaCha20Poly1305IncrementalCipherText . Botan.cipherEncryptLazy Botan.chaCha20Poly1305 k n

    cipherDecryptLazy :: CipherKey ChaCha20Poly1305 -> CipherNonce ChaCha20Poly1305 -> IncrementalCipherText ChaCha20Poly1305 -> Maybe Lazy.ByteString
    cipherDecryptLazy (ChaCha20Poly1305CipherKey k) (ChaCha20Poly1305CipherNonce n) (ChaCha20Poly1305IncrementalCipherText ct) = Botan.cipherDecryptLazy Botan.chaCha20Poly1305 k n ct

-- AES cipher

chaCha20Poly1305Encrypt :: CipherKey ChaCha20Poly1305 -> CipherNonce ChaCha20Poly1305 -> ByteString -> ChaCha20Poly1305CipherText
chaCha20Poly1305Encrypt = cipherEncrypt

chaCha20Poly1305Decrypt :: CipherKey ChaCha20Poly1305 -> CipherNonce ChaCha20Poly1305 -> ChaCha20Poly1305CipherText -> Maybe ByteString
chaCha20Poly1305Decrypt = cipherDecrypt

chaCha20Poly1305EncryptLazy :: CipherKey ChaCha20Poly1305 -> CipherNonce ChaCha20Poly1305 -> Lazy.ByteString -> ChaCha20Poly1305IncrementalCipherText
chaCha20Poly1305EncryptLazy = cipherEncryptLazy

chaCha20Poly1305DecryptLazy :: CipherKey ChaCha20Poly1305 -> CipherNonce ChaCha20Poly1305 -> ChaCha20Poly1305IncrementalCipherText -> Maybe Lazy.ByteString
chaCha20Poly1305DecryptLazy = cipherDecryptLazy