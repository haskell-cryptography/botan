{-|
Module      : Botan.Low.PubKey.Decrypt
Description : Public Key Decryption
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.Decrypt where

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

decryptCreate :: PrivKey -> PKPaddingName -> IO Decrypt
decryptCreate sk padding =  withPrivKey sk $ \ skPtr -> do
    asCString padding $ \ paddingPtr -> do
        createDecrypt $ \ out -> botan_pk_op_decrypt_create
            out
            skPtr
            paddingPtr
            BOTAN_PUBKEY_DECRYPT_FLAGS_NONE

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withDecryptCreate :: PrivKey -> PKPaddingName -> (Decrypt -> IO a) -> IO a
withDecryptCreate = mkWithTemp2 decryptCreate decryptDestroy

decryptOutputLength :: Decrypt -> Int -> IO Int
decryptOutputLength = mkGetSize_csize withDecrypt botan_pk_op_decrypt_output_length

decrypt :: Decrypt -> ByteString -> IO ByteString
decrypt dec ctext = withDecrypt dec $ \ decPtr -> do
    asBytesLen ctext $ \ ctextPtr ctextLen -> do
        allocBytesQuerying $ \ outPtr szPtr -> botan_pk_op_decrypt
            decPtr
            outPtr
            szPtr
            (ConstPtr ctextPtr)
            ctextLen
