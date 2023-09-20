module Botan.PubKey.KeyAgreement where

import qualified Data.ByteString as ByteString

import Data.Bool

import Botan.Bindings.PubKey.KeyAgreement
import Botan.Low.PubKey.KeyAgreement

import Botan.Low.PubKey
import Botan.Low.RNG

import Botan.Error
import Botan.Hash
import Botan.Prelude
import Botan.PubKey
import Botan.KDF
import Botan.RNG

data KeyAgreement
    = DHKA DLGroup
    | ECDHKA ECGroup
    | Curve25519KA

keyAgreementToPK :: KeyAgreement -> PK
keyAgreementToPK (DHKA dlg) = (DH dlg)
keyAgreementToPK (ECDHKA ecg) = (ECDH ecg)
keyAgreementToPK Curve25519KA = Curve25519

type KAPublicKey = ByteString
type KASharedSecret = ByteString

newKeyAgreementKey :: KeyAgreement -> IO PrivKey
newKeyAgreementKey ka = do
    rng <- rngCtxInitIO System
    privKeyCreatePKIO (keyAgreementToPK ka) rng

exportKeyAgreementPublicKey :: PrivKey -> IO KAPublicKey
exportKeyAgreementPublicKey = keyAgreementExportPublicIO

newKeyAgreementKeyPair :: KeyAgreement -> IO (PrivKey, KAPublicKey)
newKeyAgreementKeyPair ka = do
    sk <- newKeyAgreementKey ka
    pk <- exportKeyAgreementPublicKey sk
    return (sk,pk)

newKeyAgreement :: PrivKey -> KDF -> IO KeyAgreementCtx
newKeyAgreement sk kdf = keyAgreementCtxCreateIO sk (kdfName kdf)

deriveKeyAgreementSharedSecret :: KeyAgreementCtx -> KAPublicKey -> ByteString -> IO KASharedSecret
deriveKeyAgreementSharedSecret = keyAgreementIO

keyAgreement :: PrivKey -> KAPublicKey -> KDF -> ByteString -> IO KASharedSecret
keyAgreement sk pk kdf salt = do
    ka <- newKeyAgreement sk kdf
    deriveKeyAgreementSharedSecret ka pk salt




-- import Botan.RNG (rngCtxInitIO, RNG (System))
-- import Botan.Low.PubKey.KeyAgreement



--

newRNGCtx :: IO RNGCtx
newRNGCtx = rngCtxInitIO System

type ECDHPub = ByteString

newKeyPair :: PK -> RNGCtx -> IO (ECDHPub, PrivKey)
newKeyPair pk rng = do
    sk <- privKeyCreatePKIO pk rng
    pk <- keyAgreementExportPublicIO sk
    return (pk,sk)

newECDHKeyPair :: RNGCtx -> IO (ECDHPub, PrivKey)
newECDHKeyPair = newKeyPair (ECDH Secp256k1)

testECDH :: IO Bool
testECDH = do
    rng <- newRNGCtx
    (pka, ska) <- newECDHKeyPair rng
    (pkb, skb) <- newECDHKeyPair rng
    -- ecdh k1 p2 == ecdh k2 p1 
    print "making a"
    ctxa <- keyAgreementCtxCreateIO ska "KDF2(SHA-256)"
    print "making b"
    ctxb <- keyAgreementCtxCreateIO skb "KDF2(SHA-256)"
    print "agreeing a"
    a <- keyAgreementIO ctxa pkb ""
    print "agreeing b"
    b <- keyAgreementIO ctxb pka ""
    print "comparing"
    return $ a == b
{-
import Botan.RNG
import Botan.PubKey
import Botan.Low.PubKey.KeyAgreement
kty = ECDH Secp256k1
keys <- replicateM 10 $ privKeyCreatePKIO kty rng
:{
ka k = do
:}
-}
