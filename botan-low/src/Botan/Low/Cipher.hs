module Botan.Low.Cipher where

import qualified Data.ByteString as ByteString

import Botan.Bindings.Cipher

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

-- NOTE: This is *symmetric* ciphers
--  For the 'raw' interface to ECB mode block ciphers, see BlockCipher.hs

newtype Cipher = MkCipher { getCipherForeignPtr :: ForeignPtr CipherStruct }

withCipherPtr :: Cipher -> (CipherPtr -> IO a) -> IO a
withCipherPtr = withForeignPtr . getCipherForeignPtr

pattern CipherEncrypt :: CipherInitFlags
pattern CipherEncrypt = BOTAN_CIPHER_INIT_FLAG_ENCRYPT

pattern CipherDecrypt :: CipherInitFlags
pattern CipherDecrypt = BOTAN_CIPHER_INIT_FLAG_DECRYPT

type CipherName = ByteString
type CipherNonce = ByteString
type CipherKey = ByteString

cipherInit :: CipherName -> CipherInitFlags -> IO Cipher
cipherInit = mkInit_name_flags MkCipher botan_cipher_init botan_cipher_destroy

cipherDestroy :: Cipher -> IO ()
cipherDestroy cipher = finalizeForeignPtr (getCipherForeignPtr cipher)

withCipher :: CipherName -> CipherInitFlags -> (Cipher -> IO a) -> IO a
withCipher = mkWithTemp2 cipherInit cipherDestroy

cipherName :: Cipher -> IO CipherName
cipherName = mkGetName withCipherPtr botan_cipher_name

cipherOutputLength :: Cipher -> Int -> IO Int
cipherOutputLength = mkGetSize_csize withCipherPtr botan_cipher_output_length

-- NOTE: Unique function form?
cipherValidNonceLength :: Cipher -> Int -> IO Bool
cipherValidNonceLength = mkGetSuccessCode_csize withCipherPtr botan_cipher_valid_nonce_length

cipherGetTagLength :: Cipher -> IO Int
cipherGetTagLength = mkGetSize withCipherPtr botan_cipher_get_tag_length

cipherGetDefaultNonceLength :: Cipher -> IO Int
cipherGetDefaultNonceLength = mkGetSize withCipherPtr botan_cipher_get_default_nonce_length

cipherGetUpdateGranularity :: Cipher -> IO Int
cipherGetUpdateGranularity = mkGetSize withCipherPtr botan_cipher_get_update_granularity

cipherGetIdealUpdateGranularity :: Cipher -> IO Int
cipherGetIdealUpdateGranularity = mkGetSize withCipherPtr botan_cipher_get_ideal_update_granularity

cipherQueryKeylen :: Cipher -> IO (Int,Int)
cipherQueryKeylen = mkGetSizes2 withCipherPtr botan_cipher_query_keylen

cipherGetKeyspec :: Cipher -> IO (Int,Int,Int)
cipherGetKeyspec = mkGetSizes3 withCipherPtr botan_cipher_get_keyspec

cipherSetKey :: Cipher -> ByteString -> IO ()
cipherSetKey = mkSetBytesLen withCipherPtr botan_cipher_set_key

cipherReset :: Cipher -> IO ()
cipherReset = mkAction withCipherPtr botan_cipher_reset

cipherSetAssociatedData :: Cipher -> ByteString -> IO ()
cipherSetAssociatedData = mkSetBytesLen withCipherPtr botan_cipher_set_associated_data

cipherStart :: Cipher -> ByteString -> IO ()
cipherStart = mkSetBytesLen withCipherPtr botan_cipher_start

cipherUpdate :: Cipher -> CipherUpdateFlags -> Int -> ByteString -> IO (Int,ByteString)
cipherUpdate cipher flags outputSz input = withCipherPtr cipher $ \ cipherPtr -> do
    asBytesLen input $ \ inputPtr inputSz -> do
        alloca $ \ consumedPtr -> do
            alloca $ \ writtenPtr -> do
                -- Or just allocBytes outputSz $ \ _ -> return (); unsafeAsBytes ...
                output <- allocBytes outputSz $ \ outputPtr -> do
                    throwBotanIfNegative_ $ botan_cipher_update
                        cipherPtr
                        flags
                        outputPtr
                        (fromIntegral outputSz)
                        writtenPtr
                        inputPtr
                        inputSz
                        consumedPtr
                consumed <- fromIntegral <$> peek consumedPtr
                written <- fromIntegral <$> peek writtenPtr
                return $ (consumed, ByteString.copy $ ByteString.take written output)

cipherClear :: Cipher -> IO ()
cipherClear = mkAction withCipherPtr botan_cipher_clear
