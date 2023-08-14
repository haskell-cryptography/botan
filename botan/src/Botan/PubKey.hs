module Botan.PubKey where

import Botan.Low.PubKey
import Botan.Low.RNG -- TEMP

import Botan.Hash
import Botan.Prelude
-- import Botan.RNG

-- TODO: Dig into Key agreement (KA) vs key exchange (KE / KX) vs key encapsulation mechanism (KEM)
-- NOTE: libsodium uses kx for key exchange
data PK                     -- NOTE: PQ = post-quantum, NS = national standard
    = RSA Word32            -- Encryption, signing, key encapsulation
    | SM2 ECGroup           -- NS, Encryption, signing
    | ElGamal DLGroup       -- Encryption
    | DSA DLGroup           -- Signing
    | ECDSA ECGroup         -- Signing
    | ECKCDSA ECGroup       -- NS, Signing
    | ECGDSA ECGroup        -- NS, Signing
    | GOST_34_10 ECGroup    -- NS, Signing
    | Ed25519               -- Signing
    | XMSS XMSS             -- PQ, signing
    | DH DLGroup            -- Key exchange
    | ECDH ECGroup          -- Key exchange
    | Curve25519            -- Key exchange
    -- New in 3.x?
    | X25519            -- Key encapsulation? Unknown parameters, throws NotImplementedException (-40) on privKeyCreate, likely missing something
    | Dilithium         -- PQ, signing, unknown parameters
    | Kyber             -- PQ, key encapsulation, unknown parameters
    -- | SPHINCSPlus    -- PQ, signing, unknown parameters, possibly unavailable because brew botan is 3.0
    | McEliece          -- PQ, key encapsulation, unknown parameters

-- TODO: SKey, KXKey, KAKey, KEMKey

type PKName = ByteString
type PKParams = ByteString

pkName :: PK -> PKName
pkName (RSA _)          = "RSA"
pkName (SM2 _)          = "SM2"
pkName (ElGamal _)      = "ElGamal"
pkName (DSA _)          = "DSA"
pkName (ECDSA _)        = "ECDSA"
pkName (ECKCDSA _)      = "ECKCDSA"
pkName (ECGDSA _)       = "ECGDSA"
pkName (GOST_34_10 _)   = "GOST_3.10"
pkName Ed25519          = "Ed25519"
pkName (XMSS _)         = "XMSS"
pkName (DH _)           = "DH"
pkName (ECDH _)         = "ECDH"
pkName Curve25519       = "Curve25519"
-- New in 3.x?
pkName X25519           = "X25519"
pkName Dilithium        = "Dilithium"   -- "Dilithium-6x5-r3"   -- TODO: Find full listing in doxygen 
pkName Kyber            = "Kyber"       -- "Kyber-1024-r3"      -- TODO: Find full listing in doxygen 
-- pkName SPHINCSPlus      = "SPHINCS+"  -- Doesn't work :/      -- TODO: Find full listing in doxygen 
pkName McEliece         = "McEliece"

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
pkParams X25519           = ""
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
xmssName XMSS_SHA2_10_256 = "XMSS-SHA2_10_256"
xmssName XMSS_SHA2_16_256 = "XMSS-SHA2_16_256"
xmssName XMSS_SHA2_20_256 = "XMSS-SHA2_20_256"
xmssName XMSS_SHA2_10_512 = "XMSS-SHA2_10_512"
xmssName XMSS_SHA2_16_512 = "XMSS-SHA2_16_512"
xmssName XMSS_SHA2_20_512 = "XMSS-SHA2_20_512"
xmssName XMSS_SHAKE_10_256 = "XMSS-SHAKE_10_256"
xmssName XMSS_SHAKE_16_256 = "XMSS-SHAKE_16_256"
xmssName XMSS_SHAKE_20_256 = "XMSS-SHAKE_20_256"
xmssName XMSS_SHAKE_10_512 = "XMSS-SHAKE_10_512"
xmssName XMSS_SHAKE_16_512 = "XMSS-SHAKE_16_512"
xmssName XMSS_SHAKE_20_512 = "XMSS-SHAKE_20_512"

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
ecGroupName Secp160k1 = "secp160k1"
ecGroupName Secp160r1 = "secp160r1"
ecGroupName Secp160r2 = "secp160r2"
ecGroupName Secp192k1 = "secp192k1"
ecGroupName Secp192r1 = "secp192r1"
ecGroupName Secp224k1 = "secp224k1"
ecGroupName Secp224r1 = "secp224r1"
ecGroupName Secp256k1 = "secp256k1"
ecGroupName Secp256r1 = "secp256r1"
ecGroupName Secp384r1 = "secp384r1"
ecGroupName Secp521r1 = "secp521r1"
ecGroupName Brainpool160r1 = "brainpool160r1"
ecGroupName Brainpool192r1 = "brainpool192r1"
ecGroupName Brainpool224r1 = "brainpool224r1"
ecGroupName Brainpool256r1 = "brainpool256r1"
ecGroupName Brainpool320r1 = "brainpool320r1"
ecGroupName Brainpool384r1 = "brainpool384r1"
ecGroupName Brainpool512r1 = "brainpool512r1"
ecGroupName X962_p192v2 = "x962_p192v2"
ecGroupName X962_p192v3 = "x962_p192v3"
ecGroupName X962_p239v1 = "x962_p239v1"
ecGroupName X962_p239v2 = "x962_p239v2"
ecGroupName X962_p239v3 = "x962_p239v3"
ecGroupName Gost_256A = "gost_256A"
ecGroupName Gost_512A = "gost_512A"
ecGroupName Frp256v1 = "frp256v1"
ecGroupName Sm2p256v1 = "sm2p256v1"

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
dlGroupName FFDHE_IETF_2048 = "ffdhe/ietf/2048"
dlGroupName FFDHE_IETF_3072 = "ffdhe/ietf/3072"
dlGroupName FFDHE_IETF_4096 = "ffdhe/ietf/4096"
dlGroupName FFDHE_IETF_6144 = "ffdhe/ietf/6144"
dlGroupName FFDHE_IETF_8192 = "ffdhe/ietf/8192"
dlGroupName MODP_IETF_1024 = "modp/ietf/1024"
dlGroupName MODP_IETF_1536 = "modp/ietf/1536"
dlGroupName MODP_IETF_2048 = "modp/ietf/2048"
dlGroupName MODP_IETF_3072 = "modp/ietf/3072"
dlGroupName MODP_IETF_4096 = "modp/ietf/4096"
dlGroupName MODP_IETF_6144 = "modp/ietf/6144"
dlGroupName MODP_IETF_8192 = "modp/ietf/8192"
dlGroupName MODP_SRP_1024 = "modp/srp/1024"
dlGroupName MODP_SRP_1536 = "modp/srp/1536"
dlGroupName MODP_SRP_2048 = "modp/srp/2048"
dlGroupName MODP_SRP_3072 = "modp/srp/3072"
dlGroupName MODP_SRP_4096 = "modp/srp/4096"
dlGroupName MODP_SRP_6144 = "modp/srp/6144"
dlGroupName MODP_SRP_8192 = "modp/srp/8192"
dlGroupName DSA_JCE_1024 = "dsa/jce/1024"
dlGroupName DSA_BOTAN_2048 = "dsa/botan/2048"
dlGroupName DSA_BOTAN_3072 = "dsa/botan/3072"

privKeyCreatePKIO :: PK -> RNGCtx -> IO PrivKey
privKeyCreatePKIO pk = privKeyCreateIO (pkName pk) (pkParams pk)

data PKExportFlags
    = PKExportDER   -- BOTAN_PRIVKEY_EXPORT_FLAG_DER
    | PKExportPEM   -- BOTAN_PRIVKEY_EXPORT_FLAG_PEM

data PKCheckKeyFlags
    = PKCheckKeyNone            -- BOTAN_PUBKEY_CHECK_KEY_FLAGS_NONE
    | PKCheckKeyExpensiveTests  -- BOTAN_PUBKEYCHECK_KEY_FLAGS_EXPENSIVE_TESTS

-- NOTE: Need to confirm  that this is all EME (encryption) padding
data PKPadding
    = EME_RAW
    | EME_PKCS1_v1_5
    | EME_OAEP Hash (Maybe Hash) (Maybe ByteString)    -- Hash, mask gen hash, label
    | SM2EncParam Hash  -- NOTE: Why SM2 specific? Why not just PKPaddingHash Hash?

pkPaddingName :: PKPadding -> PKPaddingName
pkPaddingName EME_RAW          = "Raw"
pkPaddingName EME_PKCS1_v1_5   = "PKCS1v15"    -- Why not "EME-PKCS1-v1_5"? See C++ docs
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
