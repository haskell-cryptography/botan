{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.X509.CRL
  ( module Botan.Bindings.X509.CRL.Types
  , module Botan.Bindings.X509.CRL
  ) where

import           Botan.Bindings.X509.CRL.Types
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



foreign import capi "botan-3/botan/ffi.h botan_x509_crl_load_file"
  botan_x509_crl_load_file
    :: Ptr Botan_x509_crl_t -- ^ crl_obj
    -> ConstPtr CChar       -- ^ crl_path
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_crl_load"
  botan_x509_crl_load
    :: Ptr Botan_x509_crl_t -- ^ crl_obj
    -> ConstPtr Word8       -- ^ crl_bits[]
    -> CSize                -- ^ crl_bits_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_crl_destroy"
  botan_x509_crl_destroy
    :: Botan_x509_crl_t -- ^ crl
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_is_revoked"
  botan_x509_is_revoked
    :: Botan_x509_crl_t  -- ^ crl
    -> Botan_x509_cert_t -- ^ cert
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_x509_cert_verify_with_crl"
  botan_x509_cert_verify_with_crl
    :: Ptr CInt                   -- ^ validation_result
    -> Botan_x509_cert_t          -- ^ cert
    -> ConstPtr Botan_x509_cert_t -- ^ intermediates
    -> CSize                      -- ^ intermediates_len
    -> ConstPtr Botan_x509_cert_t -- ^ trusted
    -> CSize                      -- ^ trusted_len
    -> ConstPtr Botan_x509_crl_t  -- ^ crls
    -> CSize                      -- ^ crls_len
    -> ConstPtr CChar             -- ^ trusted_path
    -> CSize                      -- ^ required_strength
    -> ConstPtr CChar             -- ^ hostname
    -> Word64                     -- ^ reference_time
    -> IO CInt
