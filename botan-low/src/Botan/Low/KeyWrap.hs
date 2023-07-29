module Botan.Low.KeyWrap where

import qualified Data.ByteString as ByteString

import Botan.Bindings.KeyWrap

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

nistKeyWrapEncode :: ByteString -> Int -> ByteString -> ByteString -> IO ByteString
nistKeyWrapEncode algo padded key kek = asCString algo $ \ algoPtr -> do
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

nistKeyWrapDecode :: ByteString -> Int -> ByteString -> ByteString -> IO ByteString
nistKeyWrapDecode algo padded wrappedKey kek = asCString algo $ \ algoPtr -> do
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
