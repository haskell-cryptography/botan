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
import Botan.Low.Remake
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

type KEMSharedKey = ByteString
type KEMEncapsulatedKey = ByteString

newtype KEMEncrypt = MkKEMEncrypt { getKEMEncryptForeignPtr :: ForeignPtr BotanPKOpKEMEncryptStruct }

newKEMEncrypt      :: BotanPKOpKEMEncrypt -> IO KEMEncrypt
withKEMEncrypt     :: KEMEncrypt -> (BotanPKOpKEMEncrypt -> IO a) -> IO a
kemEncryptDestroy  :: KEMEncrypt -> IO ()
createKEMEncrypt   :: (Ptr BotanPKOpKEMEncrypt -> IO CInt) -> IO KEMEncrypt
(newKEMEncrypt, withKEMEncrypt, kemEncryptDestroy, createKEMEncrypt, _)
    = mkBindings
        MkBotanPKOpKEMEncrypt runBotanPKOpKEMEncrypt
        MkKEMEncrypt getKEMEncryptForeignPtr
        botan_pk_op_kem_encrypt_destroy

kemEncryptCreate :: PubKey -> KDFName -> IO KEMEncrypt
kemEncryptCreate pk algo = withPubKey pk $ \ pkPtr -> do
    asCString algo $ \ algoPtr -> do
        createKEMEncrypt $ \ out -> botan_pk_op_kem_encrypt_create
            out
            pkPtr
            (ConstPtr algoPtr)

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withKEMEncryptCreate :: PubKey -> KDFName -> (KEMEncrypt -> IO a) -> IO a
withKEMEncryptCreate = mkWithTemp2 kemEncryptCreate kemEncryptDestroy

kemEncryptSharedKeyLength :: KEMEncrypt -> Int -> IO Int
kemEncryptSharedKeyLength = mkGetSize_csize withKEMEncrypt botan_pk_op_kem_encrypt_shared_key_length

kemEncryptEncapsulatedKeyLength :: KEMEncrypt -> IO Int
kemEncryptEncapsulatedKeyLength = mkGetSize withKEMEncrypt botan_pk_op_kem_encrypt_encapsulated_key_length

-- NOTE: Awkward because of double-query and returning double bytestrings
--  Cannot use allocBytesQuerying because of double-return
-- NOTE: Returns (SharedKey, EncapsulatedKey)
kemEncryptCreateSharedKey :: KEMEncrypt -> RNG -> ByteString -> Int -> IO (KEMSharedKey,KEMEncapsulatedKey)
kemEncryptCreateSharedKey ke rng salt desiredLen = withKEMEncrypt ke $ \ kePtr -> do
    withRNG rng $ \ botanRNG -> do
        asBytesLen salt $ \ saltPtr saltLen -> do
            alloca $ \ sharedSzPtr -> do 
                alloca $ \ encapSzPtr -> do
                    sharedSz <- kemEncryptSharedKeyLength ke desiredLen
                    encapSz <-  kemEncryptEncapsulatedKeyLength ke
                    poke sharedSzPtr (fromIntegral sharedSz)
                    poke encapSzPtr (fromIntegral encapSz)
                    allocBytesWith encapSz $ \ encapPtr -> do
                        allocBytes sharedSz $ \ sharedPtr -> do
                            throwBotanIfNegative_ $ botan_pk_op_kem_encrypt_create_shared_key
                                kePtr
                                botanRNG
                                (ConstPtr saltPtr)
                                saltLen
                                (fromIntegral desiredLen)
                                sharedPtr
                                sharedSzPtr
                                encapPtr
                                encapSzPtr

newtype KEMDecrypt = MkKEMDecrypt { getKEMDecryptForeignPtr :: ForeignPtr BotanPKOpKEMDecryptStruct }

newKEMDecrypt      :: BotanPKOpKEMDecrypt -> IO KEMDecrypt
withKEMDecrypt     :: KEMDecrypt -> (BotanPKOpKEMDecrypt -> IO a) -> IO a
kemDecryptDestroy  :: KEMDecrypt -> IO ()
createKEMDecrypt   :: (Ptr BotanPKOpKEMDecrypt -> IO CInt) -> IO KEMDecrypt
(newKEMDecrypt, withKEMDecrypt, kemDecryptDestroy, createKEMDecrypt, _)
    = mkBindings
        MkBotanPKOpKEMDecrypt runBotanPKOpKEMDecrypt
        MkKEMDecrypt getKEMDecryptForeignPtr
        botan_pk_op_kem_decrypt_destroy

kemDecryptCreate :: PrivKey -> KDFName -> IO KEMDecrypt
kemDecryptCreate sk algo = withPrivKey sk $ \ skPtr -> do
    asCString algo $ \ algoPtr -> do
        createKEMDecrypt $ \ out -> botan_pk_op_kem_decrypt_create
            out
            skPtr
            (ConstPtr algoPtr)

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withKEMDecryptCreate :: PrivKey -> KDFName -> (KEMDecrypt -> IO a) -> IO a
withKEMDecryptCreate = mkWithTemp2 kemDecryptCreate kemDecryptDestroy

kemDecryptSharedKeyLength :: KEMDecrypt -> Int -> IO Int
kemDecryptSharedKeyLength = mkGetSize_csize withKEMDecrypt botan_pk_op_kem_decrypt_shared_key_length

kemDecryptSharedKey :: KEMDecrypt -> ByteString -> KEMEncapsulatedKey -> Int -> IO KEMSharedKey
kemDecryptSharedKey kd salt encap desiredLen = withKEMDecrypt kd $ \ kdPtr -> do
    asBytesLen salt $ \ saltPtr saltLen -> do
        asBytesLen encap $ \ encapPtr encapLen -> do
            -- TODO: Consolidate with allocBytesUpperBound or whatever I end up calling it
            alloca $ \ sharedSzPtr -> do
                sharedSz <- kemDecryptSharedKeyLength kd desiredLen
                poke sharedSzPtr (fromIntegral sharedSz)
                bytes <- allocBytes sharedSz $ \ outPtr -> do
                    throwBotanIfNegative_ $ botan_pk_op_kem_decrypt_shared_key
                        kdPtr
                        (ConstPtr saltPtr)
                        saltLen
                        (ConstPtr encapPtr)
                        encapLen
                        (fromIntegral desiredLen)
                        outPtr
                        sharedSzPtr
                actualSharedSz <- peek sharedSzPtr
                return $!! ByteString.take (fromIntegral actualSharedSz) bytes

