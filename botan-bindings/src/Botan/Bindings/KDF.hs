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

module Botan.Bindings.KDF where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

{-|
Derive a key

- \@param kdf_algo KDF algorithm, e.g., "SP800-56C"
- \@param out buffer holding the derived key, must be of length out_len
- \@param out_len the desired output length in bytes
- \@param secret the secret input
- \@param secret_len size of secret in bytes
- \@param salt a diversifier
- \@param salt_len size of salt in bytes
- \@param label purpose for the derived keying material
- \@param label_len size of label in bytes
- \@return 0 on success, a negative value on failure

@BOTAN_PUBLIC_API(2,0) int botan_kdf(const char* kdf_algo,
                        uint8_t out[], size_t out_len,
                        const uint8_t secret[], size_t secret_len,
                        const uint8_t salt[], size_t salt_len,
                        const uint8_t label[], size_t label_len);@
-}

foreign import ccall unsafe botan_kdf :: CString -> Ptr Word8 -> CSize -> Ptr Word8 -> CSize -> Ptr Word8 -> CSize -> Ptr Word8 -> CSize -> IO BotanErrorCode
