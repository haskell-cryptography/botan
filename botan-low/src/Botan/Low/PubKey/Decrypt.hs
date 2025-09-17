{-|
Module      : Botan.Low.PubKey.Decrypt
Description : Public Key Decryption
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.Decrypt
(

-- * Public key decryption
  Decrypt(..)
, withDecrypt
, decryptCreate
, decryptDestroy
, decryptOutputLength
, decrypt

) where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.Decrypt

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.RNG
import Botan.Low.PubKey
import Botan.Low.Remake

-- /*
-- * Public Key Decryption
-- */

newtype Decrypt = MkDecrypt { getDecryptForeignPtr :: ForeignPtr BotanPKOpDecryptStruct }

newDecrypt      :: BotanPKOpDecrypt -> IO Decrypt
withDecrypt     :: Decrypt -> (BotanPKOpDecrypt -> IO a) -> IO a
decryptDestroy  :: Decrypt -> IO ()
createDecrypt   :: (Ptr BotanPKOpDecrypt -> IO CInt) -> IO Decrypt
(newDecrypt, withDecrypt, decryptDestroy, createDecrypt, _)
    = mkBindings
        MkBotanPKOpDecrypt runBotanPKOpDecrypt
        MkDecrypt getDecryptForeignPtr
        botan_pk_op_decrypt_destroy

decryptCreate
    :: PrivKey  -- ^ __key__
    -> EMEName  -- ^ __padding__
    -> IO Decrypt
decryptCreate sk padding =  withPrivKey sk $ \ skPtr -> do
    asCString padding $ \ paddingPtr -> do
        createDecrypt $ \ out -> botan_pk_op_decrypt_create
            out
            skPtr
            paddingPtr
            BOTAN_PUBKEY_DECRYPT_FLAGS_NONE

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withDecryptCreate :: PrivKey -> EMEName -> (Decrypt -> IO a) -> IO a
withDecryptCreate = mkWithTemp2 decryptCreate decryptDestroy

decryptOutputLength
    :: Decrypt  -- ^ __op__
    -> Int      -- ^ __ctext_len__
    -> IO Int   -- ^ __ptext_len__
decryptOutputLength = mkGetSize_csize withDecrypt botan_pk_op_decrypt_output_length

decrypt
    :: Decrypt          -- ^ __op__
    -> ByteString       -- ^ __ciphertext__
    -> IO ByteString    -- ^ __plaintext__
decrypt dec ctext = withDecrypt dec $ \ decPtr -> do
    asBytesLen ctext $ \ ctextPtr ctextLen -> do
        allocBytesQuerying $ \ outPtr szPtr -> botan_pk_op_decrypt
            decPtr
            outPtr
            szPtr
            (ConstPtr ctextPtr)
            ctextLen
