{-|
Module      : Botan.Bindings.PubKey
Description : Public key cryptography
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE OverloadedStrings #-}

module Botan.Bindings.PubKey (
    Types.Botan_privkey_t (..)
  , Types.Botan_privkey_struct
  , Safe.botan_pk_op_decrypt_destroy
  , botan_privkey_destroy_ptr
  , Safe.botan_privkey_create
  , Types.bOTAN_CHECK_KEY_EXPENSIVE_TESTS
  , Safe.botan_privkey_check_key
  , botan_privkey_load
  , Types.bOTAN_PRIVKEY_EXPORT_FLAG_DER
  , Types.bOTAN_PRIVKEY_EXPORT_FLAG_PEM
  , Safe.botan_privkey_export
  , Safe.botan_privkey_view_der
  , Safe.botan_privkey_view_pem
  , Safe.botan_privkey_algo_name
  , Safe.botan_privkey_export_encrypted_pbkdf_msec
  , Safe.botan_privkey_export_encrypted_pbkdf_iter
  , Safe.botan_privkey_view_encrypted_der
  , Safe.botan_privkey_view_encrypted_der_timed
  , Safe.botan_privkey_view_encrypted_pem
  , Safe.botan_privkey_view_encrypted_pem_timed
  , Safe.botan_privkey_get_field
  , Types.Botan_pubkey_t (..)
  , Types.Botan_pubkey_struct
  , Safe.botan_pubkey_destroy
  , botan_pubkey_destroy_ptr
  , Safe.botan_privkey_export_pubkey
  , botan_pubkey_load
  , Safe.botan_pubkey_export
  , Safe.botan_pubkey_view_der
  , Safe.botan_pubkey_view_pem
  , Safe.botan_pubkey_algo_name
  , Safe.botan_pubkey_check_key
  , Safe.botan_pubkey_estimated_strength
  , Safe.botan_pubkey_fingerprint
  , Safe.botan_pubkey_get_field
  , Safe.botan_pubkey_view_ec_public_point

  , pattern BOTAN_PK_RSA
  , pattern BOTAN_PK_SM2
  , pattern BOTAN_PK_ELGAMAL
  , pattern BOTAN_PK_DSA
  , pattern BOTAN_PK_ECDSA
  , pattern BOTAN_PK_ECKCDSA
  , pattern BOTAN_PK_ECGDSA
  , pattern BOTAN_PK_GOST_34_10
  , pattern BOTAN_PK_ED25519
  , pattern BOTAN_PK_XMSS
  , pattern BOTAN_PK_DH
  , pattern BOTAN_PK_ECDH
  , pattern BOTAN_PK_CURVE25519
  , pattern BOTAN_PK_DILITHIUM
  , pattern BOTAN_PK_KYBER
  , pattern BOTAN_PK_MCELIECE

  , pattern BOTAN_XMSS_SHA2_10_256
  , pattern BOTAN_XMSS_SHA2_16_256
  , pattern BOTAN_XMSS_SHA2_20_256
  , pattern BOTAN_XMSS_SHA2_10_512
  , pattern BOTAN_XMSS_SHA2_16_512
  , pattern BOTAN_XMSS_SHA2_20_512
  , pattern BOTAN_XMSS_SHAKE_10_256
  , pattern BOTAN_XMSS_SHAKE_16_256
  , pattern BOTAN_XMSS_SHAKE_20_256
  , pattern BOTAN_XMSS_SHAKE_10_512
  , pattern BOTAN_XMSS_SHAKE_16_512
  , pattern BOTAN_XMSS_SHAKE_20_512

  , pattern BOTAN_ECGROUP_SECP_160_K1
  , pattern BOTAN_ECGROUP_SECP_160_R1
  , pattern BOTAN_ECGROUP_SECP_160_R2
  , pattern BOTAN_ECGROUP_SECP_192_K1
  , pattern BOTAN_ECGROUP_SECP_192_R1
  , pattern BOTAN_ECGROUP_SECP_224_K1
  , pattern BOTAN_ECGROUP_SECP_224_R1
  , pattern BOTAN_ECGROUP_SECP_256_K1
  , pattern BOTAN_ECGROUP_SECP_256_R1
  , pattern BOTAN_ECGROUP_SECP_384_R1
  , pattern BOTAN_ECGROUP_SECP_521_R1
  , pattern BOTAN_ECGROUP_BRAINPOOL_160_R1
  , pattern BOTAN_ECGROUP_BRAINPOOL_192_R1
  , pattern BOTAN_ECGROUP_BRAINPOOL_224_R1
  , pattern BOTAN_ECGROUP_BRAINPOOL_256_R1
  , pattern BOTAN_ECGROUP_BRAINPOOL_320_R1
  , pattern BOTAN_ECGROUP_BRAINPOOL_384_R1
  , pattern BOTAN_ECGROUP_BRAINPOOL_512_R1
  , pattern BOTAN_ECGROUP_X962_P192_V2
  , pattern BOTAN_ECGROUP_X962_P192_V3
  , pattern BOTAN_ECGROUP_X962_P239_V1
  , pattern BOTAN_ECGROUP_X962_P239_V2
  , pattern BOTAN_ECGROUP_X962_P239_V3
  , pattern BOTAN_ECGROUP_GOST_256A
  , pattern BOTAN_ECGROUP_GOST_512A
  , pattern BOTAN_ECGROUP_FRP_256_V1
  , pattern BOTAN_ECGROUP_SM2_P256_V1

  , pattern BOTAN_DLGROUP_FFDHE_IETF_2048
  , pattern BOTAN_DLGROUP_FFDHE_IETF_3072
  , pattern BOTAN_DLGROUP_FFDHE_IETF_4096
  , pattern BOTAN_DLGROUP_FFDHE_IETF_6144
  , pattern BOTAN_DLGROUP_FFDHE_IETF_8192
  , pattern BOTAN_DLGROUP_MODP_IETF_1024
  , pattern BOTAN_DLGROUP_MODP_IETF_1536
  , pattern BOTAN_DLGROUP_MODP_IETF_2048
  , pattern BOTAN_DLGROUP_MODP_IETF_3072
  , pattern BOTAN_DLGROUP_MODP_IETF_4096
  , pattern BOTAN_DLGROUP_MODP_IETF_6144
  , pattern BOTAN_DLGROUP_MODP_IETF_8192
  , pattern BOTAN_DLGROUP_MODP_SRP_1024
  , pattern BOTAN_DLGROUP_MODP_SRP_1536
  , pattern BOTAN_DLGROUP_MODP_SRP_2048
  , pattern BOTAN_DLGROUP_MODP_SRP_3072
  , pattern BOTAN_DLGROUP_MODP_SRP_4096
  , pattern BOTAN_DLGROUP_MODP_SRP_6144
  , pattern BOTAN_DLGROUP_MODP_SRP_8192
  , pattern BOTAN_DLGROUP_DSA_JCE_1024
  , pattern BOTAN_DLGROUP_DSA_BOTAN_2048
  , pattern BOTAN_DLGROUP_DSA_BOTAN_3072

  , pattern BOTAN_EME_RAW
  , pattern BOTAN_EME_PKCS1_v1_5
  , pattern BOTAN_EME_OAEP

  , pattern BOTAN_MGF_MGF1

  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.String (IsString)
import           Data.Word (Word8)
import           Foreign.C.Types (CChar, CInt, CSize)
import           Foreign.Ptr (FunPtr, Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_privkey_destroy_ptr :: FunPtr (Types.Botan_privkey_t -> IO CInt)
botan_privkey_destroy_ptr = FunPtr.botan_privkey_destroy

botan_privkey_load :: Ptr Types.Botan_privkey_t -> Types.Botan_rng_t -> ConstPtr Word8 -> CSize -> ConstPtr CChar -> IO CInt
botan_privkey_load = Safe.botan_privkey_load_wrapper

botan_pubkey_destroy_ptr :: FunPtr (Types.Botan_pubkey_t -> IO CInt)
botan_pubkey_destroy_ptr = FunPtr.botan_pubkey_destroy

botan_pubkey_load :: Ptr Types.Botan_pubkey_t -> ConstPtr Word8 -> CSize -> IO CInt
botan_pubkey_load = Safe.botan_pubkey_load_wrapper

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
