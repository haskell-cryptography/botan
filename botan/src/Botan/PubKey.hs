{-|
Module      : Botan.PubKey
Description : Public key cryptography
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

Public key cryptography is a collection of techniques allowing
for encryption, signatures, and key agreement.
-}

module Botan.PubKey
(

-- * Thing
-- $introduction

-- * Usage
-- $usage

-- * Idiomatic interface

-- ** Data type
  PK(..)
-- TODO: Rename XMSSScheme
, XMSS(..)
, ECGroup(..)
, ecGroupName
, DLGroup(..)
, dlGroupName

-- ** Enumerations

-- , allPKs

-- ** Associated types

, PKExportFormat(..)
, pkExportFormatFlags
, PKCheckKeyFlags(..)
, PKPadding(..)
, pkPaddingName

-- * Private Keys

-- ** Wrapped private key
, PrivKey(..)

-- ** Destructor
, destroyPrivKey

-- ** Initializers
, newPrivKey

-- ** Accessors

, privKeyAlgo
, privKeyField

-- ** Accessory functions
, loadPrivKey
, exportPrivKey
, exportPrivKeyPubKey
, checkPrivKey

-- * Public Keys

, PubKey(..)

-- ** Destructor
, destroyPubKey

-- ** Accessors

, pubKeyAlgo
, pubKeyField
, estimatedPubKeyStrength
, pubKeyFingerprint

-- ** Accessory functions

, loadPubKey
, exportPubKey
, checkPubKey

--

, privKeyCreatePKIO

) where

import qualified Botan.Low.PubKey as Low
import Botan.Low.PubKey (PrivKey(..), PubKey(..))
import qualified Botan.Low.RNG as Low
import Botan.Low.MPI

import Botan.Hash
import Botan.Prelude
import Botan.RNG

import Data.Bool

{- $introduction

-}

{- $usage

-}

--
-- Idiomatic interface
--

-- Data type

-- data PK

-- Enumerations

-- allPKs = undefined

-- Accessory types

data PKExportFormat
    = PKExportDER
    | PKExportPEM

pkExportFormatFlags :: PKExportFormat -> Low.PrivKeyExportFlags
pkExportFormatFlags PKExportDER = Low.PrivKeyExportDER
pkExportFormatFlags PKExportPEM = Low.PrivKeyExportPEM

--
-- Private Keys
--

-- Wrapped private key

-- data PrivKey
--     = PrivKey
--     { privKeyAlgo :: PK
--     , privKeyRef :: Low.PrivKey
--     }

-- Destructor

destroyPrivKey :: (MonadIO m) => PrivKey -> m ()
destroyPrivKey = liftIO . Low.privKeyDestroy

-- Initializers

newPrivKey :: (MonadRandomIO m) => PK -> m PrivKey
newPrivKey pk = do
    rng <- getRNG
    liftIO $ Low.privKeyCreate (pkName pk) (pkParams pk) rng

-- Accessors

-- TODO: Parse Low.botan_privkey_algo -> PK
privKeyAlgo :: PrivKey -> PK
privKeyAlgo = undefined

-- TODO: Return Integer instead?
privKeyField :: PrivKey -> ByteString -> Maybe MP
privKeyField pk field = unsafePerformIO $ do
    mp <- mpInit
    -- TODO: Return nothing on catch error
    Low.privKeyGetField mp pk field
    return $ Just mp
{-# NOINLINE privKeyField #-}

-- Accessory functions

-- NOTE: No way to recover the algo yet
-- TODO: Should be :: ByteString -> Maybe ByteString -> Maybe PrivKey
loadPrivKey :: ByteString -> ByteString -> Maybe PrivKey
loadPrivKey bits password = unsafePerformIO $ do
    -- TODO: Return nothing on catch error
    pk <- Low.privKeyLoad bits password
    return $ Just pk
{-# NOINLINE loadPrivKey #-}

-- NOTE: Is including trailing \0 in PEM format?
exportPrivKey :: PrivKey -> PKExportFormat -> ByteString
exportPrivKey pk fmt = unsafePerformIO $ Low.privKeyExport pk (pkExportFormatFlags fmt)
{-# NOINLINE exportPrivKey #-}

exportPrivKeyPubKey :: PrivKey -> PubKey
exportPrivKeyPubKey pk = unsafePerformIO $ Low.privKeyExportPubKey pk
{-# NOINLINE exportPrivKeyPubKey #-}

checkPrivKey :: (MonadRandomIO m) => PrivKey -> Bool -> m Bool
checkPrivKey pk expensive = do
    rng <- getRNG
    -- TODO: Return false on catch error
    liftIO $ Low.privKeyCheckKey pk rng (bool Low.CheckKeyNormalTests Low.CheckKeyExpensiveTests expensive)
    return True

--
-- Public Keys
--

-- data PubKey
--     = PubKey
--     { pubKeyAlgo :: PK
--     , pubKeyRef :: Low.PubKey
--     }

-- Destructor

destroyPubKey :: (MonadIO m) => PubKey -> m ()
destroyPubKey = liftIO . Low.pubKeyDestroy

-- Accessors

-- TODO: Parse Low.botan_pubkey_algo -> PK
pubKeyAlgo :: PubKey -> PK
pubKeyAlgo = undefined

-- TODO: Return Integer instead?
pubKeyField :: PubKey -> ByteString -> Maybe MP
pubKeyField pk field = unsafePerformIO $ do
    mp <- mpInit
    -- TODO: Return nothing on catch error
    Low.pubKeyGetField mp pk field
    return $ Just mp
{-# NOINLINE pubKeyField #-}

estimatedPubKeyStrength :: PubKey -> Int
estimatedPubKeyStrength = unsafePerformIO . Low.pubKeyEstimatedStrength
{-# NOINLINE estimatedPubKeyStrength #-}

pubKeyFingerprint :: PubKey -> Hash -> ByteString
pubKeyFingerprint pk h = unsafePerformIO $ Low.pubKeyFingerprint pk (hashName h)
{-# NOINLINE pubKeyFingerprint #-}

-- Accessory functions

-- NOTE: No way to recover the algo yet
loadPubKey :: ByteString -> Maybe PubKey
loadPubKey bits = unsafePerformIO $ do
    -- TODO: Return nothing on catch error
    pk <- Low.pubKeyLoad bits
    return $ Just pk
{-# NOINLINE loadPubKey #-}

-- NOTE: Is including trailing \0 in PEM format?
exportPubKey :: PubKey -> PKExportFormat -> ByteString
exportPubKey pk fmt = unsafePerformIO $ Low.pubKeyExport pk (pkExportFormatFlags fmt)
{-# NOINLINE exportPubKey #-}

checkPubKey :: (MonadRandomIO m) => PubKey -> Bool -> m Bool
checkPubKey pk expensive = do
    rng <- getRNG
    -- TODO: Return false on catch error
    liftIO $ Low.pubKeyCheckKey pk rng (bool Low.CheckKeyNormalTests Low.CheckKeyExpensiveTests expensive)
    return True





--
-- OG BELOW
--





-- TODO: Dig into Key agreement (KA) vs key exchange (KE / KX) vs key encapsulation mechanism (KEM)
-- NOTE: libsodium uses kx for key exchange
-- ALG SOURCES: https://github.com/randombit/botan/blob/a303f4af1504e7ac349dd798190924ea08ead9b7/src/lib/pubkey/pk_algs.cpp
-- NOTE: Testing shows SM2 is broken or at least finnicky
data PK                     -- NOTE: PQ = post-quantum, NS = national standard
    = RSA Word32            -- Encryption, signing, key encapsulation
    | SM2 ECGroup           -- NS, Encryption, signing -- NOTE: Accepts SM2_Sig and SM2_Enc as names too
    | ElGamal DLGroup       -- Encryption
    | DSA DLGroup           -- Signing
    | ECDSA ECGroup         -- Signing
    | ECKCDSA ECGroup       -- NS, Signing
    | ECGDSA ECGroup        -- NS, Signing
    | GOST_34_10 ECGroup    -- NS, Signing -- NOTE: Accepts "" as param too, alternate names "GOST-34.10-2012-256" and "GOST-34.10-2012-512"
    | Ed25519               -- Signing; TODO: Variant (Prehashed, Pure)
    | XMSS XMSS             -- PQ, signing
    | DH DLGroup            -- Key exchange
    | ECDH ECGroup          -- Key exchange
    | Curve25519            -- Key exchange, aka X25519
    -- New in 3.x?
    | Dilithium         -- PQ, signing, unknown parameters
    | Kyber             -- PQ, key encapsulation, unknown parameters
    -- | SPHINCSPlus    -- PQ, signing, unknown parameters, possibly unavailable because brew botan is 3.0
    | McEliece          -- PQ, key encapsulation, unknown parameters

-- TODO: SKey, KXKey, KAKey, KEMKey

type PKName = ByteString
type PKParams = ByteString

pkName :: PK -> PKName
pkName (RSA _)          = Low.RSA           -- "RSA"
pkName (SM2 _)          = Low.SM2           -- "SM2"
pkName (ElGamal _)      = Low.ElGamal       -- "ElGamal"
pkName (DSA _)          = Low.DSA           -- "DSA"
pkName (ECDSA _)        = Low.ECDSA         -- "ECDSA"
pkName (ECKCDSA _)      = Low.ECKCDSA       -- "ECKCDSA"
pkName (ECGDSA _)       = Low.ECGDSA        -- "ECGDSA"
pkName (GOST_34_10 _)   = Low.GOST_34_10    -- "GOST-34.10"
pkName Ed25519          = Low.Ed25519       -- "Ed25519"
pkName (XMSS _)         = Low.XMSS          -- "XMSS"
pkName (DH _)           = Low.DH            -- "DH"
pkName (ECDH _)         = Low.ECDH          -- "ECDH"
pkName Curve25519       = Low.Curve25519    -- "Curve25519"
-- New in 3.x?
pkName Dilithium        = Low.Dilithium   -- "Dilithium-6x5-r3"   -- TODO: Find full listing in doxygen
pkName Kyber            = Low.Kyber       -- "Kyber-1024-r3"      -- TODO: Find full listing in doxygen
-- pkName SPHINCSPlus      = "SPHINCS+"  -- Doesn't work :/      -- TODO: Find full listing in doxygen
pkName McEliece         = Low.McEliece

pkParams :: PK -> PKParams
pkParams (RSA bits)       = showBytes bits
pkParams (SM2 grp)        = ecGroupName grp
pkParams (ElGamal grp)    = dlGroupName grp
pkParams (DSA grp)        = dlGroupName grp
pkParams (ECDSA grp)      = ecGroupName grp
pkParams (ECKCDSA grp)    = ecGroupName grp
pkParams (ECGDSA grp)     = ecGroupName grp
pkParams (GOST_34_10 grp) = ecGroupName grp
pkParams Ed25519          = ""
pkParams (XMSS xmss)      = xmssName xmss
pkParams (DH grp)         = dlGroupName grp
pkParams (ECDH grp)       = ecGroupName grp
pkParams Curve25519       = ""
-- New in 3.x? Unknown params!
pkParams Dilithium        = ""
pkParams Kyber            = ""
-- pkParams SPHINCSPlus      = ""
pkParams McEliece         = ""

data XMSS
    = XMSS_SHA2_10_256
    | XMSS_SHA2_16_256
    | XMSS_SHA2_20_256
    | XMSS_SHA2_10_512
    | XMSS_SHA2_16_512
    | XMSS_SHA2_20_512
    | XMSS_SHAKE_10_256
    | XMSS_SHAKE_16_256
    | XMSS_SHAKE_20_256
    | XMSS_SHAKE_10_512
    | XMSS_SHAKE_16_512
    | XMSS_SHAKE_20_512

type XMSSName = ByteString

xmssName :: XMSS -> XMSSName
xmssName XMSS_SHA2_10_256   = Low.XMSS_SHA2_10_256
xmssName XMSS_SHA2_16_256   = Low.XMSS_SHA2_16_256
xmssName XMSS_SHA2_20_256   = Low.XMSS_SHA2_20_256
xmssName XMSS_SHA2_10_512   = Low.XMSS_SHA2_10_512
xmssName XMSS_SHA2_16_512   = Low.XMSS_SHA2_16_512
xmssName XMSS_SHA2_20_512   = Low.XMSS_SHA2_20_512
xmssName XMSS_SHAKE_10_256  = Low.XMSS_SHAKE_10_256
xmssName XMSS_SHAKE_16_256  = Low.XMSS_SHAKE_16_256
xmssName XMSS_SHAKE_20_256  = Low.XMSS_SHAKE_20_256
xmssName XMSS_SHAKE_10_512  = Low.XMSS_SHAKE_10_512
xmssName XMSS_SHAKE_16_512  = Low.XMSS_SHAKE_16_512
xmssName XMSS_SHAKE_20_512  = Low.XMSS_SHAKE_20_512

data ECGroup
    = Secp160k1
    | Secp160r1
    | Secp160r2
    | Secp192k1
    | Secp192r1
    | Secp224k1
    | Secp224r1
    | Secp256k1
    | Secp256r1
    | Secp384r1
    | Secp521r1
    | Brainpool160r1
    | Brainpool192r1
    | Brainpool224r1
    | Brainpool256r1
    | Brainpool320r1
    | Brainpool384r1
    | Brainpool512r1
    | X962_p192v2
    | X962_p192v3
    | X962_p239v1
    | X962_p239v2
    | X962_p239v3
    | Gost_256A
    | Gost_512A
    | Frp256v1
    | Sm2p256v1

type ECGroupName = ByteString

ecGroupName :: ECGroup -> ECGroupName
ecGroupName Secp160k1       = Low.Secp160k1
ecGroupName Secp160r1       = Low.Secp160r1
ecGroupName Secp160r2       = Low.Secp160r2
ecGroupName Secp192k1       = Low.Secp192k1
ecGroupName Secp192r1       = Low.Secp192r1
ecGroupName Secp224k1       = Low.Secp224k1
ecGroupName Secp224r1       = Low.Secp224r1
ecGroupName Secp256k1       = Low.Secp256k1
ecGroupName Secp256r1       = Low.Secp256r1
ecGroupName Secp384r1       = Low.Secp384r1
ecGroupName Secp521r1       = Low.Secp521r1
ecGroupName Brainpool160r1  = Low.Brainpool160r1
ecGroupName Brainpool192r1  = Low.Brainpool192r1
ecGroupName Brainpool224r1  = Low.Brainpool224r1
ecGroupName Brainpool256r1  = Low.Brainpool256r1
ecGroupName Brainpool320r1  = Low.Brainpool320r1
ecGroupName Brainpool384r1  = Low.Brainpool384r1
ecGroupName Brainpool512r1  = Low.Brainpool512r1
ecGroupName X962_p192v2     = Low.X962_p192v2
ecGroupName X962_p192v3     = Low.X962_p192v3
ecGroupName X962_p239v1     = Low.X962_p239v1
ecGroupName X962_p239v2     = Low.X962_p239v2
ecGroupName X962_p239v3     = Low.X962_p239v3
ecGroupName Gost_256A       = Low.Gost_256A
ecGroupName Gost_512A       = Low.Gost_512A
ecGroupName Frp256v1        = Low.Frp256v1
ecGroupName Sm2p256v1       = Low.Sm2p256v1

data DLGroup
    -- = FFDHE FFDHE
    -- | MODP MODP
    -- | DSA DSA
    = FFDHE_IETF_2048
    | FFDHE_IETF_3072
    | FFDHE_IETF_4096
    | FFDHE_IETF_6144
    | FFDHE_IETF_8192
    | MODP_IETF_1024
    | MODP_IETF_1536
    | MODP_IETF_2048
    | MODP_IETF_3072
    | MODP_IETF_4096
    | MODP_IETF_6144
    | MODP_IETF_8192
    | MODP_SRP_1024
    | MODP_SRP_1536
    | MODP_SRP_2048
    | MODP_SRP_3072
    | MODP_SRP_4096
    | MODP_SRP_6144
    | MODP_SRP_8192
    | DSA_JCE_1024
    | DSA_BOTAN_2048
    | DSA_BOTAN_3072

type DLGroupName = ByteString

dlGroupName :: DLGroup -> DLGroupName
dlGroupName FFDHE_IETF_2048 = Low.FFDHE_IETF_2048
dlGroupName FFDHE_IETF_3072 = Low.FFDHE_IETF_3072
dlGroupName FFDHE_IETF_4096 = Low.FFDHE_IETF_4096
dlGroupName FFDHE_IETF_6144 = Low.FFDHE_IETF_6144
dlGroupName FFDHE_IETF_8192 = Low.FFDHE_IETF_8192
dlGroupName MODP_IETF_1024  = Low.MODP_IETF_1024
dlGroupName MODP_IETF_1536  = Low.MODP_IETF_1536
dlGroupName MODP_IETF_2048  = Low.MODP_IETF_2048
dlGroupName MODP_IETF_3072  = Low.MODP_IETF_3072
dlGroupName MODP_IETF_4096  = Low.MODP_IETF_4096
dlGroupName MODP_IETF_6144  = Low.MODP_IETF_6144
dlGroupName MODP_IETF_8192  = Low.MODP_IETF_8192
dlGroupName MODP_SRP_1024   = Low.MODP_SRP_1024
dlGroupName MODP_SRP_1536   = Low.MODP_SRP_1536
dlGroupName MODP_SRP_2048   = Low.MODP_SRP_2048
dlGroupName MODP_SRP_3072   = Low.MODP_SRP_3072
dlGroupName MODP_SRP_4096   = Low.MODP_SRP_4096
dlGroupName MODP_SRP_6144   = Low.MODP_SRP_6144
dlGroupName MODP_SRP_8192   = Low.MODP_SRP_8192
dlGroupName DSA_JCE_1024    = Low.DSA_JCE_1024
dlGroupName DSA_BOTAN_2048  = Low.DSA_BOTAN_2048
dlGroupName DSA_BOTAN_3072  = Low.DSA_BOTAN_3072

privKeyCreatePKIO :: PK -> Low.RNG -> IO PrivKey
privKeyCreatePKIO pk = Low.privKeyCreate (pkName pk) (pkParams pk)

-- data PKExportFlags
--     = PKExportDER   -- BOTAN_PRIVKEY_EXPORT_FLAG_DER
--     | PKExportPEM   -- BOTAN_PRIVKEY_EXPORT_FLAG_PEM

data PKCheckKeyFlags
    = PKCheckKeyNone            -- BOTAN_CHECK_KEY_NONE
    | PKCheckKeyExpensiveTests  -- BOTAN_CHECK_KEY_EXPENSIVE_TESTS

-- NOTE: Need to confirm  that this is all EME (encryption) padding
data PKPadding
    = EME_RAW
    | EME_PKCS1
    | EME_OAEP Hash (Maybe Hash) (Maybe ByteString)    -- Hash, mask gen hash, label
    | SM2EncParam Hash  -- NOTE: Why SM2 specific? Why not just PKPaddingHash Hash?

pkPaddingName :: PKPadding -> ByteString
pkPaddingName EME_RAW     = "Raw"
pkPaddingName EME_PKCS1   = "PKCS1v15"  -- "PKCS1v15" -- Why not "EME-PKCS1-v1_5"? See C++ docs
pkPaddingName (EME_OAEP h m l) = case (m,l) of
    (Nothing, Nothing) -> "OAEP(" <> hashName h <> ",MGF1)"
    (Nothing, Just l') -> "OAEP(" <> hashName h <> ",MGF1," <> l' <> ")"
    (Just m', Nothing) -> "OAEP(" <> hashName h <> ",MGF1(" <> hashName m' <> "))"
    (Just m', Just l') -> "OAEP(" <> hashName h <> ",MGF1(" <> hashName m' <> ")," <> l' <> ")"
pkPaddingName (SM2EncParam h)  = hashName h

defaultPKPadding = "OAEP(SHA-256)" -- C++ docs tell us more about this

-- SEE: C++ Docs on more types, eg MGF1:
--  MGF1: https://botan.randombit.net/doxygen/mgf1_8h_source.html
--  pk_pad: https://botan.randombit.net/doxygen/dir_63563f8eb148fb3139a10bc08bfb3f55.html
-- Note that there are:
--  EME (Encoding Method for Encryption) - padding algo for encryption
--  EMSA (Encoding Method for Signature with Appendix) - padding algo for signing
--  MGF1
-- and others
