{-|
Module      : Botan.Bindings.Scrypt
Description : Scrypt password hashing
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Bindings.Scrypt where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

{-|
Derive a key using scrypt
Deprecated; use
botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

@BOTAN_DEPRECATED("Use botan_pwdhash")
BOTAN_PUBLIC_API(2,8) int
botan_scrypt(uint8_t out[], size_t out_len,
             const char* passphrase,
             const uint8_t salt[], size_t salt_len,
             size_t N, size_t r, size_t p);@
-}

