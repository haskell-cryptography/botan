{-|
Module      : Botan.Bindings.KeyWrap
Description : Bcrypt password hashing
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

NIST specifies two mechanisms for wrapping (encrypting) symmetric keys
using another key. The first (and older, more widely supported) method
requires the input be a multiple of 8 bytes long. The other allows any
length input, though only up to 2**32 bytes.

These algorithms are described in NIST SP 800-38F, and RFCs 3394 and 5649.

These functions take an arbitrary 128-bit block cipher. NIST only allows
these functions with AES, but any 128-bit cipher will do and some other
implementations (such as in OpenSSL) do also allow other ciphers.

Use AES for best interop.
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.KeyWrap where

import           Botan.Bindings.Prelude

foreign import capi safe "botan/ffi.h botan_nist_kw_enc"
    botan_nist_kw_enc
        :: ConstPtr CChar -- ^ __cipher_algo__
        -> CInt           -- ^ __padded__
        -> ConstPtr Word8 -- ^ __key[]__
        -> CSize          -- ^ __key_len__
        -> ConstPtr Word8 -- ^ __kek[]__
        -> CSize          -- ^ __kek_len__
        -> Ptr Word8      -- ^ __wrapped_key[]__
        -> Ptr CSize      -- ^ __wrapped_key_len__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_nist_kw_dec"
    botan_nist_kw_dec
        :: ConstPtr CChar -- ^ __cipher_algo__
        -> CInt           -- ^ __padded__
        -> ConstPtr Word8 -- ^ __wrapped_key[]__
        -> CSize          -- ^ __wrapped_key_len__
        -> ConstPtr Word8 -- ^ __kek[]__
        -> CSize          -- ^ __kek_len__
        -> Ptr Word8      -- ^ __key[]__
        -> Ptr CSize      -- ^ __key_len__
        -> IO CInt
