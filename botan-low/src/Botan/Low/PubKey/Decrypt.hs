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

-- /*
-- * Public Key Decryption
-- */

-- TODO: Rename PKDecryptCtx?
newtype DecryptCtx = MkDecryptCtx { getDecryptForeignPtr :: ForeignPtr DecryptStruct }

withDecryptPtr :: DecryptCtx -> (DecryptPtr -> IO a) -> IO a
withDecryptPtr = withForeignPtr . getDecryptForeignPtr

decryptCreate :: PrivKey -> PKPaddingName -> IO DecryptCtx
decryptCreate sk padding = alloca $ \ outPtr -> do
    withPrivKeyPtr sk $ \ skPtr -> do
        asCString padding $ \ paddingPtr -> do
            throwBotanIfNegative_ $ botan_pk_op_decrypt_create
                outPtr
                skPtr
                paddingPtr
                BOTAN_PUBKEY_DECRYPT_FLAGS_NONE
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_decrypt_destroy out
            return $ MkDecryptCtx foreignPtr

withDecryptCreate :: PrivKey -> PKPaddingName -> (DecryptCtx -> IO a) -> IO a
withDecryptCreate = mkWithTemp2 decryptCreate decryptDestroy

decryptDestroy :: DecryptCtx -> IO ()
decryptDestroy decrypt = finalizeForeignPtr (getDecryptForeignPtr decrypt)

decryptOutputLength :: DecryptCtx -> Int -> IO Int
decryptOutputLength = mkGetSize_csize withDecryptPtr botan_pk_op_decrypt_output_length

decrypt :: DecryptCtx -> ByteString -> IO ByteString
decrypt dec ctext = withDecryptPtr dec $ \ decPtr -> do
    asBytesLen ctext $ \ ctextPtr ctextLen -> do
        allocBytesQuerying $ \ outPtr szPtr -> botan_pk_op_decrypt
            decPtr
            outPtr
            szPtr
            ctextPtr
            ctextLen
