module Botan.PubKey.Decrypt where

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
import Botan.Random
import Botan.PubKey

-- /*
-- * Public Key Decryption
-- */
-- typedef struct botan_pk_op_decrypt_struct* botan_pk_op_decrypt_t;

data DecryptStruct
type DecryptPtr = Ptr DecryptStruct

newtype Decrypt = MkDecrypt { getDecryptForeignPtr :: ForeignPtr DecryptStruct }

withDecryptPtr :: Decrypt -> (DecryptPtr -> IO a) -> IO a
withDecryptPtr = withForeignPtr . getDecryptForeignPtr

type DecryptPadding = ByteString

type DecryptFlags = Word32

pattern BOTAN_PUBKEY_DECRYPT_FLAGS_NONE = 0 :: DecryptFlags -- NOTE: NOT ACTUAL FLAG

-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_decrypt_create(botan_pk_op_decrypt_t* op,
--                                          botan_privkey_t key,
--                                          const char* padding,
--                                          uint32_t flags);
foreign import ccall unsafe botan_pk_op_decrypt_create :: Ptr DecryptPtr -> PrivKeyPtr -> CString -> DecryptFlags -> IO BotanErrorCode

-- /**
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_decrypt_destroy(botan_pk_op_decrypt_t op);
foreign import ccall unsafe "&botan_pk_op_decrypt_destroy" botan_pk_op_decrypt_destroy :: FinalizerPtr DecryptStruct

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

-- BOTAN_PUBLIC_API(2,8) int botan_pk_op_decrypt_output_length(botan_pk_op_decrypt_t op,
--                                                             size_t ctext_len,
--                                                             size_t* ptext_len);
foreign import ccall unsafe botan_pk_op_decrypt_output_length :: DecryptPtr -> CSize -> Ptr CSize -> IO BotanErrorCode

decryptOutputLength :: Decrypt -> Int -> IO Int
decryptOutputLength = mkGetSize_csize withDecryptPtr botan_pk_op_decrypt_output_length

-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_decrypt(botan_pk_op_decrypt_t op,
--                                   uint8_t out[], size_t* out_len,
--                                   const uint8_t ciphertext[], size_t ciphertext_len);
foreign import ccall unsafe botan_pk_op_decrypt
    :: DecryptPtr
    -> Ptr Word8    -- Out
    -> Ptr CSize    -- Out len
    -> Ptr Word8    -- Ciphertext
    -> CSize        -- Ciphertext len
    -> IO BotanErrorCode

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
