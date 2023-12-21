{-|
Module      : Botan.Bindings.X509
Description : X.509 Certificates and CRLs
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

A certificate is a binding between some identifying information
(called a subject) and a public key. This binding is asserted by
a signature on the certificate, which is placed there by some
authority (the issuer) that at least claims that it knows the
subject named in the certificate really “owns” the private key
corresponding to the public key in the certificate.

The major certificate format in use today is X.509v3, used for
instance in the Transport Layer Security (TLS) protocol.
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.X509 where

import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.View

#include <botan/ffi.h>

-- | Opaque X509Cert struct
data {-# CTYPE "botan/ffi.h" "struct botan_x509_cert_struct" #-} BotanX509CertStruct

-- | Botan X509Cert object
newtype {-# CTYPE "botan/ffi.h" "botan_x509_cert_t" #-} BotanX509Cert
    = MkBotanX509Cert { runBotanX509Cert :: Ptr BotanX509CertStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy a X509Cert instance
foreign import capi safe "botan/ffi.h &botan_x509_cert_destroy"
    botan_x509_cert_destroy
        :: FinalizerPtr BotanX509CertStruct

foreign import capi safe "botan/ffi.h botan_x509_cert_load"
    botan_x509_cert_load
        :: Ptr BotanX509Cert    -- ^ cert_obj
        -> ConstPtr Word8       -- ^ cert[]
        -> CSize                -- ^ cert_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_load_file"
    botan_x509_cert_load_file
        :: Ptr BotanX509Cert    -- ^ cert_obj
        -> ConstPtr CChar       -- ^ filename
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_dup"
    botan_x509_cert_dup
        :: Ptr BotanX509Cert    -- ^ new_cert
        -> BotanX509Cert        -- ^ cert
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_get_time_starts"
    botan_x509_cert_get_time_starts
        :: BotanX509Cert    -- ^ cert
        -> Ptr CChar        -- ^ out[]
        -> Ptr CSize        -- ^ out_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_get_time_expires"
    botan_x509_cert_get_time_expires
        :: BotanX509Cert    -- ^ cert
        -> Ptr CChar        -- ^ out[]
        -> Ptr CSize        -- ^ out_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_not_before"
    botan_x509_cert_not_before
        :: BotanX509Cert    -- ^ cert
        -> Ptr Word64       -- ^ time_since_epoch
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_not_after"
    botan_x509_cert_not_after
        :: BotanX509Cert    -- ^ cert
        -> Ptr Word64       -- ^ time_since_epoch
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_get_fingerprint"
    botan_x509_cert_get_fingerprint
        :: BotanX509Cert    -- ^ cert
        -> ConstPtr CChar   -- ^ hash
        -> Ptr Word8        -- ^ out[]
        -> Ptr CSize        -- ^ out_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_get_serial_number"
    botan_x509_cert_get_serial_number
        :: BotanX509Cert    -- ^ cert
        -> Ptr Word8        -- ^ out[]
        -> Ptr CSize        -- ^ out_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_get_authority_key_id"
    botan_x509_cert_get_authority_key_id
        :: BotanX509Cert    -- ^ cert
        -> Ptr Word8        -- ^ out[]
        -> Ptr CSize        -- ^ out_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_get_subject_key_id"
    botan_x509_cert_get_subject_key_id
        :: BotanX509Cert    -- ^ cert
        -> Ptr Word8        -- ^ out[]
        -> Ptr CSize        -- ^ out_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_get_public_key_bits"
    botan_x509_cert_get_public_key_bits
        :: BotanX509Cert    -- ^ cert
        -> Ptr Word8        -- ^ out[]
        -> Ptr CSize        -- ^ out_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_view_public_key_bits"
    botan_x509_cert_view_public_key_bits
        :: BotanX509Cert                        -- ^ cert
        -> BotanViewContext ctx                 -- ^ ctx
        -> FunPtr (BotanViewBinCallback ctx)    -- ^ view
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_get_public_key"
    botan_x509_cert_get_public_key
        :: BotanX509Cert    -- ^ cert
        -> Ptr BotanPubKey  -- ^ key
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_get_issuer_dn"
    botan_x509_cert_get_issuer_dn
        :: BotanX509Cert    -- ^ cert
        -> ConstPtr CChar   -- ^ key
        -> CSize            -- ^ index
        -> Ptr Word8        -- ^ out[]
        -> Ptr CSize        -- ^ out_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_get_subject_dn"
    botan_x509_cert_get_subject_dn
        :: BotanX509Cert    -- ^ cert
        -> ConstPtr CChar   -- ^ key
        -> CSize            -- ^ index
        -> Ptr Word8        -- ^ out[]
        -> Ptr CSize        -- ^ out_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_to_string"
    botan_x509_cert_to_string
        :: BotanX509Cert    -- ^ cert
        -> Ptr CChar        -- ^ out[]
        -> Ptr CSize        -- ^ out_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_cert_view_as_string"
    botan_x509_cert_view_as_string
        :: BotanX509Cert                        -- ^ cert
        -> BotanViewContext ctx                 -- ^ ctx
        -> FunPtr (BotanViewStrCallback ctx)    -- ^ view
        -> IO CInt

pattern NO_CONSTRAINTS
    ,   DIGITAL_SIGNATURE
    ,   NON_REPUDIATION
    ,   KEY_ENCIPHERMENT
    ,   DATA_ENCIPHERMENT
    ,   KEY_AGREEMENT
    ,   KEY_CERT_SIGN
    ,   CRL_SIGN
    ,   ENCIPHER_ONLY
    ,   DECIPHER_ONLY
    ::  (Eq a, Num a) => a
pattern NO_CONSTRAINTS    = #const NO_CONSTRAINTS
pattern DIGITAL_SIGNATURE = #const DIGITAL_SIGNATURE
pattern NON_REPUDIATION   = #const NON_REPUDIATION
pattern KEY_ENCIPHERMENT  = #const KEY_ENCIPHERMENT
pattern DATA_ENCIPHERMENT = #const DATA_ENCIPHERMENT
pattern KEY_AGREEMENT     = #const KEY_AGREEMENT
pattern KEY_CERT_SIGN     = #const KEY_CERT_SIGN
pattern CRL_SIGN          = #const CRL_SIGN
pattern ENCIPHER_ONLY     = #const ENCIPHER_ONLY
pattern DECIPHER_ONLY     = #const DECIPHER_ONLY

foreign import capi safe "botan/ffi.h botan_x509_cert_allowed_usage"
    botan_x509_cert_allowed_usage
        :: BotanX509Cert    -- ^ cert
        -> CUInt            -- ^ key_usage
        -> IO CInt

{- |
Check if the certificate matches the specified hostname via alternative name or CN match.
RFC 5280 wildcards also supported.
-}
foreign import capi safe "botan/ffi.h botan_x509_cert_hostname_match"
    botan_x509_cert_hostname_match
        :: BotanX509Cert    -- ^ cert
        -> ConstPtr CChar   -- ^ hostname
        -> IO CInt

{- |
Returns 0 if the validation was successful, 1 if validation failed,
and negative on error. A status code with details is written to
*validation_result

Intermediates or trusted lists can be null
Trusted path can be null
-}
foreign import capi safe "botan/ffi.h botan_x509_cert_verify"
    botan_x509_cert_verify
        :: Ptr CInt                 -- ^ validation_result
        -> BotanX509Cert            -- ^ cert
        -> ConstPtr BotanX509Cert   -- ^ intermediates
        -> CSize                    -- ^ intermediates_len
        -> ConstPtr BotanX509Cert   -- ^ trusted
        -> CSize                    -- ^ trusted_len
        -> ConstPtr CChar           -- ^ trusted_path
        -> CSize                    -- ^ required_strength
        -> ConstPtr CChar           -- ^ hostname
        -> Word64                   -- ^ reference_time
        -> IO CInt

{- |
Returns a pointer to a static character string explaining the status code,
or else NULL if unknown.
-}
foreign import capi safe "botan/ffi.h botan_x509_cert_validation_status"
    botan_x509_cert_validation_status
        :: CInt -- ^ code
        -> IO (ConstPtr CChar)

{-
X.509 CRL
-}
-- TODO: Move to X509.CRL

-- | Opaque X509CRL struct
data {-# CTYPE "botan/ffi.h" "struct botan_x509_crl_struct" #-} BotanX509CRLStruct

-- | Botan X509CRL object
newtype {-# CTYPE "botan/ffi.h" "botan_x509_crl_t" #-} BotanX509CRL
    = MkBotanX509CRL { runBotanX509CRL :: Ptr BotanX509CRLStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy a X509CRL instance
foreign import capi safe "botan/ffi.h &botan_x509_crl_destroy"
    botan_x509_crl_destroy
        :: FinalizerPtr BotanX509CRLStruct

foreign import capi safe "botan/ffi.h botan_x509_crl_load_file"
    botan_x509_crl_load_file
        :: Ptr BotanX509CRL -- ^ crl_obj
        -> ConstPtr CChar   -- ^ crl_path
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_x509_crl_load"
    botan_x509_crl_load
        :: Ptr BotanX509CRL -- ^ crl_obj
        -> ConstPtr Word8   -- ^ crl_bits[]
        -> CSize            -- ^ crl_bits_len
        -> IO CInt

{- |
Given a CRL and a certificate,
check if the certificate is revoked on that particular CRL
-}
foreign import capi safe "botan/ffi.h botan_x509_is_revoked"
    botan_x509_is_revoked
        :: BotanX509CRL  -- ^ crl
        -> BotanX509Cert -- ^ cert
        -> IO CInt

{- |
Different flavor of `botan_x509_cert_verify`, supports revocation lists.
CRLs are passed as an array, same as intermediates and trusted CAs
-}
foreign import capi safe "botan/ffi.h botan_x509_cert_verify_with_crl"
    botan_x509_cert_verify_with_crl
        :: Ptr CInt                 -- ^ validation_result
        -> BotanX509Cert            -- ^ cert
        -> ConstPtr BotanX509Cert   -- ^ intermediates
        -> CSize                    -- ^ intermediates_len
        -> ConstPtr BotanX509Cert   -- ^ trusted
        -> CSize                    -- ^ trusted_len
        -> ConstPtr BotanX509CRL    -- ^ crls
        -> CSize                    -- ^ crls_len
        -> ConstPtr CChar           -- ^ trusted_path
        -> CSize                    -- ^ required_strength
        -> ConstPtr CChar           -- ^ hostname
        -> Word64                   -- ^ reference_time
        -> IO CInt
