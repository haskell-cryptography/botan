{-|
Module      : Botan.Low.PubKey
Description : Public key cryptography
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

Public key cryptography is a collection of techniques allowing
for encryption, signatures, and key agreement.
-}

module Botan.Low.PubKey
(

-- * Private keys
  PrivKey(..)
, CheckKeyFlags(..)
, pattern CheckKeyNormalTests
, pattern CheckKeyExpensiveTests
, PrivKeyExportFlags(..)
, pattern PrivKeyExportDER
, pattern PrivKeyExportPEM
, withPrivKey
, privKeyCreate
, privKeyLoad
, privKeyDestroy
, privKeyAlgoName
, privKeyCheckKey
, privKeyGetField
, privKeyExport
, privKeyExportPubKey

-- * Public Keys

, PubKey(..)
, withPubKey
, pubKeyLoad
, pubKeyDestroy
, pubKeyAlgoName
, pubKeyCheckKey
, pubKeyEstimatedStrength
, pubKeyFingerprint
, pubKeyGetField
, pubKeyExport

-- * PK Algorithms

, PKName(..)
, pattern RSA
, pattern SM2
, pattern ElGamal
, pattern DSA
, pattern ECDSA
, pattern ECKCDSA
, pattern ECGDSA
, pattern GOST_34_10
, pattern Ed25519
, pattern XMSS
, pattern DH
, pattern ECDH
, pattern Curve25519
, pattern Dilithium
, pattern Kyber
, pattern McEliece

-- ** DLGroup

, DLGroupName(..)
, pattern FFDHE_IETF_2048
, pattern FFDHE_IETF_3072
, pattern FFDHE_IETF_4096
, pattern FFDHE_IETF_6144
, pattern FFDHE_IETF_8192
, pattern MODP_IETF_1024
, pattern MODP_IETF_1536
, pattern MODP_IETF_2048
, pattern MODP_IETF_3072
, pattern MODP_IETF_4096
, pattern MODP_IETF_6144
, pattern MODP_IETF_8192
, pattern MODP_SRP_1024
, pattern MODP_SRP_1536
, pattern MODP_SRP_2048
, pattern MODP_SRP_3072
, pattern MODP_SRP_4096
, pattern MODP_SRP_6144
, pattern MODP_SRP_8192
, pattern DSA_JCE_1024
, pattern DSA_BOTAN_2048
, pattern DSA_BOTAN_3072

-- ** ECGroup

, ECGroupName(..)
, pattern Secp160k1
, pattern Secp160r1
, pattern Secp160r2
, pattern Secp192k1
, pattern Secp192r1
, pattern Secp224k1
, pattern Secp224r1
, pattern Secp256k1
, pattern Secp256r1
, pattern Secp384r1
, pattern Secp521r1
, pattern Brainpool160r1
, pattern Brainpool192r1
, pattern Brainpool224r1
, pattern Brainpool256r1
, pattern Brainpool320r1
, pattern Brainpool384r1
, pattern Brainpool512r1
, pattern X962_p192v2
, pattern X962_p192v3
, pattern X962_p239v1
, pattern X962_p239v2
, pattern X962_p239v3
, pattern Gost_256A
, pattern Gost_512A
, pattern Frp256v1
, pattern Sm2p256v1

-- ** XMSS

, XMSSName(..)
, pattern XMSS_SHA2_10_256
, pattern XMSS_SHA2_16_256
, pattern XMSS_SHA2_20_256
, pattern XMSS_SHA2_10_512
, pattern XMSS_SHA2_16_512
, pattern XMSS_SHA2_20_512
, pattern XMSS_SHAKE_10_256
, pattern XMSS_SHAKE_16_256
, pattern XMSS_SHAKE_20_256
, pattern XMSS_SHAKE_10_512
, pattern XMSS_SHAKE_16_512
, pattern XMSS_SHAKE_20_512

-- * EME

, EMEName(..)
, pattern EME_RAW
, pattern EME_PKCS1_v1_5
, pattern EME_OAEP
, eme_raw
, eme_pkcs1_v1_5
, eme_oaep
-- , eme_oaep_mgf
, eme_hash
, eme_sm2EncParam

-- * EMSA

, EMSAName(..)
, emsa_none
, emsa_emsa4
, emsa_hash
, emsa_ed25519Pure
, emsa_ed25519Prehashed
, emsa_ed25519GnuPG
, emsa_sm2SignParam

-- * Convenience

-- , PKPaddingName(..)
, createPrivKey
, createPubKey
, mkPrivKeyLoad1_name
, mkPrivKeyLoad3
, mkPrivKeyLoad4
, mkPubKeyLoad2
, mkPubKeyLoad2_name
, mkPubKeyLoad3
, mkPubKeyLoad4
    
) where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Unsafe as ByteString

import Botan.Bindings.MPI
import Botan.Bindings.PubKey
import Botan.Bindings.RNG

import Botan.Low.Error
import Botan.Low.Hash
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.Remake
import Botan.Low.RNG
import Botan.Low.View

{- $introduction

-}

{- $usage

Unless you need a specific `public key cryptosystem`, it is strongly
recommended that you use the `RSA`, `Ed25519`, or `Curve25519` algorithms,
depending on your desired operation.

Create an RSA keypair:

> import Botan.Low.RNG
> import Botan.Low.PubKey
> rng <- rngInit "user"
> -- Alice generates her keys
> alicePrivKey <- privKeyCreate RSA "4096" rng
> alicePubKey <- privKeyExportPubKey alicePrivKey

> NOTE: For algorithm-specific parameters, consult the Botan documentation and
source

Encrypt a message:

> import Botan.Low.PubKey.Encrypt
> message = "Fee fi fo fum!"
> -- Bob encrypts a message for Alice using her public key
> -- Unlike `Crypto.Saltine.Core.Box`, the message is only encrypted, not signed.
> encrypter <- encryptCreate alicePubKey EME_PKCS1_v1_5
> ciphertext <- encrypt encrypter rng message

> NOTE: For algorithm-specific padding parameters, consult the Botan
documentation and source

Decrypt a message:

> import Botan.Low.PubKey.Decrypt
> -- Alice decrypts the message from Bob using her private key
> decrypter <- decryptCreate alicePrivKey EME_PKCS1_v1_5
> plaintext <- decrypt decrypter ciphertext
> message == plaintext -- True

> NOTE: The same padding must be used for both encryption and decryption

Sign a message:

> import Botan.Low.PubKey.Sign
> import Botan.Low.Hash
> message = "Fee fi fo fum!"
> -- Alice signs the message using her private key
> signer <- signCreate alicePrivKey (emsa_emsa4 SHA3) SigningPEMFormatSignature
> signUpdate signer message
> sig <- signFinish signer rng

> NOTE: Signing uses a different set of padding algorithms `EMSA` from
encryption `EME`, and different signing / encryption algorithms support
different specific padding algorithms

> NOTE: Signing does not yet have proper constants for selecting a padding
mechanism. For more information, refer to the `Botan.PubKey`,
`Botan.PubKey.Sign`, or the Botan C++ documentation. This area will be improved
in the near future.

Verify a message:

> import Botan.Low.PubKey.Verify
> -- Bob verifies the message using Alice's public key
> verifier <- verifyCreate alicePubKey (emsa_emsa4 SHA3) SigningPEMFormatSignature
> verifyUpdate verifier message
> verified <- verifyFinish verifier sig
> verified -- True

> NOTE: The same padding must be used for both encryption and decryption

-}

-- Associated types

type PKPaddingName = ByteString
    
-- /*
-- * Public/private key creation, import, ...
-- */

newtype PrivKey = MkPrivKey { getPrivKeyForeignPtr :: ForeignPtr BotanPrivKeyStruct }

newPrivKey      :: BotanPrivKey -> IO PrivKey
withPrivKey     :: PrivKey -> (BotanPrivKey -> IO a) -> IO a
privKeyDestroy  :: PrivKey -> IO ()
createPrivKey   :: (Ptr BotanPrivKey -> IO CInt) -> IO PrivKey
(newPrivKey, withPrivKey, privKeyDestroy, createPrivKey, _)
    = mkBindings
        MkBotanPrivKey runBotanPrivKey
        MkPrivKey getPrivKeyForeignPtr
        botan_privkey_destroy

type PrivKeyName = ByteString

type PKName = ByteString

pattern RSA
    ,   SM2
    ,   ElGamal
    ,   DSA
    ,   ECDSA
    ,   ECKCDSA
    ,   ECGDSA
    ,   GOST_34_10
    ,   Ed25519
    ,   XMSS
    ,   DH
    ,   ECDH
    ,   Curve25519
    ,   Dilithium
    ,   Kyber
    -- ,   SPHINCSPlus
    ,   McEliece
    ::  PKName

pattern RSA         = BOTAN_PK_RSA
pattern SM2         = BOTAN_PK_SM2
pattern ElGamal     = BOTAN_PK_ELGAMAL
pattern DSA         = BOTAN_PK_DSA
pattern ECDSA       = BOTAN_PK_ECDSA
pattern ECKCDSA     = BOTAN_PK_ECKCDSA
pattern ECGDSA      = BOTAN_PK_ECGDSA
pattern GOST_34_10  = BOTAN_PK_GOST_34_10
pattern Ed25519     = BOTAN_PK_ED25519
pattern XMSS        = BOTAN_PK_XMSS
pattern DH          = BOTAN_PK_DH
pattern ECDH        = BOTAN_PK_ECDH
pattern Curve25519  = BOTAN_PK_CURVE25519
pattern Dilithium   = BOTAN_PK_DILITHIUM
pattern Kyber       = BOTAN_PK_KYBER
-- pattern SPHINCSPlus = BOTAN_PK_SPHINCSPLUS
pattern McEliece    = BOTAN_PK_MCELIECE

type XMSSName = ByteString

pattern XMSS_SHA2_10_256
    ,   XMSS_SHA2_16_256
    ,   XMSS_SHA2_20_256
    ,   XMSS_SHA2_10_512
    ,   XMSS_SHA2_16_512
    ,   XMSS_SHA2_20_512
    ,   XMSS_SHAKE_10_256
    ,   XMSS_SHAKE_16_256
    ,   XMSS_SHAKE_20_256
    ,   XMSS_SHAKE_10_512
    ,   XMSS_SHAKE_16_512
    ,   XMSS_SHAKE_20_512
    ::  XMSSName

pattern XMSS_SHA2_10_256 = BOTAN_XMSS_SHA2_10_256
pattern XMSS_SHA2_16_256 = BOTAN_XMSS_SHA2_16_256
pattern XMSS_SHA2_20_256 = BOTAN_XMSS_SHA2_20_256
pattern XMSS_SHA2_10_512 = BOTAN_XMSS_SHA2_10_512
pattern XMSS_SHA2_16_512 = BOTAN_XMSS_SHA2_16_512
pattern XMSS_SHA2_20_512 = BOTAN_XMSS_SHA2_20_512
pattern XMSS_SHAKE_10_256 = BOTAN_XMSS_SHAKE_10_256
pattern XMSS_SHAKE_16_256 = BOTAN_XMSS_SHAKE_16_256
pattern XMSS_SHAKE_20_256 = BOTAN_XMSS_SHAKE_20_256
pattern XMSS_SHAKE_10_512 = BOTAN_XMSS_SHAKE_10_512
pattern XMSS_SHAKE_16_512 = BOTAN_XMSS_SHAKE_16_512
pattern XMSS_SHAKE_20_512 = BOTAN_XMSS_SHAKE_20_512

type ECGroupName = ByteString

pattern Secp160k1
    ,   Secp160r1
    ,   Secp160r2
    ,   Secp192k1
    ,   Secp192r1
    ,   Secp224k1
    ,   Secp224r1
    ,   Secp256k1
    ,   Secp256r1
    ,   Secp384r1
    ,   Secp521r1
    ,   Brainpool160r1
    ,   Brainpool192r1
    ,   Brainpool224r1
    ,   Brainpool256r1
    ,   Brainpool320r1
    ,   Brainpool384r1
    ,   Brainpool512r1
    ,   X962_p192v2
    ,   X962_p192v3
    ,   X962_p239v1
    ,   X962_p239v2
    ,   X962_p239v3
    ,   Gost_256A
    ,   Gost_512A
    ,   Frp256v1
    ,   Sm2p256v1
    ::  ECGroupName

pattern Secp160k1       = BOTAN_ECGROUP_SECP_160_K1
pattern Secp160r1       = BOTAN_ECGROUP_SECP_160_R1
pattern Secp160r2       = BOTAN_ECGROUP_SECP_160_R2
pattern Secp192k1       = BOTAN_ECGROUP_SECP_192_K1
pattern Secp192r1       = BOTAN_ECGROUP_SECP_192_R1
pattern Secp224k1       = BOTAN_ECGROUP_SECP_224_K1
pattern Secp224r1       = BOTAN_ECGROUP_SECP_224_R1
pattern Secp256k1       = BOTAN_ECGROUP_SECP_256_K1
pattern Secp256r1       = BOTAN_ECGROUP_SECP_256_R1
pattern Secp384r1       = BOTAN_ECGROUP_SECP_384_R1
pattern Secp521r1       = BOTAN_ECGROUP_SECP_521_R1
pattern Brainpool160r1  = BOTAN_ECGROUP_BRAINPOOL_160_R1
pattern Brainpool192r1  = BOTAN_ECGROUP_BRAINPOOL_192_R1
pattern Brainpool224r1  = BOTAN_ECGROUP_BRAINPOOL_224_R1
pattern Brainpool256r1  = BOTAN_ECGROUP_BRAINPOOL_256_R1
pattern Brainpool320r1  = BOTAN_ECGROUP_BRAINPOOL_320_R1
pattern Brainpool384r1  = BOTAN_ECGROUP_BRAINPOOL_384_R1
pattern Brainpool512r1  = BOTAN_ECGROUP_BRAINPOOL_512_R1
pattern X962_p192v2     = BOTAN_ECGROUP_X962_P192_V2
pattern X962_p192v3     = BOTAN_ECGROUP_X962_P192_V3
pattern X962_p239v1     = BOTAN_ECGROUP_X962_P239_V1
pattern X962_p239v2     = BOTAN_ECGROUP_X962_P239_V2
pattern X962_p239v3     = BOTAN_ECGROUP_X962_P239_V3
pattern Gost_256A       = BOTAN_ECGROUP_GOST_256A
pattern Gost_512A       = BOTAN_ECGROUP_GOST_512A
pattern Frp256v1        = BOTAN_ECGROUP_FRP_256_V1
pattern Sm2p256v1       = BOTAN_ECGROUP_SM2_P256_V1

type DLGroupName = ByteString

pattern FFDHE_IETF_2048
    ,   FFDHE_IETF_3072
    ,   FFDHE_IETF_4096
    ,   FFDHE_IETF_6144
    ,   FFDHE_IETF_8192
    ,   MODP_IETF_1024
    ,   MODP_IETF_1536
    ,   MODP_IETF_2048
    ,   MODP_IETF_3072
    ,   MODP_IETF_4096
    ,   MODP_IETF_6144
    ,   MODP_IETF_8192
    ,   MODP_SRP_1024
    ,   MODP_SRP_1536
    ,   MODP_SRP_2048
    ,   MODP_SRP_3072
    ,   MODP_SRP_4096
    ,   MODP_SRP_6144
    ,   MODP_SRP_8192
    ,   DSA_JCE_1024
    ,   DSA_BOTAN_2048
    ,   DSA_BOTAN_3072
    ::  DLGroupName

pattern FFDHE_IETF_2048 = BOTAN_DLGROUP_FFDHE_IETF_2048
pattern FFDHE_IETF_3072 = BOTAN_DLGROUP_FFDHE_IETF_3072
pattern FFDHE_IETF_4096 = BOTAN_DLGROUP_FFDHE_IETF_4096
pattern FFDHE_IETF_6144 = BOTAN_DLGROUP_FFDHE_IETF_6144
pattern FFDHE_IETF_8192 = BOTAN_DLGROUP_FFDHE_IETF_8192
pattern MODP_IETF_1024  = BOTAN_DLGROUP_MODP_IETF_1024
pattern MODP_IETF_1536  = BOTAN_DLGROUP_MODP_IETF_1536
pattern MODP_IETF_2048  = BOTAN_DLGROUP_MODP_IETF_2048
pattern MODP_IETF_3072  = BOTAN_DLGROUP_MODP_IETF_3072
pattern MODP_IETF_4096  = BOTAN_DLGROUP_MODP_IETF_4096
pattern MODP_IETF_6144  = BOTAN_DLGROUP_MODP_IETF_6144
pattern MODP_IETF_8192  = BOTAN_DLGROUP_MODP_IETF_8192
pattern MODP_SRP_1024   = BOTAN_DLGROUP_MODP_SRP_1024
pattern MODP_SRP_1536   = BOTAN_DLGROUP_MODP_SRP_1536
pattern MODP_SRP_2048   = BOTAN_DLGROUP_MODP_SRP_2048
pattern MODP_SRP_3072   = BOTAN_DLGROUP_MODP_SRP_3072
pattern MODP_SRP_4096   = BOTAN_DLGROUP_MODP_SRP_4096
pattern MODP_SRP_6144   = BOTAN_DLGROUP_MODP_SRP_6144
pattern MODP_SRP_8192   = BOTAN_DLGROUP_MODP_SRP_8192
pattern DSA_JCE_1024    = BOTAN_DLGROUP_DSA_JCE_1024
pattern DSA_BOTAN_2048  = BOTAN_DLGROUP_DSA_BOTAN_2048
pattern DSA_BOTAN_3072  = BOTAN_DLGROUP_DSA_BOTAN_3072

{- |
Encoding Method for Encryption

WARNING: Name is not completely accurate, may be changed to PKEncryptParams
-}
type EMEName = ByteString

pattern EME_RAW
    ,   EME_PKCS1_v1_5
    ,   EME_OAEP
    :: EMEName

pattern EME_RAW = BOTAN_EME_RAW
pattern EME_PKCS1_v1_5 = BOTAN_EME_PKCS1_v1_5
pattern EME_OAEP = BOTAN_EME_OAEP

eme_raw :: EMEName
eme_raw = EME_RAW

eme_pkcs1_v1_5 :: EMEName
eme_pkcs1_v1_5 = EME_PKCS1_v1_5

eme_oaep :: HashName -> EMEName
eme_oaep h = EME_OAEP /$ h

-- TODO: OAEP with MGF, L
-- eme_oaep_mgf :: HashName -> MGFName -> EMEName
-- eme_oaep_mgf h m = EME_OAEP /$ h <> "," <> m

eme_hash :: HashName -> EMEName
eme_hash = id

eme_sm2EncParam :: HashName -> EMEName
eme_sm2EncParam h = h

type MGFName = ByteString

pattern MGF1
    :: MGFName

pattern MGF1 = BOTAN_MGF_MGF1

mgf1 :: HashName -> MGFName
mgf1 h = MGF1 /$ h

{- |
Encoding Method for Signature with Appendix

WARNING: Name is not completely accurate, may be changed to PKSignParams
-}
type EMSAName = ByteString

-- emsa_rsa :: 

emsa_emsa4 :: HashName -> EMSAName
emsa_emsa4 h = "EMSA4(" <> h <> ")"

emsa_ed25519Pure :: EMSAName
emsa_ed25519Pure = "Pure"

emsa_ed25519Prehashed :: EMSAName
emsa_ed25519Prehashed = "Ed25519ph"

emsa_ed25519GnuPG :: HashName -> EMSAName
emsa_ed25519GnuPG = emsa_hash

emsa_hash :: HashName -> EMSAName
emsa_hash = id

emsa_sm2SignParam :: ByteString -> HashName -> EMSAName
emsa_sm2SignParam uid h = uid <> "," <> h

-- emsa_xmss
-- emsa_dilithium

emsa_none :: EMSAName
emsa_none = ""

privKeyCreate :: ByteString -> ByteString -> RNG -> IO PrivKey
privKeyCreate name params rng = asCString name $ \ namePtr -> do
    asCString params $ \ paramsPtr -> do
        withRNG rng $ \ botanRNG -> do
            createPrivKey $ \ out -> botan_privkey_create
                out
                (ConstPtr namePtr)
                (ConstPtr paramsPtr)
                botanRNG

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withPrivKeyCreate :: ByteString -> ByteString -> RNG -> (PrivKey -> IO a) -> IO a
withPrivKeyCreate = mkWithTemp3 privKeyCreate privKeyDestroy

type CheckKeyFlags = Word32

pattern CheckKeyNormalTests
    ,   CheckKeyExpensiveTests
    ::  CheckKeyFlags
pattern CheckKeyNormalTests    = BOTAN_CHECK_KEY_NORMAL_TESTS
pattern CheckKeyExpensiveTests = BOTAN_CHECK_KEY_EXPENSIVE_TESTS

-- TODO: Probably catch -1 (INVALID_INPUT), return Bool
privKeyCheckKey :: PrivKey -> RNG -> CheckKeyFlags -> IO ()
privKeyCheckKey sk rng flags = withPrivKey sk $ \ skPtr -> do
    withRNG rng $ \ botanRNG -> do
        throwBotanIfNegative_ $ botan_privkey_check_key skPtr botanRNG flags

-- NOTE: Expectes PKCS #8 / PEM structure
-- botan_privkey_export -> null password? and botan_privkey_export_encrypted_... -> use a password?
-- NOTE: This is probably a bad implementation; null pointer and empty string are different
--  and unencrypted is not the same as encrypted with "" as a pasword
--  We'll fix this by having privKeyLoad and privKeyLoadEncrypted be separate functions
privKeyLoad :: ByteString -> ByteString -> IO PrivKey
privKeyLoad bits password = asBytesLen bits $ \ bitsPtr bitsLen -> do
    let asCStringNullable str act = if ByteString.null str
        then act nullPtr
        else asCString str act
    asCStringNullable password $ \ passwordPtr -> do
        createPrivKey $ \ out -> botan_privkey_load
            out
            (MkBotanRNG nullPtr)
            (ConstPtr bitsPtr)
            bitsLen
            (ConstPtr passwordPtr)

type PrivKeyExportFlags = Word32

pattern PrivKeyExportDER
    ,   PrivKeyExportPEM
    ::  PrivKeyExportFlags

pattern PrivKeyExportDER = BOTAN_PRIVKEY_EXPORT_FLAG_DER
pattern PrivKeyExportPEM = BOTAN_PRIVKEY_EXPORT_FLAG_PEM

-- NOTE: Different from allocBytesQuerying / INSUFFICIENT_BUFFER_SPACE
privKeyExport :: PrivKey -> PrivKeyExportFlags -> IO ByteString
privKeyExport sk flags = withPrivKey sk $ \ skPtr -> do
    alloca $ \szPtr -> do
        poke szPtr 0
        -- NOTE: Presumed be -1
        _ <- botan_privkey_export skPtr nullPtr szPtr flags
        sz <- peek szPtr
        allocBytes (fromIntegral sz) $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_privkey_export skPtr bytesPtr szPtr flags

privKeyAlgoName :: PrivKey -> IO ByteString
privKeyAlgoName = mkGetCString withPrivKey botan_privkey_algo_name

-- TODO:
-- privKeyExportEncryptedPBKDFMsec
--     :: PrivKey
--     -> RNG
--     -> ByteString   -- Passphrase
--     -> Word32       -- Msec runtime
--     -> ByteString   -- Cipher algo
--     -> ByteString   -- PBKDF algo
--     -> Word32       -- Flags
--     -> IO ByteString 
-- privKeyExportEncryptedPBKDFMsec = undefined

-- TODO:
-- privKeyExportEncryptedPBKDFIter
--     :: PrivKey
--     -> RNG
--     -> ByteString   -- Passphrase
--     -> CSize        -- Iterations
--     -> ByteString   -- Cipher algo
--     -> ByteString   -- PBKDF algo
--     -> Word32       -- Flags
--     -> IO ByteString 
-- privKeyExportEncryptedPBKDFIter = undefined

newtype PubKey = MkPubKey { getPubKeyForeignPtr :: ForeignPtr BotanPubKeyStruct }

newPubKey      :: BotanPubKey -> IO PubKey
withPubKey     :: PubKey -> (BotanPubKey -> IO a) -> IO a
pubKeyDestroy  :: PubKey -> IO ()
createPubKey   :: (Ptr BotanPubKey -> IO CInt) -> IO PubKey
(newPubKey, withPubKey, pubKeyDestroy, createPubKey, _)
    = mkBindings
        MkBotanPubKey runBotanPubKey
        MkPubKey getPubKeyForeignPtr
        botan_pubkey_destroy

type PubKeyName = ByteString

pubKeyLoad :: ByteString -> IO PubKey
pubKeyLoad = mkCreateObjectCBytesLen createPubKey botan_pubkey_load

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withPubKeyLoad :: ByteString -> (PubKey -> IO a) -> IO a
withPubKeyLoad = mkWithTemp1 pubKeyLoad pubKeyDestroy

privKeyExportPubKey :: PrivKey -> IO PubKey
privKeyExportPubKey = mkCreateObjectWith createPubKey withPrivKey botan_privkey_export_pubkey

type PubKeyExportFlags = PrivKeyExportFlags

pattern PubKeyExportDER
    ,   PubKeyExportPEM
    ::  PubKeyExportFlags

pattern PubKeyExportDER = PrivKeyExportDER
pattern PubKeyExportPEM = PrivKeyExportPEM

-- NOTE: Different from allocBytesQuerying / INSUFFICIENT_BUFFER_SPACE
pubKeyExport :: PubKey -> PubKeyExportFlags -> IO ByteString
pubKeyExport pk flags = withPubKey pk $ \ pkPtr -> do
    alloca $ \szPtr -> do
        poke szPtr 0
        -- NOTE: Presumed be -1
        _ <- botan_pubkey_export pkPtr nullPtr szPtr flags
        sz <- peek szPtr
        allocBytes (fromIntegral sz) $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_pubkey_export pkPtr bytesPtr szPtr flags

pubKeyAlgoName :: PubKey -> IO ByteString
pubKeyAlgoName = mkGetCString withPubKey botan_pubkey_algo_name

pubKeyCheckKey :: PubKey -> RNG -> CheckKeyFlags -> IO Bool
pubKeyCheckKey pk rng flags = withPubKey pk $ \ pkPtr -> do
    withRNG rng $ \ botanRNG -> do
        throwBotanCatchingSuccess $ botan_pubkey_check_key pkPtr botanRNG flags

-- Annoying - this mixes cint and csize
--  I need to consolidate getsize / getint
pubKeyEstimatedStrength :: PubKey -> IO Int
pubKeyEstimatedStrength pk = fromIntegral <$> mkGetSize withPubKey botan_pubkey_estimated_strength pk

pubKeyFingerprint :: PubKey -> HashName -> IO ByteString
pubKeyFingerprint pk algo = withPubKey pk $ \ pkPtr -> do
    asCString algo $ \ algoPtr -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_pubkey_fingerprint
            pkPtr
            (ConstPtr algoPtr)
            outPtr
            outLen

-- NOTE: Sets the MP
pubKeyGetField :: MP -> PubKey -> ByteString -> IO ()
pubKeyGetField mp pk field = withMP mp $ \ mpPtr -> do
    withPubKey pk $ \ pkPtr -> do
        asCString field $ \ fieldPtr -> do
            throwBotanIfNegative_ $ botan_pubkey_get_field
                mpPtr
                pkPtr
                (ConstPtr fieldPtr)

-- NOTE: Sets the MP
privKeyGetField :: MP -> PrivKey -> ByteString -> IO ()
privKeyGetField mp sk field = withMP mp $ \ mpPtr -> do
    withPrivKey sk $ \ skPtr -> do
        asCString field $ \ fieldPtr -> do
            throwBotanIfNegative_ $ botan_privkey_get_field
                mpPtr
                skPtr
                (ConstPtr fieldPtr)

-- Helpers

mkPrivKeyLoad1_name
    :: (Ptr BotanPrivKey -> BotanMP -> ConstPtr CChar -> IO BotanErrorCode)
    -> MP -> ByteString -> IO PrivKey
mkPrivKeyLoad1_name load a name = withMP a $ \ aPtr -> do
    asCString name $ \ namePtr -> do
        createPrivKey $ \ out -> load out aPtr (ConstPtr namePtr)

mkPrivKeyLoad3
    :: (Ptr BotanPrivKey -> BotanMP -> BotanMP -> BotanMP -> IO BotanErrorCode)
    -> MP -> MP -> MP -> IO PrivKey
mkPrivKeyLoad3 load a b c = withMany withMP [a,b,c] $ \ [aPtr,bPtr,cPtr] -> do
    createPrivKey $ \ out -> load out aPtr bPtr cPtr

mkPrivKeyLoad4
    :: (Ptr BotanPrivKey -> BotanMP -> BotanMP -> BotanMP -> BotanMP -> IO BotanErrorCode)
    -> MP -> MP -> MP -> MP -> IO PrivKey
mkPrivKeyLoad4 load a b c d = withMany withMP [a,b,c,d] $ \ [aPtr,bPtr,cPtr,dPtr] -> do
    createPrivKey $ \ out -> load out aPtr bPtr cPtr dPtr

--

mkPubKeyLoad2
    :: (Ptr BotanPubKey -> BotanMP -> BotanMP -> IO BotanErrorCode)
    -> MP -> MP -> IO PubKey
mkPubKeyLoad2 load a b = withMany withMP [a,b] $ \ [aPtr,bPtr] -> do
    createPubKey $ \ out -> load out aPtr bPtr

mkPubKeyLoad2_name
    :: (Ptr BotanPubKey -> BotanMP -> BotanMP -> ConstPtr CChar -> IO BotanErrorCode)
    -> MP -> MP -> ByteString -> IO PubKey
mkPubKeyLoad2_name load x y name = withMany withMP [x,y] $ \ [xPtr,yPtr] -> do
    asCString name $ \ namePtr -> do
        createPubKey $ \ out -> load out xPtr yPtr (ConstPtr namePtr)

mkPubKeyLoad3
    :: (Ptr BotanPubKey -> BotanMP -> BotanMP -> BotanMP -> IO BotanErrorCode)
    -> MP -> MP -> MP -> IO PubKey
mkPubKeyLoad3 load a b c = withMany withMP [a,b,c] $ \ [aPtr,bPtr,cPtr] -> do
    createPubKey $ \ out -> load out aPtr bPtr cPtr

mkPubKeyLoad4
    :: (Ptr BotanPubKey -> BotanMP -> BotanMP -> BotanMP -> BotanMP -> IO BotanErrorCode)
    -> MP -> MP -> MP -> MP -> IO PubKey
mkPubKeyLoad4 load a b c d = withMany withMP [a,b,c,d] $ \ [aPtr,bPtr,cPtr,dPtr] -> do
    createPubKey $ \ out -> load out aPtr bPtr cPtr dPtr
