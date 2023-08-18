module Botanium.Box
( BoxSecretKey(..)
, BoxPublicKey(..)
, BoxKeyPair(..)
-- , BoxCombinedKey(..)
, BoxNonce(..)
, BoxMessage(..)
, newBoxKeyPair
-- , beforeNM
, newBoxNonce
, box
, boxOpen
-- , boxAfterNM
-- , boxOpenAfterNM
, boxSeal
, boxSealOpen
) where

import Botanium.Prelude

data BoxSecretKey
data BoxPublicKey
type BoxKeyPair = (BoxSecretKey, BoxPublicKey)

-- data BoxCombinedKey

data BoxNonce

data BoxMessage

newBoxKeyPair :: IO BoxKeyPair
newBoxKeyPair = undefined

-- beforeNM :: BoxSecretKey -> BoxPublicKey -> BoxCombinedKey

newBoxNonce :: IO BoxNonce
newBoxNonce = undefined

box :: BoxPublicKey -> BoxSecretKey -> BoxNonce -> Message -> BoxMessage
box = undefined

boxOpen :: BoxPublicKey -> BoxSecretKey -> BoxNonce -> BoxMessage -> Maybe Message
boxOpen = undefined

-- boxAfterNM :: BoxCombinedKey -> BoxNonce -> Message -> BoxMessage
-- boxAfterNM = undefined

-- boxOpenAfterNM :: BoxCombinedKey -> BoxNonce -> BoxMessage -> Maybe Message
-- boxOpenAfterNM = undefined

boxSeal :: BoxPublicKey -> Message -> IO BoxMessage
boxSeal = undefined

boxSealOpen :: BoxPublicKey -> BoxSecretKey -> BoxMessage -> Maybe Message
boxSealOpen = undefined
