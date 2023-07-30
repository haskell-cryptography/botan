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
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.PubKey
import Botan.Low.Random

-- /*
-- * Key Encapsulation
-- */

newtype KEMEncrypt = MkKEMEncrypt { getKEMEncryptForeignPtr :: ForeignPtr KEMEncryptStruct }

withKEMEncryptPtr :: KEMEncrypt -> (KEMEncryptPtr -> IO a) -> IO a
withKEMEncryptPtr = withForeignPtr . getKEMEncryptForeignPtr

kemEncryptCreate :: PubKey -> ByteString -> IO KEMEncrypt
kemEncryptCreate pk algo = alloca $ \ outPtr -> do
    withPubKeyPtr pk $ \ pkPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative $ botan_pk_op_kem_encrypt_create outPtr pkPtr algoPtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_kem_encrypt_destroy out
            return $ MkKEMEncrypt foreignPtr

kemEncryptDestroy :: KEMEncrypt -> IO ()
kemEncryptDestroy keEncrypt = finalizeForeignPtr (getKEMEncryptForeignPtr keEncrypt)

withKEMEncryptCreate :: PubKey -> ByteString -> (KEMEncrypt -> IO a) -> IO a
withKEMEncryptCreate = mkWithTemp2 kemEncryptCreate kemEncryptDestroy

kemEncryptSharedKeyLength :: KEMEncrypt -> Int -> IO Int
kemEncryptSharedKeyLength = mkGetSize_csize withKEMEncryptPtr botan_pk_op_kem_encrypt_shared_key_length

kemEncryptEncapsulatedKeyLength :: KEMEncrypt -> IO Int
kemEncryptEncapsulatedKeyLength = mkGetSize withKEMEncryptPtr botan_pk_op_kem_encrypt_encapsulated_key_length

-- NOTE: Awkward because of double-query and returning double bytestrings
-- NOTE: Returns (SharedKey, EncapsulatedKey)
kemEncryptCreateSharedKey :: KEMEncrypt -> Random -> ByteString -> Int -> IO (ByteString,ByteString)
kemEncryptCreateSharedKey ke random salt desiredLen = withKEMEncryptPtr ke $ \ kePtr -> do
    withRandomPtr random $ \ randomPtr -> do
        asBytesLen salt $ \ saltPtr saltLen -> do
            alloca $ \ sharedSzPtr -> do 
                alloca $ \ encapSzPtr -> do
                    -- Query sizes
                    -- TODO: Actually ensure expected error (insufficient buffer space)
                    --  and propagate unexpected errors
                    _ <- botan_pk_op_kem_encrypt_create_shared_key
                        kePtr
                        randomPtr
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
                                randomPtr
                                saltPtr
                                saltLen
                                (fromIntegral desiredLen)
                                nullPtr
                                sharedSzPtr
                                nullPtr
                                encapSzPtr

newtype KEMDecrypt = MkKEMDecrypt { getKEMDecryptForeignPtr :: ForeignPtr KEMDecryptStruct }

withKEMDecryptPtr :: KEMDecrypt -> (KEMDecryptPtr -> IO a) -> IO a
withKEMDecryptPtr = withForeignPtr . getKEMDecryptForeignPtr

kemDecryptCreate :: PrivKey -> ByteString -> IO KEMDecrypt
kemDecryptCreate sk algo = alloca $ \ outPtr -> do
    withPrivKeyPtr sk $ \ skPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative $ botan_pk_op_kem_decrypt_create outPtr skPtr algoPtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_kem_decrypt_destroy out
            return $ MkKEMDecrypt foreignPtr

withKEMDecryptCreate :: PrivKey -> ByteString -> (KEMDecrypt -> IO a) -> IO a
withKEMDecryptCreate = mkWithTemp2 kemDecryptCreate kemDecryptDestroy

kemDecryptDestroy :: KEMDecrypt -> IO ()
kemDecryptDestroy keDecrypt = finalizeForeignPtr (getKEMDecryptForeignPtr keDecrypt)

kemDecryptSharedKeyLength :: KEMDecrypt -> Int -> IO Int
kemDecryptSharedKeyLength = mkGetSize_csize withKEMDecryptPtr botan_pk_op_kem_decrypt_shared_key_length


kemDecryptSharedKey :: KEMDecrypt -> ByteString -> ByteString -> Int -> IO ByteString
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
