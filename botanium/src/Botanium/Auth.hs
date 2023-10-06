module Botanium.Auth
( AuthKey(..)
, AuthMessage(..)
, newAuthKey
, auth
, verify
, AuthTag(..)
, authDetached
, verifyDetached
) where

import qualified Data.ByteString as ByteString

import Botan.Hash
import Botan.MAC
import Botan.Low.RNG

import Botanium.Prelude

--  HMAC-SHA-512-256
authAlgorithm :: MAC
authAlgorithm = HMAC (SHA2 SHA512_256)

type AuthKey = ByteString

type AuthMessage = (Message, AuthTag)

newAuthKey :: IO AuthKey
newAuthKey = systemRNGGet 64

auth :: AuthKey -> Message -> AuthMessage
auth k msg = (msg, authDetached k msg)

verify :: AuthKey -> AuthMessage -> Bool
verify k (msg,tag) = verifyDetached k msg tag

type AuthTag = MACDigest

authDetached :: AuthKey -> Message -> AuthTag
authDetached k msg = mac authAlgorithm k Nothing msg

verifyDetached :: AuthKey -> Message -> AuthTag -> Bool
verifyDetached k msg tag = authDetached k msg == tag
