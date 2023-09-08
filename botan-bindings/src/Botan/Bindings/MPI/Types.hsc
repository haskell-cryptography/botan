{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.MPI.Types where

import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



data Botan_mp_struct

newtype {-# CType "botan-3/botan/ffi.h" "botan_mp_t" #-} Botan_mp_t =
          Botan_mp_t (Ptr Botan_mp_struct)
