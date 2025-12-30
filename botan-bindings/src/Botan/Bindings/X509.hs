{-|
Module      : Botan.Bindings.X509
Description : X.509 Certificates and CRLs
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.X509 (
    Types.Botan_x509_cert_t (..)
  , Types.Botan_x509_cert_struct
  , Safe.botan_x509_cert_destroy
  , botan_x509_cert_destroy_ptr
  , botan_x509_cert_load
  , Safe.botan_x509_cert_load_file
  , Safe.botan_x509_cert_dup
  , Safe.botan_x509_cert_get_time_starts
  , Safe.botan_x509_cert_get_time_expires
  , Safe.botan_x509_cert_not_before
  , Safe.botan_x509_cert_not_after
  , Safe.botan_x509_cert_get_fingerprint
  , Safe.botan_x509_cert_get_serial_number
  , Safe.botan_x509_cert_get_authority_key_id
  , Safe.botan_x509_cert_get_subject_key_id
  , Safe.botan_x509_cert_get_public_key_bits
  , Safe.botan_x509_cert_view_public_key_bits
  , Safe.botan_x509_cert_get_public_key
  , Safe.botan_x509_cert_get_issuer_dn
  , Safe.botan_x509_cert_get_subject_dn
  , Safe.botan_x509_cert_to_string
  , Safe.botan_x509_cert_view_as_string
  , Safe.botan_x509_cert_allowed_usage
  , Safe.botan_x509_cert_hostname_match
  , Safe.botan_x509_cert_verify
  , Safe.botan_x509_cert_validation_status
  , Types.Botan_x509_crl_t (..)
  , Types.Botan_x509_crl_struct
  , Safe.botan_x509_crl_destroy
  , botan_x509_crl_destroy_ptr
  , Safe.botan_x509_crl_load_file
  , botan_x509_crl_load
  , Safe.botan_x509_is_revoked
  , Safe.botan_x509_cert_verify_with_crl
  , Types.Botan_x509_cert_key_constraints(..)
  , pattern Types.NO_CONSTRAINTS
  , pattern Types.DIGITAL_SIGNATURE
  , pattern Types.NON_REPUDIATION
  , pattern Types.KEY_ENCIPHERMENT
  , pattern Types.DATA_ENCIPHERMENT
  , pattern Types.KEY_AGREEMENT
  , pattern Types.KEY_CERT_SIGN
  , pattern Types.CRL_SIGN
  , pattern Types.ENCIPHER_ONLY
  , pattern Types.DECIPHER_ONLY
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.Word (Word8)
import           Foreign.C.Types (CInt, CSize)
import           Foreign.Ptr (FunPtr, Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_x509_cert_destroy_ptr :: FunPtr (Types.Botan_x509_cert_t -> IO CInt)
botan_x509_cert_destroy_ptr = FunPtr.botan_x509_cert_destroy

botan_x509_crl_destroy_ptr :: FunPtr (Types.Botan_x509_crl_t -> IO CInt)
botan_x509_crl_destroy_ptr = FunPtr.botan_x509_crl_destroy

botan_x509_cert_load :: Ptr Types.Botan_x509_cert_t -> ConstPtr Word8 -> CSize -> IO CInt
botan_x509_cert_load = Safe.botan_x509_cert_load_wrapper

botan_x509_crl_load :: Ptr Types.Botan_x509_crl_t -> ConstPtr Word8 -> CSize -> IO CInt
botan_x509_crl_load = Safe.botan_x509_crl_load_wrapper
