module Botanium.SecretBox
( SecretBoxKey(..)
, SecretBoxNonce(..)
, SecretBoxMessage(..)
, newSecretBoxKey
, newSecretBoxNonce
, secretBox
, secretBoxOpen
, SecretBoxAuth(..)
, SecretBoxCiphertext(..)
, secretBoxDetached
, secretBoxOpenDetached
) where

import Botan.Cipher

import Botanium.Prelude

-- NOTE: libsodium SecretBox is XSalsa20 stream cipher + Poly1305 MAC

data SecretBoxKey

data SecretBoxNonce

data SecretBoxMessage -- SecretBox

newSecretBoxKey :: IO SecretBoxKey
newSecretBoxKey = undefined

newSecretBoxNonce :: IO SecretBoxNonce
newSecretBoxNonce = undefined

secretBox :: SecretBoxKey -> SecretBoxNonce -> Message -> SecretBoxMessage
secretBox = undefined

secretBoxOpen :: SecretBoxKey -> SecretBoxNonce -> SecretBoxMessage -> Maybe Message
secretBoxOpen = undefined

data SecretBoxAuth
data SecretBoxCiphertext

secretBoxDetached :: SecretBoxKey -> SecretBoxNonce -> Message -> (SecretBoxAuth,SecretBoxCiphertext)
secretBoxDetached = undefined

secretBoxOpenDetached :: SecretBoxKey -> SecretBoxNonce -> SecretBoxAuth -> SecretBoxCiphertext -> Maybe Message
secretBoxOpenDetached = undefined
