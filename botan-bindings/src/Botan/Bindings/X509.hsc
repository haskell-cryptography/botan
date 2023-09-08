{-|
Module      : Botan.Bindings.Version
Description : X.509 Certificates
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP
           , PatternSynonyms #-}

module Botan.Bindings.X509
  ( module Botan.Bindings.X509.Types
  , module Botan.Bindings.X509
  ) where

import           Botan.Bindings.PubKey.Types
import           Botan.Bindings.View
import           Botan.Bindings.X509.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_x509_cert_load"
  botan_x509_cert_load
    :: Ptr Botan_x509_cert_t -- ^ cert_obj
    -> ConstPtr Word8        -- ^ cert[]
    -> CSize                 -- ^ cert_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_load_file"
  botan_x509_cert_load_file
    :: Ptr Botan_x509_cert_t -- ^ cert_obj
    -> ConstPtr CChar        -- ^ filename
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_destroy"
  botan_x509_cert_destroy
    :: Botan_x509_cert_t -- ^ cert
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_dup"
  botan_x509_cert_dup
    :: Ptr Botan_x509_cert_t -- ^ new_cert
    -> Botan_x509_cert_t     -- ^ cert
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_get_time_starts"
  botan_x509_cert_get_time_starts
    :: Botan_x509_cert_t -- ^ cert
    -> Ptr CChar         -- ^ out[]
    -> Ptr CSize         -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_get_time_expires"
  botan_x509_cert_get_time_expires
    :: Botan_x509_cert_t -- ^ cert
    -> Ptr CChar         -- ^ out[]
    -> Ptr CSize         -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_not_before"
  botan_x509_cert_not_before
    :: Botan_x509_cert_t -- ^ cert
    -> Ptr Word64        -- ^ time_since_epoch
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_not_after"
  botan_x509_cert_not_after
    :: Botan_x509_cert_t -- ^ cert
    -> Ptr Word64        -- ^ time_since_epoch
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_get_fingerprint"
  botan_x509_cert_get_fingerprint
    :: Botan_x509_cert_t -- ^ cert
    -> ConstPtr CChar    -- ^ hash
    -> Ptr Word8         -- ^ out[]
    -> Ptr CSize         -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_get_serial_number"
  botan_x509_cert_get_serial_number
    :: Botan_x509_cert_t -- ^ cert
    -> Ptr Word8         -- ^ out[]
    -> Ptr CSize         -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_get_authority_key_id"
  botan_x509_cert_get_authority_key_id
    :: Botan_x509_cert_t -- ^ cert
    -> Ptr Word8         -- ^ out[]
    -> Ptr CSize         -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_get_subject_key_id"
  botan_x509_cert_get_subject_key_id
    :: Botan_x509_cert_t -- ^ cert
    -> Ptr Word8         -- ^ out[]
    -> Ptr CSize         -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_get_public_key_bits"
  botan_x509_cert_get_public_key_bits
    :: Botan_x509_cert_t -- ^ cert
    -> Ptr Word8         -- ^ out[]
    -> Ptr CSize         -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_view_public_key_bits"
  botan_x509_cert_view_public_key_bits
    :: Botan_x509_cert_t        -- ^ cert
    -> Botan_view_ctx           -- ^ ctx
    -> FunPtr Botan_view_bin_fn -- ^ view
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_get_public_key"
  botan_x509_cert_get_public_key
    :: Botan_x509_cert_t  -- ^ cert
    -> Ptr Botan_pubkey_t -- ^ key
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_get_issuer_dn"
  botan_x509_cert_get_issuer_dn
    :: Botan_x509_cert_t -- ^ cert
    -> ConstPtr CChar    -- ^ key
    -> CSize             -- ^ index
    -> Ptr Word8         -- ^ out[]
    -> Ptr CSize         -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_get_subject_dn"
  botan_x509_cert_get_subject_dn
    :: Botan_x509_cert_t -- ^ cert
    -> ConstPtr CChar    -- ^ key
    -> CSize             -- ^ index
    -> Ptr Word8         -- ^ out[]
    -> Ptr CSize         -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_to_string"
  botan_x509_cert_to_string
    :: Botan_x509_cert_t -- ^ cert
    -> Ptr CChar         -- ^ out[]
    -> Ptr CSize         -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_view_as_string"
  botan_x509_cert_view_as_string
    :: Botan_x509_cert_t        -- ^ cert
    -> Botan_view_ctx           -- ^ ctx
    -> FunPtr Botan_view_str_fn -- ^ view
    -> IO CInt

pattern NO_CONSTRAINTS
      , DIGITAL_SIGNATURE
      , NON_REPUDIATION
      , KEY_ENCIPHERMENT
      , DATA_ENCIPHERMENT
      , KEY_AGREEMENT
      , KEY_CERT_SIGN
      , CRL_SIGN
      , ENCIPHER_ONLY
      , DECIPHER_ONLY
     :: (Eq a, Num a) => a
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

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_allowed_usage"
  botan_x509_cert_allowed_usage
    :: Botan_x509_cert_t -- ^ cert
    -> CUInt             -- ^ key_usage
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_hostname_match"
  botan_x509_cert_hostname_match
    :: Botan_x509_cert_t -- ^ cert
    -> ConstPtr CChar    -- ^ hostname
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_verify"
  botan_x509_cert_verify
    :: Ptr CInt                   -- ^ validation_result
    -> Botan_x509_cert_t          -- ^ cert
    -> ConstPtr Botan_x509_cert_t -- ^ intermediates
    -> CSize                      -- ^ intermediates_len
    -> ConstPtr Botan_x509_cert_t -- ^ trusted
    -> CSize                      -- ^ trusted_len
    -> ConstPtr CChar             -- ^ trusted_path
    -> CSize                      -- ^ required_strength
    -> ConstPtr CChar             -- ^ hostname
    -> Word64                     -- ^ reference_time
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_validation_status"
  botan_x509_cert_validation_status
    :: CInt -- ^ code
    -> IO (ConstPtr CChar)
