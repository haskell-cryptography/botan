{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.Hash.Types where

import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



data Botan_hash_struct

newtype {-# CTYPE "botan-3/botan/ffi.h" "botan_hash_t" #-} Botan_hash_t =
          Botan_hash_t (Ptr Botan_hash_struct)
