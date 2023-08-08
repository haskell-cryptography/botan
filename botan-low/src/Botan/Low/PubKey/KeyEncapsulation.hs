{-|
Module      : Botan.Low.KeyEncapsulation
Description : Key Encapsulation
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.KeyEncapsulation where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.KeyEncapsulation

import Botan.Low.Error
import Botan.Low.KDF
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.PubKey
import Botan.Low.RNG

-- /*
-- * Key Encapsulation
-- */

-- TODO: KEM supports the following key types:
--      RSA
--      Kyber
--      McEliece
--  https://botan.randombit.net/handbook/api_ref/pubkey.html#key-encapsulation
-- KYBER is post-quantum


newtype KEMEncryptCtx = MkKEMEncryptCtx { getKEMEncryptForeignPtr :: ForeignPtr KEMEncryptStruct }

withKEMEncryptPtr :: KEMEncryptCtx -> (KEMEncryptPtr -> IO a) -> IO a
withKEMEncryptPtr = withForeignPtr . getKEMEncryptForeignPtr

kemEncryptCtxCreateIO :: PubKey -> KDFName -> IO KEMEncryptCtx
kemEncryptCtxCreateIO pk algo = alloca $ \ outPtr -> do
    withPubKeyPtr pk $ \ pkPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative $ botan_pk_op_kem_encrypt_create outPtr pkPtr algoPtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_kem_encrypt_destroy out
            return $ MkKEMEncryptCtx foreignPtr

withKEMEncryptCtxCreateIO :: PubKey -> KDFName -> (KEMEncryptCtx -> IO a) -> IO a
withKEMEncryptCtxCreateIO = mkWithTemp2 kemEncryptCtxCreateIO kemEncryptCtxDestroyIO

kemEncryptCtxDestroyIO :: KEMEncryptCtx -> IO ()
kemEncryptCtxDestroyIO keEncrypt = finalizeForeignPtr (getKEMEncryptForeignPtr keEncrypt)

kemEncryptCtxSharedKeyLengthIO :: KEMEncryptCtx -> Int -> IO Int
kemEncryptCtxSharedKeyLengthIO = mkGetSize_csize withKEMEncryptPtr botan_pk_op_kem_encrypt_shared_key_length

kemEncryptCtxEncapsulatedKeyLengthIO :: KEMEncryptCtx -> IO Int
kemEncryptCtxEncapsulatedKeyLengthIO = mkGetSize withKEMEncryptPtr botan_pk_op_kem_encrypt_encapsulated_key_length

-- NOTE: Awkward because of double-query and returning double bytestrings
--  Cannot use allocBytesQuerying because of double-return
-- NOTE: Returns (SharedKey, EncapsulatedKey)
kemEncryptCtxCreateSharedKeyIO :: KEMEncryptCtx -> RNGCtx -> ByteString -> Int -> IO (ByteString,ByteString)
kemEncryptCtxCreateSharedKeyIO ke rng salt desiredLen = withKEMEncryptPtr ke $ \ kePtr -> do
    withRNGPtr rng $ \ rngPtr -> do
        asBytesLen salt $ \ saltPtr saltLen -> do
            alloca $ \ sharedSzPtr -> do 
                alloca $ \ encapSzPtr -> do
                    -- Query sizes
                    -- TODO: Actually ensure expected error (insufficient buffer space)
                    --  and propagate unexpected errors
                    _ <- botan_pk_op_kem_encrypt_create_shared_key
                        kePtr
                        rngPtr
                        saltPtr
                        saltLen
                        (fromIntegral desiredLen)
                        nullPtr
                        sharedSzPtr
                        nullPtr
                        encapSzPtr
                    sharedSz <- fromIntegral <$> peek sharedSzPtr
                    encapSz <- fromIntegral <$> peek encapSzPtr
                    allocBytesWith encapSz $ \ encapPtr -> do
                        allocBytes sharedSz $ \ sharedPtr -> do
                            throwBotanIfNegative_ $ botan_pk_op_kem_encrypt_create_shared_key
                                kePtr
                                rngPtr
                                saltPtr
                                saltLen
                                (fromIntegral desiredLen)
                                nullPtr
                                sharedSzPtr
                                nullPtr
                                encapSzPtr

newtype KEMDecryptCtx = MkKEMDecryptCtx { getKEMDecryptForeignPtr :: ForeignPtr KEMDecryptStruct }

withKEMDecryptPtr :: KEMDecryptCtx -> (KEMDecryptPtr -> IO a) -> IO a
withKEMDecryptPtr = withForeignPtr . getKEMDecryptForeignPtr

kemDecryptCtxCreateIO :: PrivKey -> KDFName -> IO KEMDecryptCtx
kemDecryptCtxCreateIO sk algo = alloca $ \ outPtr -> do
    withPrivKeyPtr sk $ \ skPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative $ botan_pk_op_kem_decrypt_create outPtr skPtr algoPtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_kem_decrypt_destroy out
            return $ MkKEMDecryptCtx foreignPtr

withKEMDecryptCtxCreateIO :: PrivKey -> KDFName -> (KEMDecryptCtx -> IO a) -> IO a
withKEMDecryptCtxCreateIO = mkWithTemp2 kemDecryptCtxCreateIO kemDecryptCtxDestroyIO

kemDecryptCtxDestroyIO :: KEMDecryptCtx -> IO ()
kemDecryptCtxDestroyIO keDecrypt = finalizeForeignPtr (getKEMDecryptForeignPtr keDecrypt)

kemDecryptCtxSharedKeyLengthIO :: KEMDecryptCtx -> Int -> IO Int
kemDecryptCtxSharedKeyLengthIO = mkGetSize_csize withKEMDecryptPtr botan_pk_op_kem_decrypt_shared_key_length

kemDecryptCtxSharedKeyIO :: KEMDecryptCtx -> ByteString -> ByteString -> Int -> IO ByteString
kemDecryptCtxSharedKeyIO kd salt encap desiredLen = withKEMDecryptPtr kd $ \ kdPtr -> do
    asBytesLen salt $ \ saltPtr saltLen -> do
        asBytesLen encap $ \ encapPtr encapLen -> do
            allocBytesQuerying $ \ outPtr outLen -> botan_pk_op_kem_decrypt_shared_key
                kdPtr
                saltPtr
                saltLen
                encapPtr
                encapLen
                (fromIntegral desiredLen)
                outPtr
                outLen
