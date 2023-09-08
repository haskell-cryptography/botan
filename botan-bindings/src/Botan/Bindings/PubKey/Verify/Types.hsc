{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PubKey.Verify.Types where

import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



data Botan_pk_op_verify_struct

newtype {-# CTYPE "botan-3/botan/ffi.h" "botan_pk_op_verify_t" #-} Botan_pk_op_verify_t =
          Botan_pk_op_verify_t (Ptr Botan_pk_op_verify_struct)
