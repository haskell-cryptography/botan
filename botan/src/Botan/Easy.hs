module Botan.Easy
( Digest(..)
, hash
, verifyDigest
, BlockCipherKey(..)
, BlockCiphertext(..)
, newBlockCipherKey
, blockCipherEncrypt
, blockCipherDecrypt
, CipherKey(..)
, CipherNonce(..)
, Ciphertext(..)
, newCipherKey
, newCipherNonce
, cipherEncrypt
, cipherDecrypt
) where

import Botan.Prelude hiding (Ciphertext, LazyCiphertext)

import Data.ByteString (ByteString)

import Botan.RNG (MonadRandomIO(..))

import qualified Botan.Types.Class as Types

import qualified Botan.Hash.Class as Hash
import qualified Botan.Hash.SHA3  as Hash

import qualified Botan.BlockCipher.Class as BlockCipher
import qualified Botan.BlockCipher.AES   as BlockCipher

import qualified Botan.Cipher.Class            as Cipher
import qualified Botan.Cipher.ChaCha20Poly1305 as Cipher

-- A module of recommended algorithms; eg, one-file botanium

--
-- HF / Hash
--

type Digest = Hash.Digest Hash.SHA3_512

hash :: ByteString -> Digest
hash = Hash.hash

verifyDigest :: Digest -> ByteString -> Bool
verifyDigest d bs = d == hash bs

--
-- -- BC / BlockCipher
-- -- Not represented in saltine / libsodium
--

type BlockCipherKey  = BlockCipher.SecretKey  BlockCipher.AES256
type BlockCiphertext = BlockCipher.Ciphertext BlockCipher.AES256

newBlockCipherKey :: (MonadRandomIO m) => m BlockCipherKey
newBlockCipherKey = Types.newSecretKey

blockCipherEncrypt :: BlockCipherKey -> ByteString -> Maybe (BlockCiphertext)
blockCipherEncrypt = BlockCipher.blockCipherEncrypt

blockCipherDecrypt :: BlockCipherKey -> BlockCiphertext -> Maybe ByteString
blockCipherDecrypt = BlockCipher.blockCipherDecrypt

--
-- C /SecretBox / Cipher
--

type CipherKey   = Cipher.SecretKey  Cipher.ChaCha20Poly1305
type CipherNonce = Cipher.Nonce      Cipher.ChaCha20Poly1305
type Ciphertext  = Cipher.Ciphertext Cipher.ChaCha20Poly1305

newCipherKey :: (MonadRandomIO m) => m CipherKey
newCipherKey = Types.newSecretKey

newCipherNonce :: (MonadRandomIO m) => m CipherNonce
newCipherNonce = Types.newNonce

cipherEncrypt :: CipherKey -> CipherNonce -> ByteString -> Ciphertext
cipherEncrypt = Cipher.cipherEncrypt

cipherDecrypt :: CipherKey -> CipherNonce -> Ciphertext -> Maybe ByteString
cipherDecrypt = Cipher.cipherDecrypt

-- -- AE / Authenticated Encryption
-- -- Not represented in saltine / libsodium
-- -- NOTE: Ciphertext would include auth tag
-- authEncrypt :: SecretKey ae -> Nonce ae -> ByteString -> Ciphertext ae
-- authDecrypt :: SecretKey ae -> Nonce ae -> Ciphertext c -> Maybe ByteString

-- -- AEAD / Authenticated Encryption with Associated Data
-- -- NOTE: Ciphertext would include auth tag
-- aeadEncrypt :: SecretKey ae -> Nonce ae -> AssociatedData ae -> ByteString -> Ciphertext ae
-- aeadDecrypt :: SecretKey ae -> Nonce ae -> AssociatedData ae -> Ciphertext c -> Maybe ByteString

-- -- MAC / Auth
-- auth :: SecretKey mac -> ByteString -> Auth mac
-- verifyAuth :: SecretKey mac -> Auth mac -> ByteString -> Bool

-- -- OTA / OneTimeAuth
-- -- NOTE: OTA is problematic if secret key and nonce are combined like Botan Poly1305
-- -- TODO: Differentiate One Time Auth (could be combined or not) from One Time Key (definitely combined)
-- --      class OTK a where
-- --          oneTimeKeyAuth :: OneTimeKey otk -> ByteString -> OneTimeKeyAuth otk
-- --      class(OTK a) => OTA ota where
-- --          oneTimeAuth :: SecretKey ota -> Nonce ota -> ByteString -> OneTimeAuth ota
-- oneTimeAuth :: SecretKey ota -> Nonce ota -> ByteString -> OneTimeAuth ota
-- verifyOneTimeAuth :: SecretKey ota -> Nonce ota -> OneTimeAuth ota -> ByteString -> Bool

-- -- Box / PKEncrypt plus OTA
-- -- NOTE: Ciphertext would include auth tag
-- -- NOTE: Botan cannot actually fulfill `pkEncrypt` because it must use `MonadRandomIO` instead.
-- --  SEE: 'generating' variants
-- pkEncrypt :: PublicKey pk -> PrivateKey pk -> Nonce pk -> ByteString -> Ciphertext pk 
-- pkDecrypt :: PublicKey pk -> PrivateKey pk -> Nonce pk -> Ciphertext pk -> Maybe ByteString

-- sign :: PrivateKey pk -> ByteString -> Signature pk	
-- verifySignature :: PublicKey pk -> Signature pk -> ByteString -> Bool
-- signed :: PrivateKey pk -> ByteString -> Signed pk	
-- openSigned :: PublicKey pk -> Signed pk -> Maybe ByteString

-- streamCipherStream :: SecretKey sc -> Nonce sc -> Int -> Ciphertext sc
-- -- streamCipherStreamAt :: SecretKey sc -> Nonce sc -> Int -> Int -> Ciphertext sc
-- streamCipherEncrypt :: SecretKey sc -> Nonce sc -> ByteString -> Ciphertext sc
-- -- streamCipherEncrypt k n = xor bs $ streamCipherStream k n (ByteString.length bs)
-- streamCipherDecrypt :: SecretKey sc -> Nonce sc -> Ciphertext sc -> ByteString
-- -- streamCipherDecrypt k n ct = let bs = getCiphertext ct in xor bs $ streamCipherStream k n (ByteString.length bs)


-- -- NOTE: Pure equivalents could be suffixed with `-Nonce`
-- cipherEncryptGenerating :: (MonadRandomIO m) => SecretKey c -> ByteString -> m (Nonce c, Ciphertext c)
-- aeEncryptGenerating :: (MonadRandomIO m) => SecretKey ae -> ByteString -> m (Nonce ae, Ciphertext ae)
-- aeadEncryptGenerating :: (MonadRandomIO m) => SecretKey ae -> AdditionalData ae -> ByteString -> m (Nonce ae, Ciphertext ae)
-- -- BUT REALLY
-- oneTimeKeyAuthGenerating :: (MonadRandomIO m) => ByteString -> m (OneTimeKey ota, OneTimeAuth ota)
-- pkEncryptGenerating :: (MonadRandomIO m) => PublicKey pk -> PrivateKey pk -> ByteString -> m (Nonce pk, Ciphertext pk)
