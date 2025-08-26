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

pattern BOTAN_KDF_HKDF
    ,   BOTAN_KDF_HKDF_EXTRACT
    ,   BOTAN_KDF_HKDF_EXPAND
    ,   BOTAN_KDF_KDF2
    ,   BOTAN_KDF_KDF1_18033
    ,   BOTAN_KDF_KDF1
    ,   BOTAN_KDF_TLS_12_PRF
    ,   BOTAN_KDF_X9_42_PRF
    ,   BOTAN_KDF_SP800_108_COUNTER
    ,   BOTAN_KDF_SP800_108_FEEDBACK
    ,   BOTAN_KDF_SP800_108_PIPELINE
    ,   BOTAN_KDF_SP800_56A
    ,   BOTAN_KDF_SP800_56C
    :: (Eq a, IsString a) => a

-- NOTE: All KDFs take a HashName or HMAC(HashName) as an argument
pattern BOTAN_KDF_HKDF                = "HKDF"
pattern BOTAN_KDF_HKDF_EXTRACT        = "HKDF-Extract"
pattern BOTAN_KDF_HKDF_EXPAND         = "HKDF-Expand"
pattern BOTAN_KDF_KDF2                = "KDF2"
pattern BOTAN_KDF_KDF1_18033          = "KDF1-18033"
pattern BOTAN_KDF_KDF1                = "KDF1"
pattern BOTAN_KDF_TLS_12_PRF          = "TLS-12-PRF"
-- NOTE: X9_42_PRF is only supposed to take "SHA-1" as an argument
pattern BOTAN_KDF_X9_42_PRF           = "X9.42-PRF"
-- NOTE: SP800 inner content should also be wrapped in HMAC, eg:
--  BOTAN_KDF_SP800_56A \$ BOTAN_MAC_HMAC \$ someHash
pattern BOTAN_KDF_SP800_108_COUNTER   = "SP800-108-Counter"
pattern BOTAN_KDF_SP800_108_FEEDBACK  = "SP800-108-Feedback"
pattern BOTAN_KDF_SP800_108_PIPELINE  = "SP800-108-Pipeline"
pattern BOTAN_KDF_SP800_56A           = "SP800-56A"
pattern BOTAN_KDF_SP800_56C           = "SP800-56C"

-- | Derive a key
foreign import capi safe "botan/ffi.h botan_kdf"
    botan_kdf
        :: ConstPtr CChar  -- ^ __kdf_algo__: KDF algorithm, e.g., "SP800-56C"
        -> Ptr Word8       -- ^ __out[]__: buffer holding the derived key, must be of length out_len
        -> CSize           -- ^ __out_len__: the desired output length in bytes
        -> ConstPtr Word8  -- ^ __secret[]__: the secret input
        -> CSize           -- ^ __secret_len__: size of secret in bytes
        -> ConstPtr Word8  -- ^ __salt[]__: a diversifier
        -> CSize           -- ^ __salt_len__: size of salt in bytes
        -> ConstPtr Word8  -- ^ __label[]__: purpose for the derived keying material
        -> CSize           -- ^ __label_len__: size of label in bytes
        -> IO CInt         -- ^ 0 on success, a negative value on failure
