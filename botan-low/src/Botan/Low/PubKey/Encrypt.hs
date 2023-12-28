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
import Botan.Low.Remake

-- /*
-- * Public Key Encryption
-- */

newtype Encrypt = MkEncrypt { getEncryptForeignPtr :: ForeignPtr BotanPKOpEncryptStruct }

newEncrypt      :: BotanPKOpEncrypt -> IO Encrypt
withEncrypt     :: Encrypt -> (BotanPKOpEncrypt -> IO a) -> IO a
encryptDestroy  :: Encrypt -> IO ()
createEncrypt   :: (Ptr BotanPKOpEncrypt -> IO CInt) -> IO Encrypt
(newEncrypt, withEncrypt, encryptDestroy, createEncrypt, _)
    = mkBindings
        MkBotanPKOpEncrypt runBotanPKOpEncrypt
        MkEncrypt getEncryptForeignPtr
        botan_pk_op_encrypt_destroy

encryptCreate :: PubKey -> PKPaddingName -> IO Encrypt
encryptCreate pk padding = withPubKey pk $ \ pkPtr -> do
    asCString padding $ \ paddingPtr -> do
        createEncrypt $ \ out -> botan_pk_op_encrypt_create
            out
            pkPtr
            (ConstPtr paddingPtr)
            0
            
-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withEncryptCreate :: PubKey -> PKPaddingName -> (Encrypt -> IO a) -> IO a
withEncryptCreate = mkWithTemp2 encryptCreate encryptDestroy

encryptOutputLength :: Encrypt -> Int -> IO Int
encryptOutputLength = mkGetSize_csize withEncrypt botan_pk_op_encrypt_output_length

-- NOTE: This properly takes advantage of szPtr, queries the buffer size - do this elsewhere
-- NOTE: SM2 take a hash instead of a padding, and encrypt fails with InsufficientBufferSpace
--  if sm2p256v1 is not used as the curve when creating the key (but creating the key and
--  the encryption context do not fail)
--  This implies that encryptOutputLength may be wrong or hardcoded for SM2 or that we
--  are not supposed to use curves other than sm2p256v1 - this needs investigating
encrypt :: Encrypt -> RNG -> ByteString -> IO ByteString
encrypt enc rng ptext = withEncrypt enc $ \ encPtr -> do
    withRNG rng $ \ botanRNG -> do
        asBytesLen ptext $ \ ptextPtr ptextLen -> do
            allocBytesQuerying $ \ outPtr szPtr -> botan_pk_op_encrypt
                encPtr
                botanRNG
                outPtr
                szPtr
                ptextPtr
                ptextLen
