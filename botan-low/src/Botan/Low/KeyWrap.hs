{-|
Module      : Botan.Low.KeyWrap
Description : Bcrypt password hashing
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
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

module Botan.Low.KeyWrap where

import qualified Data.ByteString as ByteString

import Botan.Bindings.KeyWrap

import Botan.Low.BlockCipher
import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

nistKeyWrapEncodeIO :: BlockCipherName -> Int -> ByteString -> ByteString -> IO ByteString
nistKeyWrapEncodeIO algo padded key kek = asCString algo $ \ algoPtr -> do
    asBytesLen key $ \ keyPtr keyLen -> do
        asBytesLen kek $ \ kekPtr kekLen -> do
            allocBytesQuerying $ \ wrappedKeyPtr wrappedKeyLen -> botan_nist_kw_enc
                algoPtr
                (fromIntegral padded)
                keyPtr
                keyLen
                kekPtr
                kekLen
                wrappedKeyPtr
                wrappedKeyLen

nistKeyWrapDecodeIO :: BlockCipherName -> Int -> ByteString -> ByteString -> IO ByteString
nistKeyWrapDecodeIO algo padded wrappedKey kek = asCString algo $ \ algoPtr -> do
    asBytesLen wrappedKey $ \ wrappedKeyPtr wrappedKeyLen -> do
        asBytesLen kek $ \ kekPtr kekLen -> do
            allocBytesQuerying $ \ keyPtr keyLen -> botan_nist_kw_dec
                algoPtr
                (fromIntegral padded)
                wrappedKeyPtr
                wrappedKeyLen
                kekPtr
                kekLen
                keyPtr
                keyLen
