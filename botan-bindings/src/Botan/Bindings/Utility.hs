{-|
Module      : Botan.Bindings.Utility
Description : Utility functions
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

This module is based on the [Utility
Functions](https://botan.randombit.net/handbook/api_ref/ffi.html#utility-functions)
section of the C Botan FFI documentation.
-}


module Botan.Bindings.Utility (
    Safe.botan_constant_time_compare
  , Safe.botan_scrub_mem
  , Types.bOTAN_FFI_HEX_LOWER_CASE
  , Safe.botan_hex_encode
  , Safe.botan_hex_decode
  , Safe.botan_base64_encode
  , Safe.botan_base64_decode
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.Safe as Safe
