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
import Botan.Low.RNG ( RNGCtx, withRNGPtr )
import Botan.Low.PubKey

-- /*
-- * Public Key Encryption
-- */

newtype EncryptCtx = MkEncryptCtx { getEncryptForeignPtr :: ForeignPtr EncryptStruct }

withEncryptPtr :: EncryptCtx -> (EncryptPtr -> IO a) -> IO a
withEncryptPtr = withForeignPtr . getEncryptForeignPtr

encryptCtxCreateIO :: PubKey -> PKPaddingName -> IO EncryptCtx
encryptCtxCreateIO pk padding = alloca $ \ outPtr -> do
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

withEncryptCtxIO :: PubKey -> PKPaddingName -> (EncryptCtx -> IO a) -> IO a
withEncryptCtxIO = mkWithTemp2 encryptCtxCreateIO encryptCtxDestroyIO

encryptCtxDestroyIO :: EncryptCtx -> IO ()
encryptCtxDestroyIO encrypt = finalizeForeignPtr (getEncryptForeignPtr encrypt)

encryptCtxOutputLengthIO :: EncryptCtx -> Int -> IO Int
encryptCtxOutputLengthIO = mkGetSize_csize withEncryptPtr botan_pk_op_encrypt_output_length

-- NOTE: This properly takes advantage of szPtr, queries the buffer size - do this elsewhere
encryptIO :: EncryptCtx -> RNGCtx -> ByteString -> IO ByteString
encryptIO enc rng ptext = withEncryptPtr enc $ \ encPtr -> do
    withRNGPtr rng $ \ rngPtr -> do
        asBytesLen ptext $ \ ptextPtr ptextLen -> do
            allocBytesQuerying $ \ outPtr szPtr -> botan_pk_op_encrypt
                encPtr
                rngPtr
                outPtr
                szPtr
                ptextPtr
                ptextLen
