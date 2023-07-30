{-|
Module      : Botan.Low.Decrypt
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
import Botan.Low.Random
import Botan.Low.PubKey

-- /*
-- * Public Key Decryption
-- */

newtype Decrypt = MkDecrypt { getDecryptForeignPtr :: ForeignPtr DecryptStruct }

withDecryptPtr :: Decrypt -> (DecryptPtr -> IO a) -> IO a
withDecryptPtr = withForeignPtr . getDecryptForeignPtr

type DecryptPadding = ByteString

pattern DecryptNoFlags :: DecryptFlags
pattern DecryptNoFlags = BOTAN_PUBKEY_DECRYPT_FLAGS_NONE

decryptCreate :: PrivKey -> DecryptPadding -> DecryptFlags -> IO Decrypt
decryptCreate sk padding flags = alloca $ \ outPtr -> do
    withPrivKeyPtr sk $ \ skPtr -> do
        asCString padding $ \ paddingPtr -> do
            throwBotanIfNegative_ $ botan_pk_op_decrypt_create outPtr skPtr paddingPtr flags
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_decrypt_destroy out
            return $ MkDecrypt foreignPtr

decryptDestroy :: Decrypt -> IO ()
decryptDestroy decrypt = finalizeForeignPtr (getDecryptForeignPtr decrypt)

withDecrypt :: PrivKey -> DecryptPadding -> DecryptFlags -> (Decrypt -> IO a) -> IO a
withDecrypt = mkWithTemp3 decryptCreate decryptDestroy

decryptOutputLength :: Decrypt -> Int -> IO Int
decryptOutputLength = mkGetSize_csize withDecryptPtr botan_pk_op_decrypt_output_length

-- Near clone of encrypt
decrypt :: Decrypt -> ByteString -> IO ByteString
decrypt dec ctext = withDecryptPtr dec $ \ decPtr -> do
    asBytesLen ctext $ \ ctextPtr ctextLen -> do
        allocBytesQuerying $ \ outPtr szPtr -> botan_pk_op_decrypt
            decPtr
            outPtr
            szPtr
            ctextPtr
            ctextLen
