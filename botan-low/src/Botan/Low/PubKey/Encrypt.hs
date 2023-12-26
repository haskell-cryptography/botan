{-|
Module      : Botan.Low.Encrypt
Description : Public Key Encryption
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.Encrypt where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.Encrypt

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.RNG
import Botan.Low.PubKey

-- /*
-- * Public Key Encryption
-- */

newtype EncryptCtx = MkEncryptCtx { getEncryptForeignPtr :: ForeignPtr EncryptStruct }

withEncryptPtr :: EncryptCtx -> (EncryptPtr -> IO a) -> IO a
withEncryptPtr = withForeignPtr . getEncryptForeignPtr

encryptCreate :: PubKey -> PKPaddingName -> IO EncryptCtx
encryptCreate pk padding = alloca $ \ outPtr -> do
    withPubKeyPtr pk $ \ pkPtr -> do
        asCString padding $ \ paddingPtr -> do
            throwBotanIfNegative_ $ botan_pk_op_encrypt_create
                outPtr
                pkPtr
                paddingPtr
                0
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_encrypt_destroy out
            return $ MkEncryptCtx foreignPtr

withEncryptCtx :: PubKey -> PKPaddingName -> (EncryptCtx -> IO a) -> IO a
withEncryptCtx = mkWithTemp2 encryptCreate encryptDestroy

encryptDestroy :: EncryptCtx -> IO ()
encryptDestroy encrypt = finalizeForeignPtr (getEncryptForeignPtr encrypt)

encryptOutputLength :: EncryptCtx -> Int -> IO Int
encryptOutputLength = mkGetSize_csize withEncryptPtr botan_pk_op_encrypt_output_length

-- NOTE: This properly takes advantage of szPtr, queries the buffer size - do this elsewhere
-- NOTE: SM2 take a hash instead of a padding, and encrypt fails with InsufficientBufferSpace
--  if sm2p256v1 is not used as the curve when creating the key (but creating the key and
--  the encryption context do not fail)
--  This implies that encryptOutputLength may be wrong or hardcoded for SM2 or that we
--  are not supposed to use curves other than sm2p256v1 - this needs investigating
encrypt :: EncryptCtx -> RNG -> ByteString -> IO ByteString
encrypt enc rng ptext = withEncryptPtr enc $ \ encPtr -> do
    withRNG rng $ \ botanRNG -> do
        asBytesLen ptext $ \ ptextPtr ptextLen -> do
            allocBytesQuerying $ \ outPtr szPtr -> botan_pk_op_encrypt
                encPtr
                botanRNG
                outPtr
                szPtr
                ptextPtr
                ptextLen
