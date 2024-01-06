module Botan.PubKey.KeyAgreement where

import qualified Data.ByteString as ByteString

import Data.Bool

import Botan.Low.PubKey (PubKey(..), PrivKey(..))
import qualified Botan.Low.PubKey.KeyAgreement as Low
import qualified Botan.Low.RNG as Low

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
    rng <- newRNG System
    privKeyCreatePKIO (keyAgreementToPK ka) rng

exportKeyAgreementPublicKey :: PrivKey -> IO KAPublicKey
exportKeyAgreementPublicKey = Low.keyAgreementExportPublic

newKeyAgreementKeyPair :: KeyAgreement -> IO (PrivKey, KAPublicKey)
newKeyAgreementKeyPair ka = do
    sk <- newKeyAgreementKey ka
    pk <- exportKeyAgreementPublicKey sk
    return (sk,pk)

newKeyAgreement :: PrivKey -> KDF -> IO Low.KeyAgreement
newKeyAgreement sk kdf = Low.keyAgreementCreate sk (kdfName kdf)

deriveKeyAgreementSharedSecret :: Low.KeyAgreement -> KAPublicKey -> ByteString -> IO KASharedSecret
deriveKeyAgreementSharedSecret = Low.keyAgreement

keyAgreement :: PrivKey -> KAPublicKey -> KDF -> ByteString -> IO KASharedSecret
keyAgreement sk pk kdf salt = do
    ka <- newKeyAgreement sk kdf
    deriveKeyAgreementSharedSecret ka pk salt




-- import Botan.RNG (rngCtxInitIO, RNG (System))
-- import Botan.Low.PubKey.KeyAgreement



--

newRNGCtx :: IO Low.RNG
newRNGCtx = newRNG System

type ECDHPub = ByteString

newKeyPair :: PK -> Low.RNG -> IO (ECDHPub, PrivKey)
newKeyPair pk rng = do
    sk <- privKeyCreatePKIO pk rng
    pk <- Low.keyAgreementExportPublic sk
    return (pk,sk)

newECDHKeyPair :: Low.RNG -> IO (ECDHPub, PrivKey)
newECDHKeyPair = newKeyPair (ECDH Secp256k1)

testECDH :: IO Bool
testECDH = do
    rng <- newRNGCtx
    (pka, ska) <- newECDHKeyPair rng
    (pkb, skb) <- newECDHKeyPair rng
    -- ecdh k1 p2 == ecdh k2 p1 
    print "making a"
    ctxa <- Low.keyAgreementCreate ska "KDF2(SHA-256)"
    print "making b"
    ctxb <- Low.keyAgreementCreate skb "KDF2(SHA-256)"
    print "agreeing a"
    a <- Low.keyAgreement ctxa pkb ""
    print "agreeing b"
    b <- Low.keyAgreement ctxb pka ""
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
