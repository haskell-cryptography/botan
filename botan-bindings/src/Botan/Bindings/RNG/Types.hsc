{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.RNG.Types where

import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



data Botan_rng_struct

newtype {-# CTYPE "botan-3/botan/ffi.h" "botan_rng_t" #-} Botan_rng_t =
          Botan_rng_t (Ptr Botan_rng_struct)
