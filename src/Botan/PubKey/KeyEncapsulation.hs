module Botan.PubKey.KeyEncapsulation where

import Prelude

import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString

import Data.Word

import System.IO

import Foreign.C.String
import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable

import Botan.Error
import Botan.Make
import Botan.Prelude
import Botan.PubKey
import Botan.Random

-- /*
-- * Key Encapsulation
-- */
-- typedef struct botan_pk_op_kem_encrypt_struct* botan_pk_op_kem_encrypt_t;

data KEEncryptStruct
type KEEncryptPtr = Ptr KEEncryptStruct

newtype KEEncrypt = MkKEEncrypt { getKEEncryptForeignPtr :: ForeignPtr KEEncryptStruct }

withKEEncryptPtr :: KEEncrypt -> (KEEncryptPtr -> IO a) -> IO a
withKEEncryptPtr = withForeignPtr . getKEEncryptForeignPtr

-- BOTAN_PUBLIC_API(3,0) int botan_pk_op_kem_encrypt_create(
--    botan_pk_op_kem_encrypt_t* op,
--    botan_pubkey_t key,
--    const char* kdf);
foreign import ccall unsafe botan_pk_op_kem_encrypt_create :: Ptr KEEncryptPtr -> PubKeyPtr -> CString -> IO BotanErrorCode

-- /**
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(3,0) int botan_pk_op_kem_encrypt_destroy(botan_pk_op_kem_encrypt_t op);
foreign import ccall unsafe "&botan_pk_op_kem_encrypt_destroy" botan_pk_op_kem_encrypt_destroy :: FinalizerPtr KEEncryptStruct

keEncryptCreate :: PubKey -> ByteString -> IO KEEncrypt
keEncryptCreate pk algo = alloca $ \ outPtr -> do
    withPubKeyPtr pk $ \ pkPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative $ botan_pk_op_kem_encrypt_create outPtr pkPtr algoPtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_kem_encrypt_destroy out
            return $ MkKEEncrypt foreignPtr

keEncryptDestroy :: KEEncrypt -> IO ()
keEncryptDestroy keEncrypt = finalizeForeignPtr (getKEEncryptForeignPtr keEncrypt)

withKEEncryptCreate :: PubKey -> ByteString -> (KEEncrypt -> IO a) -> IO a
withKEEncryptCreate = mkWithTemp2 keEncryptCreate keEncryptDestroy

-- BOTAN_PUBLIC_API(3,0)
-- int botan_pk_op_kem_encrypt_shared_key_length(
--    botan_pk_op_kem_encrypt_t op,
--    size_t desired_shared_key_length,
--    size_t* output_shared_key_length);
foreign import ccall unsafe botan_pk_op_kem_encrypt_shared_key_length
    :: KEEncryptPtr
    -> CSize
    -> Ptr CSize
    -> IO BotanErrorCode

keEncryptSharedKeyLength :: KEEncrypt -> Int -> IO Int
keEncryptSharedKeyLength = mkGetSize_csize withKEEncryptPtr botan_pk_op_kem_encrypt_shared_key_length

-- BOTAN_PUBLIC_API(3,0)
-- int botan_pk_op_kem_encrypt_encapsulated_key_length(
--    botan_pk_op_kem_encrypt_t op,
--    size_t* output_encapsulated_key_length);
foreign import ccall unsafe botan_pk_op_kem_encrypt_encapsulated_key_length
    :: KEEncryptPtr
    -> Ptr CSize
    -> IO BotanErrorCode

keEncryptEncapsulatedKeyLength :: KEEncrypt -> IO Int
keEncryptEncapsulatedKeyLength = mkGetSize withKEEncryptPtr botan_pk_op_kem_encrypt_encapsulated_key_length

-- BOTAN_PUBLIC_API(3,0) int botan_pk_op_kem_encrypt_create_shared_key(
--    botan_pk_op_kem_encrypt_t op,
--    botan_rng_t rng,
--    const uint8_t salt[],
--    size_t salt_len,
--    size_t desired_shared_key_len,
--    uint8_t shared_key[],
--    size_t* shared_key_len,
--    uint8_t encapsulated_key[],
--    size_t* encapsulated_key_len);
foreign import ccall unsafe botan_pk_op_kem_encrypt_create_shared_key
    :: KEEncryptPtr
    -> RandomPtr
    -> Ptr Word8    -- Salt
    -> CSize        -- Salt len
    -> CSize        -- Desired shared key len
    -> Ptr Word8    -- Shared key (output)
    -> Ptr CSize    -- Shared key len
    -> Ptr Word8    -- Encapsulated key (output)
    -> Ptr CSize    -- Encapsulated key len
    -> IO BotanErrorCode

-- NOTE: Awkward because of double-query and returning double bytestrings
-- NOTE: Returns (SharedKey, EncapsulatedKey)
keEncryptCreateSharedKey :: KEEncrypt -> Random -> ByteString -> Int -> IO (ByteString,ByteString)
keEncryptCreateSharedKey ke random salt desiredLen = withKEEncryptPtr ke $ \ kePtr -> do
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


-- typedef struct botan_pk_op_kem_decrypt_struct* botan_pk_op_kem_decrypt_t;

data KEDecryptStruct
type KEDecryptPtr = Ptr KEDecryptStruct

newtype KEDecrypt = MkKEDecrypt { getKEDecryptForeignPtr :: ForeignPtr KEDecryptStruct }

withKEDecryptPtr :: KEDecrypt -> (KEDecryptPtr -> IO a) -> IO a
withKEDecryptPtr = withForeignPtr . getKEDecryptForeignPtr

-- BOTAN_PUBLIC_API(3,0) int botan_pk_op_kem_decrypt_create(
--    botan_pk_op_kem_decrypt_t* op,
--    botan_privkey_t key,
--    const char* kdf);
foreign import ccall unsafe botan_pk_op_kem_decrypt_create :: Ptr KEDecryptPtr -> PrivKeyPtr -> CString -> IO BotanErrorCode

keDecryptCreate :: PrivKey -> ByteString -> IO KEDecrypt
keDecryptCreate sk algo = alloca $ \ outPtr -> do
    withPrivKeyPtr sk $ \ skPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative $ botan_pk_op_kem_decrypt_create outPtr skPtr algoPtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_kem_decrypt_destroy out
            return $ MkKEDecrypt foreignPtr

withKEDecryptCreate :: PrivKey -> ByteString -> (KEDecrypt -> IO a) -> IO a
withKEDecryptCreate = mkWithTemp2 keDecryptCreate keDecryptDestroy


-- /**
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(3,0) int botan_pk_op_kem_decrypt_destroy(botan_pk_op_kem_decrypt_t op);
foreign import ccall unsafe "&botan_pk_op_kem_decrypt_destroy" botan_pk_op_kem_decrypt_destroy :: FinalizerPtr KEDecryptStruct

keDecryptDestroy :: KEDecrypt -> IO ()
keDecryptDestroy keDecrypt = finalizeForeignPtr (getKEDecryptForeignPtr keDecrypt)

-- BOTAN_PUBLIC_API(3,0)
-- int botan_pk_op_kem_decrypt_shared_key_length(
--    botan_pk_op_kem_decrypt_t op,
--    size_t desired_shared_key_length,
--    size_t* output_shared_key_length);
foreign import ccall unsafe botan_pk_op_kem_decrypt_shared_key_length
    :: KEDecryptPtr
    -> CSize
    -> Ptr CSize
    -> IO BotanErrorCode

keDecryptSharedKeyLength :: KEDecrypt -> Int -> IO Int
keDecryptSharedKeyLength = mkGetSize_csize withKEDecryptPtr botan_pk_op_kem_decrypt_shared_key_length

-- BOTAN_PUBLIC_API(3,0) int botan_pk_op_kem_decrypt_shared_key(
--    botan_pk_op_kem_decrypt_t op,
--    const uint8_t salt[],
--    size_t salt_len,
--    const uint8_t encapsulated_key[],
--    size_t encapsulated_key_len,
--    size_t desired_shared_key_len,
--    uint8_t shared_key[],
--    size_t* shared_key_len);
foreign import ccall unsafe botan_pk_op_kem_decrypt_shared_key
    :: KEDecryptPtr
    -> Ptr Word8    -- Salt
    -> CSize        -- Salt len
    -> Ptr Word8    -- Encapsulated key
    -> CSize        -- Encapsulated key len
    -> CSize        -- Desired shared key len
    -> Ptr Word8    -- Shared key (output)
    -> Ptr CSize    -- Shared key len
    -> IO BotanErrorCode

keDecryptSharedKey :: KEDecrypt -> ByteString -> ByteString -> Int -> IO ByteString
keDecryptSharedKey kd salt encap desiredLen = withKEDecryptPtr kd $ \ kdPtr -> do
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
