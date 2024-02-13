{-|
Module      : Botan.Bindings.PubKey
Description : Public key cryptography
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

Public key cryptography is a collection of techniques allowing
for encryption, signatures, and key agreement.
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey where

import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.RNG
import Botan.Bindings.View

#include <botan/ffi.h>

-- | Opaque PrivKey struct
data {-# CTYPE "botan/ffi.h" "struct botan_privkey_struct" #-} BotanPrivKeyStruct

-- | Botan PrivKey object
newtype {-# CTYPE "botan/ffi.h" "botan_privkey_t" #-} BotanPrivKey
    = MkBotanPrivKey { runBotanPrivKey :: Ptr BotanPrivKeyStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Frees all resources of the PrivKey object
foreign import capi safe "botan/ffi.h &botan_privkey_destroy"
    botan_privkey_destroy
        :: FinalizerPtr BotanPrivKeyStruct

pattern BOTAN_PK_RSA
    ,   BOTAN_PK_SM2
    ,   BOTAN_PK_ELGAMAL
    ,   BOTAN_PK_DSA
    ,   BOTAN_PK_ECDSA
    ,   BOTAN_PK_ECKCDSA
    ,   BOTAN_PK_ECGDSA
    ,   BOTAN_PK_GOST_34_10
    ,   BOTAN_PK_ED25519
    ,   BOTAN_PK_XMSS
    ,   BOTAN_PK_DH
    ,   BOTAN_PK_ECDH
    ,   BOTAN_PK_CURVE25519
    ,   BOTAN_PK_DILITHIUM
    ,   BOTAN_PK_KYBER
    -- ,   BOTAN_PK_SPHINCSPLUS
    ,   BOTAN_PK_MCELIECE
    ::  (Eq a, IsString a) => a

pattern BOTAN_PK_RSA            = "RSA"
pattern BOTAN_PK_SM2            = "SM2"
pattern BOTAN_PK_ELGAMAL        = "ElGamal"
pattern BOTAN_PK_DSA            = "DSA"
pattern BOTAN_PK_ECDSA          = "ECDSA"
pattern BOTAN_PK_ECKCDSA        = "ECKCDSA"
pattern BOTAN_PK_ECGDSA         = "ECGDSA"
pattern BOTAN_PK_GOST_34_10     = "GOST-34.10"
pattern BOTAN_PK_ED25519        = "Ed25519"
pattern BOTAN_PK_XMSS           = "XMSS"
pattern BOTAN_PK_DH             = "DH"
pattern BOTAN_PK_ECDH           = "ECDH"
pattern BOTAN_PK_CURVE25519     = "Curve25519"
pattern BOTAN_PK_DILITHIUM      = "Dilithium"
pattern BOTAN_PK_KYBER          = "Kyber"
-- pattern BOTAN_PK_SPHINCSPLUS    = "SPHINCS+"
pattern BOTAN_PK_MCELIECE       = "McEliece"

pattern BOTAN_XMSS_SHA2_10_256
    ,   BOTAN_XMSS_SHA2_16_256
    ,   BOTAN_XMSS_SHA2_20_256
    ,   BOTAN_XMSS_SHA2_10_512
    ,   BOTAN_XMSS_SHA2_16_512
    ,   BOTAN_XMSS_SHA2_20_512
    ,   BOTAN_XMSS_SHAKE_10_256
    ,   BOTAN_XMSS_SHAKE_16_256
    ,   BOTAN_XMSS_SHAKE_20_256
    ,   BOTAN_XMSS_SHAKE_10_512
    ,   BOTAN_XMSS_SHAKE_16_512
    ,   BOTAN_XMSS_SHAKE_20_512
    ::  (Eq a, IsString a) => a

pattern BOTAN_XMSS_SHA2_10_256 = "XMSS-SHA2_10_256"
pattern BOTAN_XMSS_SHA2_16_256 = "XMSS-SHA2_16_256"
pattern BOTAN_XMSS_SHA2_20_256 = "XMSS-SHA2_20_256"
pattern BOTAN_XMSS_SHA2_10_512 = "XMSS-SHA2_10_512"
pattern BOTAN_XMSS_SHA2_16_512 = "XMSS-SHA2_16_512"
pattern BOTAN_XMSS_SHA2_20_512 = "XMSS-SHA2_20_512"
pattern BOTAN_XMSS_SHAKE_10_256 = "XMSS-SHAKE_10_256"
pattern BOTAN_XMSS_SHAKE_16_256 = "XMSS-SHAKE_16_256"
pattern BOTAN_XMSS_SHAKE_20_256 = "XMSS-SHAKE_20_256"
pattern BOTAN_XMSS_SHAKE_10_512 = "XMSS-SHAKE_10_512"
pattern BOTAN_XMSS_SHAKE_16_512 = "XMSS-SHAKE_16_512"
pattern BOTAN_XMSS_SHAKE_20_512 = "XMSS-SHAKE_20_512"

pattern BOTAN_ECGROUP_SECP_160_K1
    ,   BOTAN_ECGROUP_SECP_160_R1
    ,   BOTAN_ECGROUP_SECP_160_R2
    ,   BOTAN_ECGROUP_SECP_192_K1
    ,   BOTAN_ECGROUP_SECP_192_R1
    ,   BOTAN_ECGROUP_SECP_224_K1
    ,   BOTAN_ECGROUP_SECP_224_R1
    ,   BOTAN_ECGROUP_SECP_256_K1
    ,   BOTAN_ECGROUP_SECP_256_R1
    ,   BOTAN_ECGROUP_SECP_384_R1
    ,   BOTAN_ECGROUP_SECP_521_R1
    ,   BOTAN_ECGROUP_BRAINPOOL_160_R1
    ,   BOTAN_ECGROUP_BRAINPOOL_192_R1
    ,   BOTAN_ECGROUP_BRAINPOOL_224_R1
    ,   BOTAN_ECGROUP_BRAINPOOL_256_R1
    ,   BOTAN_ECGROUP_BRAINPOOL_320_R1
    ,   BOTAN_ECGROUP_BRAINPOOL_384_R1
    ,   BOTAN_ECGROUP_BRAINPOOL_512_R1
    ,   BOTAN_ECGROUP_X962_P192_V2
    ,   BOTAN_ECGROUP_X962_P192_V3
    ,   BOTAN_ECGROUP_X962_P239_V1
    ,   BOTAN_ECGROUP_X962_P239_V2
    ,   BOTAN_ECGROUP_X962_P239_V3
    ,   BOTAN_ECGROUP_GOST_256A
    ,   BOTAN_ECGROUP_GOST_512A
    ,   BOTAN_ECGROUP_FRP_256_V1
    ,   BOTAN_ECGROUP_SM2_P256_V1
    ::  (Eq a, IsString a) => a

pattern BOTAN_ECGROUP_SECP_160_K1 = "secp160k1"
pattern BOTAN_ECGROUP_SECP_160_R1 = "secp160r1"
pattern BOTAN_ECGROUP_SECP_160_R2 = "secp160r2"
pattern BOTAN_ECGROUP_SECP_192_K1 = "secp192k1"
pattern BOTAN_ECGROUP_SECP_192_R1 = "secp192r1"
pattern BOTAN_ECGROUP_SECP_224_K1 = "secp224k1"
pattern BOTAN_ECGROUP_SECP_224_R1 = "secp224r1"
pattern BOTAN_ECGROUP_SECP_256_K1 = "secp256k1"
pattern BOTAN_ECGROUP_SECP_256_R1 = "secp256r1"
pattern BOTAN_ECGROUP_SECP_384_R1 = "secp384r1"
pattern BOTAN_ECGROUP_SECP_521_R1 = "secp521r1"
pattern BOTAN_ECGROUP_BRAINPOOL_160_R1 = "brainpool160r1"
pattern BOTAN_ECGROUP_BRAINPOOL_192_R1 = "brainpool192r1"
pattern BOTAN_ECGROUP_BRAINPOOL_224_R1 = "brainpool224r1"
pattern BOTAN_ECGROUP_BRAINPOOL_256_R1 = "brainpool256r1"
pattern BOTAN_ECGROUP_BRAINPOOL_320_R1 = "brainpool320r1"
pattern BOTAN_ECGROUP_BRAINPOOL_384_R1 = "brainpool384r1"
pattern BOTAN_ECGROUP_BRAINPOOL_512_R1 = "brainpool512r1"
pattern BOTAN_ECGROUP_X962_P192_V2 = "x962_p192v2"
pattern BOTAN_ECGROUP_X962_P192_V3 = "x962_p192v3"
pattern BOTAN_ECGROUP_X962_P239_V1 = "x962_p239v1"
pattern BOTAN_ECGROUP_X962_P239_V2 = "x962_p239v2"
pattern BOTAN_ECGROUP_X962_P239_V3 = "x962_p239v3"
pattern BOTAN_ECGROUP_GOST_256A = "gost_256A"
pattern BOTAN_ECGROUP_GOST_512A = "gost_512A"
pattern BOTAN_ECGROUP_FRP_256_V1 = "frp256v1"
pattern BOTAN_ECGROUP_SM2_P256_V1 = "sm2p256v1"

pattern BOTAN_DLGROUP_FFDHE_IETF_2048
    ,   BOTAN_DLGROUP_FFDHE_IETF_3072
    ,   BOTAN_DLGROUP_FFDHE_IETF_4096
    ,   BOTAN_DLGROUP_FFDHE_IETF_6144
    ,   BOTAN_DLGROUP_FFDHE_IETF_8192
    ,   BOTAN_DLGROUP_MODP_IETF_1024
    ,   BOTAN_DLGROUP_MODP_IETF_1536
    ,   BOTAN_DLGROUP_MODP_IETF_2048
    ,   BOTAN_DLGROUP_MODP_IETF_3072
    ,   BOTAN_DLGROUP_MODP_IETF_4096
    ,   BOTAN_DLGROUP_MODP_IETF_6144
    ,   BOTAN_DLGROUP_MODP_IETF_8192
    ,   BOTAN_DLGROUP_MODP_SRP_1024
    ,   BOTAN_DLGROUP_MODP_SRP_1536
    ,   BOTAN_DLGROUP_MODP_SRP_2048
    ,   BOTAN_DLGROUP_MODP_SRP_3072
    ,   BOTAN_DLGROUP_MODP_SRP_4096
    ,   BOTAN_DLGROUP_MODP_SRP_6144
    ,   BOTAN_DLGROUP_MODP_SRP_8192
    ,   BOTAN_DLGROUP_DSA_JCE_1024
    ,   BOTAN_DLGROUP_DSA_BOTAN_2048
    ,   BOTAN_DLGROUP_DSA_BOTAN_3072
    ::  (Eq a, IsString a) => a

pattern BOTAN_DLGROUP_FFDHE_IETF_2048   = "ffdhe/ietf/2048"
pattern BOTAN_DLGROUP_FFDHE_IETF_3072   = "ffdhe/ietf/3072"
pattern BOTAN_DLGROUP_FFDHE_IETF_4096   = "ffdhe/ietf/4096"
pattern BOTAN_DLGROUP_FFDHE_IETF_6144   = "ffdhe/ietf/6144"
pattern BOTAN_DLGROUP_FFDHE_IETF_8192   = "ffdhe/ietf/8192"
pattern BOTAN_DLGROUP_MODP_IETF_1024    = "modp/ietf/1024"
pattern BOTAN_DLGROUP_MODP_IETF_1536    = "modp/ietf/1536"
pattern BOTAN_DLGROUP_MODP_IETF_2048    = "modp/ietf/2048"
pattern BOTAN_DLGROUP_MODP_IETF_3072    = "modp/ietf/3072"
pattern BOTAN_DLGROUP_MODP_IETF_4096    = "modp/ietf/4096"
pattern BOTAN_DLGROUP_MODP_IETF_6144    = "modp/ietf/6144"
pattern BOTAN_DLGROUP_MODP_IETF_8192    = "modp/ietf/8192"
pattern BOTAN_DLGROUP_MODP_SRP_1024     = "modp/srp/1024"
pattern BOTAN_DLGROUP_MODP_SRP_1536     = "modp/srp/1536"
pattern BOTAN_DLGROUP_MODP_SRP_2048     = "modp/srp/2048"
pattern BOTAN_DLGROUP_MODP_SRP_3072     = "modp/srp/3072"
pattern BOTAN_DLGROUP_MODP_SRP_4096     = "modp/srp/4096"
pattern BOTAN_DLGROUP_MODP_SRP_6144     = "modp/srp/6144"
pattern BOTAN_DLGROUP_MODP_SRP_8192     = "modp/srp/8192"
pattern BOTAN_DLGROUP_DSA_JCE_1024      = "dsa/jce/1024"
pattern BOTAN_DLGROUP_DSA_BOTAN_2048    = "dsa/botan/2048"
pattern BOTAN_DLGROUP_DSA_BOTAN_3072    = "dsa/botan/3072"

pattern BOTAN_EME_RAW
    ,   BOTAN_EME_PKCS1_v1_5
    ,   BOTAN_EME_OAEP
    :: (Eq a, IsString a) => a

pattern BOTAN_EME_RAW        = "Raw"
pattern BOTAN_EME_PKCS1_v1_5 = "PKCS1v15"
pattern BOTAN_EME_OAEP       = "OAEP"

pattern BOTAN_MGF_MGF1
    :: (Eq a, IsString a) => a

pattern BOTAN_MGF_MGF1 = "MGF1"

-- | Create a new private key
foreign import capi safe "botan/ffi.h botan_privkey_create"
    botan_privkey_create
        :: Ptr BotanPrivKey    -- ^ __key__: the new object will be placed here
        -> ConstPtr CChar      -- ^ __algo_name__: something like "RSA" or "ECDSA"
        -> ConstPtr CChar      -- ^ __algo_params__: is specific to the algorithm. For RSA, specifies
                               --   the modulus bit length. For ECC is the name of the curve.
        -> BotanRNG            -- ^ __rng__: a random number generator
        -> IO CInt

pattern BOTAN_CHECK_KEY_NORMAL_TESTS
    ,   BOTAN_CHECK_KEY_EXPENSIVE_TESTS
    ::  (Eq a, Num a) => a
pattern BOTAN_CHECK_KEY_NORMAL_TESTS    = 0
pattern BOTAN_CHECK_KEY_EXPENSIVE_TESTS = #const BOTAN_CHECK_KEY_EXPENSIVE_TESTS

-- | Check the validity of a private key
foreign import capi safe "botan/ffi.h botan_privkey_check_key"
    botan_privkey_check_key
        :: BotanPrivKey    -- ^ __key__
        -> BotanRNG        -- ^ __rng__
        -> Word32          -- ^ __flags__
        -> IO CInt

{- |
Input currently assumed to be PKCS #8 structure;
Set password to NULL to indicate no encryption expected
Starting in 2.8.0, the rng parameter is unused and may be set to null
-}
foreign import capi safe "botan/ffi.h botan_privkey_load"
    botan_privkey_load
        :: Ptr BotanPrivKey    -- ^ __key__
        -> BotanRNG            -- ^ __rng__
        -> ConstPtr Word8      -- ^ __bits[]__
        -> CSize               -- ^ __len__
        -> ConstPtr CChar      -- ^ __password__
        -> IO CInt

pattern BOTAN_PRIVKEY_EXPORT_FLAG_DER
    ,   BOTAN_PRIVKEY_EXPORT_FLAG_PEM
    ::  (Eq a, Num a) => a
pattern BOTAN_PRIVKEY_EXPORT_FLAG_DER = #const BOTAN_PRIVKEY_EXPORT_FLAG_DER
pattern BOTAN_PRIVKEY_EXPORT_FLAG_PEM = #const BOTAN_PRIVKEY_EXPORT_FLAG_PEM

{- |
On input *out_len is number of bytes in out[]
On output *out_len is number of bytes written (or required)
If out is not big enough no output is written, *out_len is set and 1 is returned
Returns 0 on success and sets
If some other error occurs a negative integer is returned.
-}
foreign import capi safe "botan/ffi.h botan_privkey_export"
    botan_privkey_export
        :: BotanPrivKey    -- ^ __key__
        -> Ptr Word8       -- ^ __out[]__
        -> Ptr CSize       -- ^ __out_len__
        -> Word32          -- ^ __flags__
        -> IO CInt

-- | View the private key's DER encoding
foreign import capi safe "botan/ffi.h botan_privkey_view_der"
    botan_privkey_view_der
        :: BotanPrivKey                         -- ^ __key__
        -> BotanViewContext ctx                 -- ^ __ctx__
        -> FunPtr (BotanViewBinCallback ctx)    -- ^ __view__
        -> IO CInt

-- | View the private key's PEM encoding
foreign import capi safe "botan/ffi.h botan_privkey_view_pem"
    botan_privkey_view_pem
        :: BotanPrivKey                         -- ^ __key__
        -> BotanViewContext ctx                 -- ^ __ctx__
        -> FunPtr (BotanViewStrCallback ctx)    -- ^ __view__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_privkey_algo_name"
    botan_privkey_algo_name
        :: BotanPrivKey    -- ^ __key__
        -> Ptr CChar       -- ^ __out[]__
        -> Ptr CSize       -- ^ __out_len__
        -> IO CInt

{- |
Export a private key, running PBKDF for specified amount of time

Note: starting in 3.0, the output iterations count is not provided
-}
foreign import capi safe "botan/ffi.h botan_privkey_export_encrypted_pbkdf_msec"
    botan_privkey_export_encrypted_pbkdf_msec
        :: BotanPrivKey    -- ^ __key__
        -> Ptr Word8       -- ^ __out[]__
        -> Ptr CSize       -- ^ __out_len__
        -> BotanRNG        -- ^ __rng__
        -> ConstPtr CChar  -- ^ __passphrase__
        -> Word32          -- ^ __pbkdf_msec_runtime__
        -> Ptr CSize       -- ^ __pbkdf_iterations_out__
        -> ConstPtr CChar  -- ^ __cipher_algo__
        -> ConstPtr CChar  -- ^ __pbkdf_algo__
        -> Word32          -- ^ __flags__
        -> IO CInt

-- | Export a private key using the specified number of iterations.
foreign import capi safe "botan/ffi.h botan_privkey_export_encrypted_pbkdf_iter"
    botan_privkey_export_encrypted_pbkdf_iter
        :: BotanPrivKey    -- ^ __key__
        -> Ptr Word8       -- ^ __out[]__
        -> Ptr CSize       -- ^ __out_len__
        -> BotanRNG        -- ^ __rng__
        -> ConstPtr CChar  -- ^ __passphrase__
        -> CSize           -- ^ __pbkdf_iterations__
        -> ConstPtr CChar  -- ^ __cipher_algo__
        -> ConstPtr CChar  -- ^ __pbkdf_algo__
        -> Word32          -- ^ __flags__
        -> IO CInt

{- |
View the encryption of a private key (binary DER encoding)

Set cipher_algo, pbkdf_algo to NULL to use defaults
Set pbkdf_iterations to 0 to use defaults
-}
foreign import capi safe "botan/ffi.h botan_privkey_view_encrypted_der"
    botan_privkey_view_encrypted_der
        :: BotanPrivKey                         -- ^ __key__
        -> BotanRNG                             -- ^ __rng__
        -> ConstPtr CChar                       -- ^ __passphrase__
        -> ConstPtr CChar                       -- ^ __cipher_algo__
        -> ConstPtr CChar                       -- ^ __pbkdf_algo__
        -> CSize                                -- ^ __pbkdf_iterations__
        -> BotanViewContext ctx                 -- ^ __ctx__
        -> FunPtr (BotanViewBinCallback ctx)    -- ^ __view__
        -> IO CInt

{- |
View the encryption of a private key (binary DER encoding)

Set cipher_algo, pbkdf_algo to NULL to use defaults
-}
foreign import capi safe "botan/ffi.h botan_privkey_view_encrypted_der_timed"
    botan_privkey_view_encrypted_der_timed
        :: BotanPrivKey                         -- ^ __key__
        -> BotanRNG                             -- ^ __rng__
        -> ConstPtr CChar                       -- ^ __passphrase__
        -> ConstPtr CChar                       -- ^ __cipher_algo__
        -> ConstPtr CChar                       -- ^ __pbkdf_algo__
        -> CSize                                -- ^ __pbkdf_runtime_msec__
        -> BotanViewContext ctx                 -- ^ __ctx__
        -> FunPtr (BotanViewBinCallback ctx)    -- ^ __view__
        -> IO CInt

{- |
View the encryption of a private key (PEM encoding)

Set cipher_algo, pbkdf_algo to NULL to use defaults
Set pbkdf_iterations to 0 to use defaults
-}
foreign import capi safe "botan/ffi.h botan_privkey_view_encrypted_pem"
    botan_privkey_view_encrypted_pem
        :: BotanPrivKey                         -- ^ __key__
        -> BotanRNG                             -- ^ __rng__
        -> ConstPtr CChar                       -- ^ __passphrase__
        -> ConstPtr CChar                       -- ^ __cipher_algo__
        -> ConstPtr CChar                       -- ^ __pbkdf_algo__
        -> CSize                                -- ^ __pbkdf_iterations__
        -> BotanViewContext ctx                 -- ^ __ctx__
        -> FunPtr (BotanViewStrCallback ctx)    -- ^ __view__
        -> IO CInt

{- |
View the encryption of a private key (PEM encoding)

Set cipher_algo, pbkdf_algo to NULL to use defaults
-}
foreign import capi safe "botan/ffi.h botan_privkey_view_encrypted_pem_timed"
    botan_privkey_view_encrypted_pem_timed
        :: BotanPrivKey                         -- ^ __key__
        -> BotanRNG                             -- ^ __rng__
        -> ConstPtr CChar                       -- ^ __passphrase__
        -> ConstPtr CChar                       -- ^ __cipher_algo__
        -> ConstPtr CChar                       -- ^ __pbkdf_algo__
        -> CSize                                -- ^ __pbkdf_runtime_msec__
        -> BotanViewContext ctx                 -- ^ __ctx__
        -> FunPtr (BotanViewStrCallback ctx)    -- ^ __view__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_privkey_get_field"
    botan_privkey_get_field
        :: BotanMP         -- ^ __output__
        -> BotanPrivKey    -- ^ __key__
        -> ConstPtr CChar  -- ^ __field_name__
        -> IO CInt


-- | Opaque PubKey struct
data {-# CTYPE "botan/ffi.h" "struct botan_pubkey_struct" #-} BotanPubKeyStruct

-- | Botan PubKey object
newtype {-# CTYPE "botan/ffi.h" "botan_pubkey_t" #-} BotanPubKey
    = MkBotanPubKey { runBotanPubKey :: Ptr BotanPubKeyStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Frees all resources of the PubKey object
foreign import capi safe "botan/ffi.h &botan_pubkey_destroy"
    botan_pubkey_destroy
        :: FinalizerPtr BotanPubKeyStruct

foreign import capi safe "botan/ffi.h botan_privkey_export_pubkey"
    botan_privkey_export_pubkey
        :: Ptr BotanPubKey    -- ^ __out__
        -> BotanPrivKey       -- ^ __in__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_load"
    botan_pubkey_load
        :: Ptr BotanPubKey     -- ^ __key__
        -> ConstPtr Word8      -- ^ __bits[]__
        -> CSize               -- ^ __len__
        -> IO CInt

pattern BOTAN_PUBKEY_EXPORT_FLAG_DER    -- ^ __BOTAN_PRIVKEY_EXPORT_FLAG_DER__ in disguise
    ,   BOTAN_PUBKEY_EXPORT_FLAG_PEM    -- ^ __BOTAN_PRIVKEY_EXPORT_FLAG_PEM__ in disguise
    ::  (Eq a, Num a) => a
pattern BOTAN_PUBKEY_EXPORT_FLAG_DER = BOTAN_PRIVKEY_EXPORT_FLAG_DER
pattern BOTAN_PUBKEY_EXPORT_FLAG_PEM = BOTAN_PRIVKEY_EXPORT_FLAG_PEM

foreign import capi safe "botan/ffi.h botan_pubkey_export"
    botan_pubkey_export
        :: BotanPubKey    -- ^ __key__
        -> Ptr Word8      -- ^ __out[]__
        -> Ptr CSize      -- ^ __out_len__
        -> Word32         -- ^ __flags__
        -> IO CInt

-- | View the public key's DER encoding
foreign import capi safe "botan/ffi.h botan_pubkey_view_der"
    botan_pubkey_view_der
        :: BotanPubKey                       -- ^ __key__
        -> BotanViewContext ctx              -- ^ __ctx__
        -> FunPtr (BotanViewBinCallback ctx) -- ^ __view__
        -> IO CInt
    
    -- | View the public key's PEM encoding
foreign import capi safe "botan/ffi.h botan_pubkey_view_pem"
    botan_pubkey_view_pem
        :: BotanPubKey                       -- ^ __key__
        -> BotanViewContext ctx              -- ^ __ctx__
        -> FunPtr (BotanViewStrCallback ctx) -- ^ __view__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_algo_name"
    botan_pubkey_algo_name
        :: BotanPubKey    -- ^ __key__
        -> Ptr CChar      -- ^ __out[]__
        -> Ptr CSize      -- ^ __out_len__
        -> IO CInt

-- | Returns 0 if key is valid, negative if invalid key or some other error
foreign import capi safe "botan/ffi.h botan_pubkey_check_key"
    botan_pubkey_check_key
        :: BotanPubKey    -- ^ __key__
        -> BotanRNG       -- ^ __rng__
        -> Word32         -- ^ __flags__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_estimated_strength"
    botan_pubkey_estimated_strength
        :: BotanPubKey    -- ^ __key__
        -> Ptr CSize      -- ^ __estimate__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_fingerprint"
    botan_pubkey_fingerprint
        :: BotanPubKey    -- ^ __key__
        -> ConstPtr CChar -- ^ __hash__
        -> Ptr Word8      -- ^ __out[]__
        -> Ptr CSize      -- ^ __out_len__
        -> IO CInt

-- | Get arbitrary named fields from public or private keys
foreign import capi safe "botan/ffi.h botan_pubkey_get_field"
    botan_pubkey_get_field
        :: BotanMP        -- ^ __output__
        -> BotanPubKey    -- ^ __key__
        -> ConstPtr CChar -- ^ __field_name__
        -> IO CInt

-- | View the uncompressed public point associated with the key
foreign import capi safe "botan/ffi.h botan_pubkey_view_ec_public_point"
    botan_pubkey_view_ec_public_point
        :: BotanPubKey                       -- ^ __key__
        -> BotanViewContext ctx              -- ^ __ctx__
        -> FunPtr (BotanViewBinCallback ctx) -- ^ __view__
        -> IO CInt
