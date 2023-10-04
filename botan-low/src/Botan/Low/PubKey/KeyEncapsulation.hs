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

kemEncryptCreate :: PubKey -> KDFName -> IO KEMEncryptCtx
kemEncryptCreate pk algo = alloca $ \ outPtr -> do
    withPubKeyPtr pk $ \ pkPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative $ botan_pk_op_kem_encrypt_create outPtr pkPtr algoPtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_kem_encrypt_destroy out
            return $ MkKEMEncryptCtx foreignPtr

withKEMEncryptCreate :: PubKey -> KDFName -> (KEMEncryptCtx -> IO a) -> IO a
withKEMEncryptCreate = mkWithTemp2 kemEncryptCreate kemEncryptDestroy

kemEncryptDestroy :: KEMEncryptCtx -> IO ()
kemEncryptDestroy keEncrypt = finalizeForeignPtr (getKEMEncryptForeignPtr keEncrypt)

kemEncryptSharedKeyLength :: KEMEncryptCtx -> Int -> IO Int
kemEncryptSharedKeyLength = mkGetSize_csize withKEMEncryptPtr botan_pk_op_kem_encrypt_shared_key_length

kemEncryptEncapsulatedKeyLength :: KEMEncryptCtx -> IO Int
kemEncryptEncapsulatedKeyLength = mkGetSize withKEMEncryptPtr botan_pk_op_kem_encrypt_encapsulated_key_length

-- NOTE: Awkward because of double-query and returning double bytestrings
--  Cannot use allocBytesQuerying because of double-return
-- NOTE: Returns (SharedKey, EncapsulatedKey)
kemEncryptCreateSharedKey :: KEMEncryptCtx -> RNGCtx -> ByteString -> Int -> IO (ByteString,ByteString)
kemEncryptCreateSharedKey ke rng salt desiredLen = withKEMEncryptPtr ke $ \ kePtr -> do
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

kemDecryptCreate :: PrivKey -> KDFName -> IO KEMDecryptCtx
kemDecryptCreate sk algo = alloca $ \ outPtr -> do
    withPrivKeyPtr sk $ \ skPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative $ botan_pk_op_kem_decrypt_create outPtr skPtr algoPtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_kem_decrypt_destroy out
            return $ MkKEMDecryptCtx foreignPtr

withKEMDecryptCreate :: PrivKey -> KDFName -> (KEMDecryptCtx -> IO a) -> IO a
withKEMDecryptCreate = mkWithTemp2 kemDecryptCreate kemDecryptDestroy

kemDecryptDestroy :: KEMDecryptCtx -> IO ()
kemDecryptDestroy keDecrypt = finalizeForeignPtr (getKEMDecryptForeignPtr keDecrypt)

kemDecryptSharedKeyLength :: KEMDecryptCtx -> Int -> IO Int
kemDecryptSharedKeyLength = mkGetSize_csize withKEMDecryptPtr botan_pk_op_kem_decrypt_shared_key_length

kemDecryptSharedKey :: KEMDecryptCtx -> ByteString -> ByteString -> Int -> IO ByteString
kemDecryptSharedKey kd salt encap desiredLen = withKEMDecryptPtr kd $ \ kdPtr -> do
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
