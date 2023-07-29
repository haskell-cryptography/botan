module Botan.Low.PubKey.Encrypt where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.Encrypt

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.Random
import Botan.Low.PubKey

-- /*
-- * Public Key Encryption
-- */

newtype Encrypt = MkEncrypt { getEncryptForeignPtr :: ForeignPtr EncryptStruct }

withEncryptPtr :: Encrypt -> (EncryptPtr -> IO a) -> IO a
withEncryptPtr = withForeignPtr . getEncryptForeignPtr

type EncryptPadding = ByteString

pattern EncryptNoFlags :: EncryptFlags
pattern EncryptNoFlags = BOTAN_PUBKEY_ENCRYPT_FLAGS_NONE

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

encryptDestroy :: Encrypt -> IO ()
encryptDestroy encrypt = finalizeForeignPtr (getEncryptForeignPtr encrypt)

encryptOutputLength :: Encrypt -> Int -> IO Int
encryptOutputLength = mkGetSize_csize withEncryptPtr botan_pk_op_encrypt_output_length

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
