module Botanium.AEAD
( AEADKey(..)
, AEADNonce(..)
, AEADAdditionalData(..)
, AEADMessage(..)
, newAEADKey
, newAEADNonce
, aead
, aeadOpen
, AEADTag(..)
, AEADCiphertext(..)
, aeadDetached
, aeadOpenDetached
) where

-- import Botan.Cipher

import Botanium.Prelude

data AEADKey

data AEADNonce

data AEADAdditionalData

data AEADMessage

newAEADKey :: IO AEADKey
newAEADKey = undefined

newAEADNonce :: IO AEADNonce
newAEADNonce = undefined

aead :: AEADKey -> AEADNonce -> Message -> AEADAdditionalData -> AEADMessage
aead = undefined

aeadOpen :: AEADKey -> AEADNonce -> AEADMessage -> AEADAdditionalData -> Maybe Message
aeadOpen = undefined

data AEADTag

data AEADCiphertext

aeadDetached :: AEADKey -> AEADNonce -> Message -> AEADAdditionalData -> (AEADTag, AEADCiphertext)
aeadDetached = undefined

aeadOpenDetached :: AEADKey -> AEADNonce -> AEADTag -> AEADCiphertext -> AEADAdditionalData -> Maybe Message
aeadOpenDetached = undefined
