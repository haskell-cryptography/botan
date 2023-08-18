module Botanium.Sign
( SignSecretKey(..)
, SignPublicKey(..)
, SignKeyPair(..)
, Signature(..)
, newSignKeyPair
, sign
, signOpen
, signDetached
, signVerifyDetached
) where

import qualified Data.ByteString as ByteString


import Botan.Low.PubKey
import Botan.Low.PubKey.Sign
import Botan.Low.PubKey.Verify

import Botan.PubKey
import Botan.RNG

import Botanium.Prelude

-- TODO: "For instance Dilithium may be parameterized with “Randomized”
--  or “Deterministic” to choose if the generated signature is randomized
--  or not. If left blank, a default is chosen."
signingAlgo :: PK
-- signingAlgo = Dilithium -- Post-quantum, but also large
signingAlgo = Ed25519

signingAlgoParams :: SignAlgoName
-- signingAlgoParams = "Deterministic" -- Post-quantum, but also large
signingAlgoParams = ""

type SignSecretKey = PrivKey

type SignPublicKey = PubKey

type SignKeyPair = (SignSecretKey, SignPublicKey)

type SignedMessage = (Message, Signature)

type Signature = ByteString

-- TODO: Move actual logic to Botan.PK.Sign

newSignKeyPair :: IO SignKeyPair
newSignKeyPair = do
    -- TODO: Better choice of RNG
    rng <- rngCtxInitIO System
    sk <- privKeyCreatePKIO signingAlgo rng
    pk <- privKeyExportPubKeyIO sk
    return (sk,pk)

sign :: SignSecretKey -> Message -> SignedMessage
sign sk msg = (msg, signDetached sk msg)

signOpen :: SignPublicKey -> SignedMessage -> Maybe Message
signOpen pk (msg, sig) = if signVerifyDetached pk msg sig
    then Just msg
    else Nothing

signDetached :: SignSecretKey -> Message -> Signature
signDetached sk msg = unsafePerformIO $ do
    -- TODO: Better choice of RNG
    rng <- rngCtxInitIO System
    ctx <- signCtxCreateIO sk signingAlgoParams SigningNoFlags
    signCtxUpdateIO ctx msg
    signCtxFinishIO ctx rng

signVerifyDetached :: SignPublicKey -> Signature -> Message -> Bool
signVerifyDetached pk sig msg = unsafePerformIO $ do
    ctx <- verifyCtxCreateIO pk signingAlgoParams SigningNoFlags
    verifyCtxUpdateIO ctx msg
    verifyCtxFinishIO ctx sig

