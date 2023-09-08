{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.SRP6.Types where

import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



data Botan_srp6_server_session_struct

newtype {-# CTYPE "botan-3/botan/ffi.h" "botan_srp6_server_session_t" #-} Botan_srp6_server_session_t =
          Botan_srp6_server_session_t (Ptr Botan_srp6_server_session_struct)
