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

decryptCtxCreateIO :: PrivKey -> PKPaddingName -> IO DecryptCtx
decryptCtxCreateIO sk padding = alloca $ \ outPtr -> do
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

withDecryptCtxCreateIO :: PrivKey -> PKPaddingName -> (DecryptCtx -> IO a) -> IO a
withDecryptCtxCreateIO = mkWithTemp2 decryptCtxCreateIO decryptCtxDestroyIO

decryptCtxDestroyIO :: DecryptCtx -> IO ()
decryptCtxDestroyIO decrypt = finalizeForeignPtr (getDecryptForeignPtr decrypt)

decryptCtxOutputLengthIO :: DecryptCtx -> Int -> IO Int
decryptCtxOutputLengthIO = mkGetSize_csize withDecryptPtr botan_pk_op_decrypt_output_length

decryptIO :: DecryptCtx -> ByteString -> IO ByteString
decryptIO dec ctext = withDecryptPtr dec $ \ decPtr -> do
    asBytesLen ctext $ \ ctextPtr ctextLen -> do
        allocBytesQuerying $ \ outPtr szPtr -> botan_pk_op_decrypt
            decPtr
            outPtr
            szPtr
            ctextPtr
            ctextLen
