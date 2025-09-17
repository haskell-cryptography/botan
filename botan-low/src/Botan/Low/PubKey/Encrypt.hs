{-|
Module      : Botan.Low.Encrypt
Description : Public Key Encryption
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.Encrypt
(

-- * Public key encryption
  Encrypt(..)
, withEncrypt
, encryptCreate
, encryptDestroy
, encryptOutputLength
, encrypt

) where

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

encryptCreate
    :: PubKey       -- ^ __key__
    -> EMEName      -- ^ __padding__
    -> IO Encrypt   -- ^ __op__
encryptCreate pk padding = withPubKey pk $ \ pkPtr -> do
    asCString padding $ \ paddingPtr -> do
        createEncrypt $ \ out -> botan_pk_op_encrypt_create
            out
            pkPtr
            (ConstPtr paddingPtr)
            0

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withEncryptCreate :: PubKey -> EMEName -> (Encrypt -> IO a) -> IO a
withEncryptCreate = mkWithTemp2 encryptCreate encryptDestroy

encryptOutputLength
    :: Encrypt  -- ^ __op__
    -> Int      -- ^ __ptext_len__
    -> IO Int   -- ^ __ctext_len__
encryptOutputLength = mkGetSize_csize withEncrypt botan_pk_op_encrypt_output_length

-- NOTE: This properly takes advantage of szPtr, queries the buffer size - do this elsewhere
-- NOTE: SM2 take a hash instead of a padding, and encrypt fails with InsufficientBufferSpace
--  if sm2p256v1 is not used as the curve when creating the key (but creating the key and
--  the encryption context do not fail)
--  This implies that encryptOutputLength may be wrong or hardcoded for SM2 or that we
--  are not supposed to use curves other than sm2p256v1 - this needs investigating
encrypt
    :: Encrypt          -- ^ __op__
    -> RNG              -- ^ __rng__
    -> ByteString       -- ^ __plaintext[]__
    -> IO ByteString    -- ^ __ciphertext[]__
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
