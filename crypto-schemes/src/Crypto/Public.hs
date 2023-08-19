module Crypto.Public where

import Crypto.Prelude

data family SecretKey pk
data family PublicKey pk

type KeyPair pk = (SecretKey pk, PublicKey pk)

class PK pk where

    newKeyPair :: IO (KeyPair pk)
    newNonce :: IO (Nonce pk)

data family Nonce pk
data family Cryptext pk
data family CombinedCryptext pk

class PK pk => Encrypt pk where

    encrypt :: PublicKey pk -> SecretKey pk -> Nonce pk -> Message -> Cryptext pk
    decrypt :: PublicKey pk -> SecretKey pk -> Nonce pk -> Cryptext pk -> Maybe Message

    encryptCombined :: PublicKey pk -> SecretKey pk -> Nonce pk -> Message -> CombinedCryptext pk
    decryptCombined :: PublicKey pk -> SecretKey pk -> CombinedCryptext pk -> Maybe Message

data family SignedMessage pk
data family Signature pk

class PK pk => Sign pk where

    sign :: SecretKey pk -> Message -> SignedMessage pk
    signOpen :: PublicKey pk -> SignedMessage pk -> Maybe Message

    signDetached :: SecretKey pk -> Message -> Signature pk
    signVerifyDetached :: PublicKey pk -> Signature pk -> Message -> Bool

class PK pk => KeyAgreement pk where

-- AKA KeyEstablishment
class PK pk => KeyExchange pk where

-- Encapsulate a symmetric / cipher key for transmission using asymmetric / public keys
class PK pk => KeyEncapsulation pk where

