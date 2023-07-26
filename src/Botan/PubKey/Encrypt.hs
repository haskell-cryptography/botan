module Botan.PubKey.Encrypt where

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
-- * Public Key Encryption
-- */
-- typedef struct botan_pk_op_encrypt_struct* botan_pk_op_encrypt_t;

data EncryptStruct
type EncryptPtr = Ptr EncryptStruct

newtype Encrypt = MkEncrypt { getEncryptForeignPtr :: ForeignPtr EncryptStruct }

withEncryptPtr :: Encrypt -> (EncryptPtr -> IO a) -> IO a
withEncryptPtr = withForeignPtr . getEncryptForeignPtr

type EncryptPadding = ByteString

type EncryptFlags = Word32

pattern BOTAN_PUBKEY_ENCRYPT_FLAGS_NONE = 0 :: EncryptFlags -- NOTE: NOT ACTUAL FLAG

-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_encrypt_create(botan_pk_op_encrypt_t* op,
--                                          botan_pubkey_t key,
--                                          const char* padding,
--                                          uint32_t flags);
foreign import ccall unsafe botan_pk_op_encrypt_create :: Ptr EncryptPtr -> PubKeyPtr -> CString -> EncryptFlags -> IO BotanErrorCode

encryptCreate :: PubKey -> EncryptPadding -> EncryptFlags -> IO Encrypt
encryptCreate pk padding flags = alloca $ \ outPtr -> do
    withPubKeyPtr pk $ \ pkPtr -> do
        asCString padding $ \ paddingPtr -> do
            throwBotanIfNegative_ $ botan_pk_op_encrypt_create outPtr pkPtr paddingPtr flags
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_encrypt_destroy out
            return $ MkEncrypt foreignPtr

withEncrypt :: PubKey -> EncryptPadding -> EncryptFlags -> (Encrypt -> IO a) -> IO a
withEncrypt = mkWithTemp3 encryptCreate encryptDestroy

-- /**
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_encrypt_destroy(botan_pk_op_encrypt_t op);
foreign import ccall unsafe "&botan_pk_op_encrypt_destroy" botan_pk_op_encrypt_destroy :: FinalizerPtr EncryptStruct

encryptDestroy :: Encrypt -> IO ()
encryptDestroy encrypt = finalizeForeignPtr (getEncryptForeignPtr encrypt)

-- BOTAN_PUBLIC_API(2,8) int botan_pk_op_encrypt_output_length(botan_pk_op_encrypt_t op,
--                                                             size_t ptext_len,
--                                                             size_t* ctext_len);
foreign import ccall unsafe botan_pk_op_encrypt_output_length :: EncryptPtr -> CSize -> Ptr CSize -> IO BotanErrorCode

encryptOutputLength :: Encrypt -> Int -> IO Int
encryptOutputLength = mkGetSize_csize withEncryptPtr botan_pk_op_encrypt_output_length

-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_encrypt(botan_pk_op_encrypt_t op,
--                                               botan_rng_t rng,
--                                               uint8_t out[],
--                                               size_t* out_len,
--                                               const uint8_t plaintext[],
--                                               size_t plaintext_len);
foreign import ccall unsafe botan_pk_op_encrypt
    :: EncryptPtr
    -> RandomPtr
    -> Ptr Word8    -- Out
    -> Ptr CSize    -- Out len
    -> Ptr Word8    -- Plaintext
    -> CSize        -- Plaintext len
    -> IO BotanErrorCode

-- NOTE: This properly takes advantage of szPtr, queries the buffer size - do this elsewhere
encrypt :: Encrypt -> Random -> ByteString -> IO ByteString
encrypt enc random ptext = withEncryptPtr enc $ \ encPtr -> do
    withRandomPtr random $ \ randomPtr -> do
        asBytesLen ptext $ \ ptextPtr ptextLen -> do
            allocBytesQuerying $ \ outPtr szPtr -> botan_pk_op_encrypt
                encPtr
                randomPtr
                outPtr
                szPtr
                ptextPtr
                ptextLen
