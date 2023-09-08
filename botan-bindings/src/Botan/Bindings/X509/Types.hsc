{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.X509.Types where

import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



data Botan_x509_cert_struct

newtype {-# CTYPE "botan-3/botan/ffi.h" "botan_x509_cert_t" #-} Botan_x509_cert_t =
          Botan_x509_cert_t (Ptr Botan_x509_cert_struct)
