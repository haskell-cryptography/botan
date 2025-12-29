{-|
Module      : Botan.Low.PubKey
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

{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}

module Botan.Low.PubKey (

  -- * Private keys
    PrivKey(..)
  , CheckKeyFlags(..)
  , checkKeyFlags
  , PrivKeyExportFlags(..)
  , privKeyExportFlags
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

  , PKName
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

  , DLGroupName
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

  , ECGroupName
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

  , XMSSName
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

  , EMEName
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

  , EMSAName
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

import           Botan.Bindings.ConstPtr (ConstPtr (..))
import           Botan.Bindings.MPI
import           Botan.Bindings.PubKey
import           Botan.Bindings.RNG
import           Botan.Low.Error.Internal
import           Botan.Low.Hash
import           Botan.Low.Internal.ByteString
import           Botan.Low.Internal.String
import           Botan.Low.Make
import           Botan.Low.MPI
import           Botan.Low.Remake
import           Botan.Low.RNG
import           Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import           Data.Word
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Marshal.Alloc
import           Foreign.Ptr
import           Foreign.Storable

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
> signer <- signCreate alicePrivKey (emsa_emsa4 SHA3) StandardFormatSignature
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
> verifier <- verifyCreate alicePubKey (emsa_emsa4 SHA3) StandardFormatSignature
> verifyUpdate verifier message
> verified <- verifyFinish verifier sig
> verified -- True

> NOTE: The same padding must be used for both encryption and decryption

-}

-- Associated types

-- /*
-- * Public/private key creation, import, ...
-- */

newtype PrivKey = MkPrivKey { getPrivKeyForeignPtr :: ForeignPtr BotanPrivKeyStruct }

withPrivKey     :: PrivKey -> (BotanPrivKey -> IO a) -> IO a
privKeyDestroy  :: PrivKey -> IO ()
createPrivKey   :: (Ptr BotanPrivKey -> IO CInt) -> IO PrivKey
(withPrivKey, privKeyDestroy, createPrivKey)
    = mkBindings
        MkBotanPrivKey (.runBotanPrivKey)
        MkPrivKey (.getPrivKeyForeignPtr)
        botan_privkey_destroy

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

-- | Create a new private key
privKeyCreate
    :: ByteString   -- ^ __algo_name__: something like "RSA" or "ECDSA"
    -> ByteString   -- ^ __algo_params__: is specific to the algorithm. For RSA, specifies
                    --   the modulus bit length. For ECC is the name of the curve.
    -> RNG          -- ^ __rng__: a random number generator
    -> IO PrivKey   -- ^ __key__: the new object will be placed here
privKeyCreate name params rng = asCString name $ \ namePtr -> do
    asCString params $ \ paramsPtr -> do
        withRNG rng $ \ botanRNG -> do
            createPrivKey $ \ out -> botan_privkey_create
                out
                (ConstPtr namePtr)
                (ConstPtr paramsPtr)
                botanRNG

data CheckKeyFlags =
    CheckKeyNormalTests
  | CheckKeyExpensiveTests

checkKeyFlags :: CheckKeyFlags -> Word32
checkKeyFlags CheckKeyNormalTests    = BOTAN_CHECK_KEY_NORMAL_TESTS
checkKeyFlags CheckKeyExpensiveTests = BOTAN_CHECK_KEY_EXPENSIVE_TESTS

-- TODO: Probably catch -1 (INVALID_INPUT), return Bool
-- | Check the validity of a private key
privKeyCheckKey
    :: PrivKey          -- ^ __key__
    -> RNG              -- ^ __rng__
    -> CheckKeyFlags    -- ^ __flags__
    -> IO ()
privKeyCheckKey sk rng flags = withPrivKey sk $ \ skPtr -> do
    withRNG rng $ \ botanRNG -> do
        throwBotanIfNegative_ $ botan_privkey_check_key skPtr botanRNG (checkKeyFlags flags)

-- NOTE: Expectes PKCS #8 / PEM structure
-- botan_privkey_export -> null password? and botan_privkey_export_encrypted_... -> use a password?
-- NOTE: This is probably a bad implementation; null pointer and empty string are different
--  and unencrypted is not the same as encrypted with "" as a pasword
--  We'll fix this by having privKeyLoad and privKeyLoadEncrypted be separate functions
{- |
Input currently assumed to be PKCS #8 structure;
Set password to NULL to indicate no encryption expected
Starting in 2.8.0, the rng parameter is unused and may be set to null
-}
privKeyLoad
    :: ByteString   -- ^ __bits[]__
    -> ByteString   -- ^ __password__
    -> IO PrivKey   -- ^ __key__
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

data PrivKeyExportFlags =
    PrivKeyExportDER
  | PrivKeyExportPEM

privKeyExportFlags :: PrivKeyExportFlags -> Word32
privKeyExportFlags PrivKeyExportDER = BOTAN_PRIVKEY_EXPORT_FLAG_DER
privKeyExportFlags PrivKeyExportPEM = BOTAN_PRIVKEY_EXPORT_FLAG_PEM

-- NOTE: Different from allocBytesQuerying / INSUFFICIENT_BUFFER_SPACE
{- |
On input *out_len is number of bytes in out[]
On output *out_len is number of bytes written (or required)
If out is not big enough no output is written, *out_len is set and 1 is returned
Returns 0 on success and sets
If some other error occurs a negative integer is returned.
-}
privKeyExport
    :: PrivKey              -- ^ __key__
    -> PrivKeyExportFlags   -- ^ __flags__
    -> IO ByteString        -- ^ __out[]__
privKeyExport sk flags = withPrivKey sk $ \ skPtr -> do
    alloca $ \szPtr -> do
        poke szPtr 0
        -- NOTE: Presumed be -1
        _ <- botan_privkey_export skPtr nullPtr szPtr (privKeyExportFlags flags)
        sz <- peek szPtr
        allocBytes (fromIntegral sz) $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_privkey_export skPtr bytesPtr szPtr (privKeyExportFlags flags)

-- TODO:
-- View the private key's DER encoding
-- privKeyViewDER
--         :: BotanPrivKey                         -- ^ __key__
--         -> BotanViewContext ctx                 -- ^ __ctx__
--         -> FunPtr (BotanViewBinCallback ctx)    -- ^ __view__
--         -> IO CInt

-- TODO:
-- View the private key's PEM encoding
-- privKeyViewPEM
--         :: BotanPrivKey                         -- ^ __key__
--         -> BotanViewContext ctx                 -- ^ __ctx__
--         -> FunPtr (BotanViewStrCallback ctx)    -- ^ __view__
--         -> IO CInt

privKeyAlgoName
    :: PrivKey          -- ^ __key__
    -> IO ByteString    -- ^ __out[]__
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

withPubKey     :: PubKey -> (BotanPubKey -> IO a) -> IO a
pubKeyDestroy  :: PubKey -> IO ()
createPubKey   :: (Ptr BotanPubKey -> IO CInt) -> IO PubKey
(withPubKey, pubKeyDestroy, createPubKey)
    = mkBindings
        MkBotanPubKey (.runBotanPubKey)
        MkPubKey (.getPubKeyForeignPtr)
        botan_pubkey_destroy

pubKeyLoad
    :: ByteString   -- ^ __bits[]__
    -> IO PubKey    -- ^ __key__
pubKeyLoad = mkCreateObjectCBytesLen createPubKey botan_pubkey_load

privKeyExportPubKey
    :: PrivKey      -- ^ __in__
    -> IO PubKey    -- ^ __out__
privKeyExportPubKey = mkCreateObjectWith createPubKey withPrivKey botan_privkey_export_pubkey

type PubKeyExportFlags = PrivKeyExportFlags


-- NOTE: Different from allocBytesQuerying / INSUFFICIENT_BUFFER_SPACE
pubKeyExport
    :: PubKey               -- ^ __key__
    -> PubKeyExportFlags    -- ^ __flags__
    -> IO ByteString        -- ^ __out[]__
pubKeyExport pk flags = withPubKey pk $ \ pkPtr -> do
    alloca $ \szPtr -> do
        poke szPtr 0
        -- NOTE: Presumed be -1
        _ <- botan_pubkey_export pkPtr nullPtr szPtr (privKeyExportFlags flags)
        sz <- peek szPtr
        allocBytes (fromIntegral sz) $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_pubkey_export pkPtr bytesPtr szPtr (privKeyExportFlags flags)


pubKeyAlgoName
    :: PubKey           -- ^ __key__
    -> IO ByteString    -- ^ __out[]__
pubKeyAlgoName = mkGetCString withPubKey botan_pubkey_algo_name

pubKeyCheckKey ::
     PubKey           -- ^ __key__
  -> RNG              -- ^ __rng__
  -> CheckKeyFlags    -- ^ __flags__
  -> IO Bool
pubKeyCheckKey pk rng flags =
    withPubKey pk $ \ pkPtr ->
    withRNG rng $ \ botanRNG ->
    throwBotanCatchingInvalidInput $ botan_pubkey_check_key pkPtr botanRNG (checkKeyFlags flags)

-- Annoying - this mixes cint and csize
--  I need to consolidate getsize / getint
pubKeyEstimatedStrength
    :: PubKey   -- ^ __key__
    -> IO Int   -- ^ __estimate__
pubKeyEstimatedStrength pk = mkGetSize withPubKey botan_pubkey_estimated_strength pk

pubKeyFingerprint
    :: PubKey           -- ^ __key__
    -> HashName         -- ^ __hash__
    -> IO ByteString    -- ^ __out[]__
pubKeyFingerprint pk algo = withPubKey pk $ \ pkPtr -> do
    asCString algo $ \ algoPtr -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_pubkey_fingerprint
            pkPtr
            (ConstPtr algoPtr)
            outPtr
            outLen

-- | Get arbitrary named fields from public or private keys
pubKeyGetField
    :: MP           -- ^ __output__
    -> PubKey       -- ^ __key__
    -> ByteString   -- ^ __field_name__
    -> IO ()
pubKeyGetField mp pk field = withMP mp $ \ mpPtr -> do
    withPubKey pk $ \ pkPtr -> do
        asCString field $ \ fieldPtr -> do
            throwBotanIfNegative_ $ botan_pubkey_get_field
                mpPtr
                pkPtr
                (ConstPtr fieldPtr)

-- | Get arbitrary named fields from public or private keys
privKeyGetField
    :: MP           -- ^ __output__
    -> PrivKey      -- ^ __key__
    -> ByteString   -- ^ __field_name__
    -> IO ()
privKeyGetField mp sk field = withMP mp $ \ mpPtr -> do
    withPrivKey sk $ \ skPtr -> do
        asCString field $ \ fieldPtr -> do
            throwBotanIfNegative_ $ botan_privkey_get_field
                mpPtr
                skPtr
                (ConstPtr fieldPtr)

-- Helpers

mkPrivKeyLoad1_name
    :: (Ptr BotanPrivKey -> BotanMP -> ConstPtr CChar -> IO CInt)
    -> MP -> ByteString -> IO PrivKey
mkPrivKeyLoad1_name load a name = withMP a $ \ aPtr -> do
    asCString name $ \ namePtr -> do
        createPrivKey $ \ out -> load out aPtr (ConstPtr namePtr)

mkPrivKeyLoad3
    :: (Ptr BotanPrivKey -> BotanMP -> BotanMP -> BotanMP -> IO CInt)
    -> MP -> MP -> MP -> IO PrivKey
mkPrivKeyLoad3 load a b c = withMany withMP [a,b,c] $ \case
    [aPtr,bPtr,cPtr] -> do
      createPrivKey $ \ out -> load out aPtr bPtr cPtr
    _ -> error "mkPrivKeyLoad3: impossible"

mkPrivKeyLoad4
    :: (Ptr BotanPrivKey -> BotanMP -> BotanMP -> BotanMP -> BotanMP -> IO CInt)
    -> MP -> MP -> MP -> MP -> IO PrivKey
mkPrivKeyLoad4 load a b c d = withMany withMP [a,b,c,d] $ \case
    [aPtr,bPtr,cPtr,dPtr] -> do
      createPrivKey $ \ out -> load out aPtr bPtr cPtr dPtr
    _ -> error "mkPrivKeyLoad4: impossible"

--

mkPubKeyLoad2
    :: (Ptr BotanPubKey -> BotanMP -> BotanMP -> IO CInt)
    -> MP -> MP -> IO PubKey
mkPubKeyLoad2 load a b = withMany withMP [a,b] $ \case
    [aPtr,bPtr] -> do
      createPubKey $ \ out -> load out aPtr bPtr
    _ -> error "mkPubKeyLoad2: impossible"

mkPubKeyLoad2_name
    :: (Ptr BotanPubKey -> BotanMP -> BotanMP -> ConstPtr CChar -> IO CInt)
    -> MP -> MP -> ByteString -> IO PubKey
mkPubKeyLoad2_name load x y name = withMany withMP [x,y] $ \case
    [xPtr,yPtr] -> do
      asCString name $ \ namePtr -> do
        createPubKey $ \ out -> load out xPtr yPtr (ConstPtr namePtr)
    _ -> error "mkPubKeyLoad2_name: impossible"

mkPubKeyLoad3
    :: (Ptr BotanPubKey -> BotanMP -> BotanMP -> BotanMP -> IO CInt)
    -> MP -> MP -> MP -> IO PubKey
mkPubKeyLoad3 load a b c = withMany withMP [a,b,c] $ \case
    [aPtr,bPtr,cPtr] -> do
      createPubKey $ \ out -> load out aPtr bPtr cPtr
    _ -> error "mkPubKeyLoad3: impossible"

mkPubKeyLoad4
    :: (Ptr BotanPubKey -> BotanMP -> BotanMP -> BotanMP -> BotanMP -> IO CInt)
    -> MP -> MP -> MP -> MP -> IO PubKey
mkPubKeyLoad4 load a b c d = withMany withMP [a,b,c,d] $ \case
    [aPtr,bPtr,cPtr,dPtr] -> do
      createPubKey $ \ out -> load out aPtr bPtr cPtr dPtr
    _ -> error "mkPubKeyLoad4: impossible"

withMany ::
     (forall a . object -> (cobject -> IO a) -> IO a)
  -> [object]
  -> ([cobject] -> IO b)
  -> IO b
withMany _withObject []         act = act []
withMany withObject  (obj:objs) act = withObject obj $ \ cobj -> withMany withObject objs (act . (cobj:))
