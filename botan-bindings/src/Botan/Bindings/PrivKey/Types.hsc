{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.PrivKey.Types where

import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



data Botan_privkey_struct

newtype {-# CTYPE "botan-3/botan/ffi.h" "botan_privkey_t" #-} Botan_privkey_t =
          Botan_privkey_t (Ptr Botan_privkey_struct)
