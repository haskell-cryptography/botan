{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.Cipher.Types where

import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



data Botan_cipher_struct

newtype {-# CTYPE "botan-3/botan/ffi.h" "botan_cipher_t" #-} Botan_cipher_t =
          Botan_cipher_t (Ptr Botan_cipher_struct)
