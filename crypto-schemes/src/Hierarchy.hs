module Hierarchy where

{-
NOTES:

- Our desired chunk size for crypto is much smaller than even smallChunkSize
- How do we represent online vs offline cryptography primitives?
    - Use the same interface as ByteString but with LazyByteString
- Concrete process implementation vs abstract typeclass
- Top-level vs associated data families
- Do we split classes for asymmetric functions?
    - Eg, should encrypt and decrypt (or sign and verify) be split into separate classes?

The following classes are a sketch of the current intended hierarchy.

This module has not been tested for compilation, and is not included in the cabal file.

-}

data Plaintext
data family Ciphertext alg
data AdditionalData

data family Alg alg
data family Ctx alg

{-
Secret Key
-}

data family SecretKey sk

class SecretKeyGen sk where
    generateSecretKey :: IO (SecretKey sk)

{-
Public Key
-}

data family PublicKey pk
data family PrivateKey pk

type Keypair pk = (PublicKey pk, PrivateKey pk)

class PublicKeyGen pk where
    generatePrivateKey :: IO (PrivateKey pk)
    derivePublicKey :: PrivateKey pk -> PublicKey pk
    generateKeypair :: IO (PublicKey pk, PrivateKey pk)

{-
Nonce
-}

data family Nonce alg

class NonceGen alg where
    generateNonce :: IO (Nonce alg)

{-
Hash - integrity
-}

data family Digest alg

class Hash alg where
    hash :: Plaintext -> Digest alg

{-
Message Authentication Code - integrity, authentication
-}

data family Tag alg

class (SecretKeyGen alg) => MAC alg where
    auth :: SecretKey alg -> Plaintext -> Tag alg
    verifyTag :: SecretKey alg -> Plaintext -> Tag alg -> Bool

{-
Block cipher
-}

class (SecretKeyGen bc) => BlockCipher bc where
    blockCipher :: SecretKey bc -> Plaintext -> Ciphertext bc

class (BlockCipher bc) => BlockCipherN n bc where
    -- TODO
    
type BlockCipher128 bc = BlockCipherN 128 bc

{-
TODO: Stream cipher, cipher mode, block cipher mode
-}

class (SecretKeyGen c, NonceGen c) => Cipher c where
    encipher :: SecretKey c -> Nonce c -> Plaintext -> Ciphertext c
    decipher :: SecretKey c -> Nonce c -> Ciphertext c -> Maybe Plaintext

class AE ae where
    authEncrypt :: SecretKey ae -> Nonce ae -> Plaintext -> (Ciphertext ae, Tag ae)
    authDecrypt :: SecretKey ae -> Nonce ae -> Ciphertext ae -> Tag ae -> Maybe Plaintext

class (AE ae) => AEAD ae where
    aeadEncrypt :: SecretKey ae -> Nonce ae -> Plaintext -> AdditionalData -> (Ciphertext ae, Tag ae)
    aeadDecrypt :: SecretKey ae -> Nonce ae -> Ciphertext ae -> AdditionalData -> Tag ae -> Maybe Plaintext

encryptThenMAC :: (Cipher c, MAC a) => SecretKey c -> Nonce c -> SecretKey a -> Plaintext -> (Ciphertext c, Tag a)
encryptThenMAC kc n ka pt = (ct, t) where
    ct = encipher kc n pt
    t  = auth ka ct

{-
Public key encryption
-}

class (PublicKeyGen pk, NonceGen pk) => Encrypt pk where
    pkEncrypt :: PrivateKey pk -> PublicKey pk -> Nonce pk -> Plaintext -> Ciphertext pk
    pkDecrypt :: PublicKey pk -> PrivateKey pk -> Nonce pk -> Ciphertext pk -> Maybe Plaintext

{-
Public key signatures
-}

data family Signature pk

class (PublicKeyGen pk, NonceGen pk) => Sign pk where
    sign            :: PrivateKey pk -> Plaintext -> Signature pk
    verifySignature :: PublicKey pk -> Plaintext -> Signature -> Bool

{-
TODO: KA, KX, KEM
-}

{-
-- ONLINE / INCREMENTAL / LAZY VARIANTS
-}

data LazyPlaintext
data family LazyCiphertext alg

class Hash alg => LazyHash alg where
    lazyHash :: LazyPlaintext -> Digest alg

class MAC alg => LazyMAC where
    lazyAuth :: SecretKey alg -> LazyPlaintext -> Tag alg
    lazyVerify :: SecretKey alg -> LazyPlaintext -> Tag alg -> Bool

-- class Cipher ... => LazyCipher ... where

class (Encrypt pk) => LazyEncrypt pk where
    lazyEncrypt :: PrivateKey pk -> PublicKey pk -> Nonce pk -> LazyPlaintext -> LazyCiphertext pk
    lazyDecrypt :: PublicKey pk -> PrivateKey pk -> Nonce pk -> LazyCiphertext pk -> Maybe LazyPlaintext

class (Sign pk) => LazySign pk where
    lazySign            :: PrivateKey pk -> LazyPlaintext -> Signature pk
    lazyVerifySignature :: PublicKey pk -> LazyPlaintext -> Signature -> Bool
