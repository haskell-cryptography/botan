{-|
Module      : Botan.Bindings.KDF
Description : Key Derivation Functions (KDF)
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

Key derivation functions are used to turn some amount of shared
secret material into uniform random keys suitable for use with
symmetric algorithms. An example of an input which is useful for
a KDF is a shared secret created using Diffie-Hellman key agreement.

Typically a KDF is also used with a salt and a label. The salt should
be some random information which is available to all of the parties
that would need to use the KDF; this could be performed by setting
the salt to some kind of session identifier, or by having one of the
parties generate a random salt and including it in a message.

The label is used to bind the KDF output to some specific context. For
instance if you were using the KDF to derive a specific key referred to
as the “message key” in the protocol description, you might use a label
of “FooProtocol v2 MessageKey”. This labeling ensures that if you
accidentally use the same input key and salt in some other context, you
still use different keys in the two contexts.
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.KDF where

import Botan.Bindings.Prelude

-- | Derive a key
foreign import capi safe "botan/ffi.h botan_kdf"
    botan_kdf
        :: ConstPtr CChar  -- ^ kdf_algo KDF algorithm, e.g., "SP800-56C"
        -> Ptr Word8       -- ^ out[] buffer holding the derived key, must be of length out_len
        -> CSize           -- ^ out_len the desired output length in bytes
        -> ConstPtr Word8  -- ^ secret[] the secret input
        -> CSize           -- ^ secret_len size of secret in bytes
        -> ConstPtr Word8  -- ^ salt[] a diversifier
        -> CSize           -- ^ salt_len size of salt in bytes
        -> ConstPtr Word8  -- ^ label[] purpose for the derived keying material
        -> CSize           -- ^ label_len size of label in bytes
        -> IO CInt         -- ^ 0 on success, a negative value on failure
