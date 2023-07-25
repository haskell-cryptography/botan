module Botan.Cipher where

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

-- NOTE: This is *symmetric* ciphers
--  For the 'raw' interface to ECB mode block ciphers, see BlockCipher.hs

-- /*
-- * Cipher modes
-- */
-- typedef struct botan_cipher_struct* botan_cipher_t;

data CipherStruct
type CipherPtr = Ptr CipherStruct

newtype Cipher = MkCipher { getCipherForeignPtr :: ForeignPtr CipherStruct }

withCipherPtr :: Cipher -> (CipherPtr -> IO a) -> IO a
withCipherPtr = withForeignPtr . getCipherForeignPtr

type CipherName = ByteString
type CipherNonce = ByteString
type CipherKey = ByteString

type CipherInitFlags = Word32

-- #define BOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION 1 -- Use is not documented, equal to decrypt
-- #define BOTAN_CIPHER_INIT_FLAG_ENCRYPT 0
-- #define BOTAN_CIPHER_INIT_FLAG_DECRYPT 1
pattern BOTAN_CIPHER_INIT_FLAG_ENCRYPT = 0 :: CipherInitFlags
pattern BOTAN_CIPHER_INIT_FLAG_DECRYPT = 1 :: CipherInitFlags

-- /**
-- * Initialize a cipher object
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_cipher_init(botan_cipher_t* cipher, const char* name, uint32_t flags);
foreign import ccall unsafe botan_cipher_init :: Ptr CipherPtr -> CString -> CipherInitFlags -> IO BotanErrorCode

-- /**
-- * Destroy the cipher object
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_cipher_destroy(botan_cipher_t cipher);
foreign import ccall unsafe "&botan_cipher_destroy" botan_cipher_destroy :: FinalizerPtr CipherStruct

cipherInit :: CipherName -> CipherInitFlags -> IO Cipher
cipherInit = mkInit_name_flags MkCipher botan_cipher_init botan_cipher_destroy

cipherDestroy :: Cipher -> IO ()
cipherDestroy cipher = finalizeForeignPtr (getCipherForeignPtr cipher)

withCipher :: CipherName -> CipherInitFlags -> (Cipher -> IO a) -> IO a
withCipher = mkWithTemp2 cipherInit cipherDestroy

-- /**
-- * Return the name of the cipher object
-- */
-- BOTAN_PUBLIC_API(2,8) int botan_cipher_name(botan_cipher_t cipher, char* name, size_t* name_len);
foreign import ccall unsafe botan_cipher_name :: CipherPtr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

cipherName :: Cipher -> IO CipherName
cipherName = mkGetName withCipherPtr botan_cipher_name

-- /**
-- * Return the output length of this cipher, for a particular input length.
-- */
-- BOTAN_PUBLIC_API(2,8) int botan_cipher_output_length(botan_cipher_t cipher, size_t in_len, size_t* out_len);
foreign import ccall unsafe botan_cipher_output_length :: CipherPtr -> CSize -> Ptr CSize -> IO BotanErrorCode

cipherOutputLength :: Cipher -> Int -> IO Int
cipherOutputLength = mkGetSize_csize withCipherPtr botan_cipher_output_length

-- /**
-- * Return if the specified nonce length is valid for this cipher
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_cipher_valid_nonce_length(botan_cipher_t cipher, size_t nl);
-- NOTE: returns 0 / SUCCESS if valid, 1 / INVALID_IDENTIFIER if not
foreign import ccall unsafe botan_cipher_valid_nonce_length :: CipherPtr -> CSize -> IO BotanErrorCode

-- NOTE: Unique function form?
cipherValidNonceLength :: Cipher -> Int -> IO Bool
cipherValidNonceLength = mkGetSuccessCode_csize withCipherPtr botan_cipher_valid_nonce_length

-- /**
-- * Get the tag length of the cipher (0 for non-AEAD modes)
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_cipher_get_tag_length(botan_cipher_t cipher, size_t* tag_size);
foreign import ccall unsafe botan_cipher_get_tag_length :: CipherPtr -> Ptr CSize -> IO BotanErrorCode

cipherGetTagLength :: Cipher -> IO Int
cipherGetTagLength = mkGetSize withCipherPtr botan_cipher_get_tag_length

-- /**
-- * Get the default nonce length of this cipher
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_cipher_get_default_nonce_length(botan_cipher_t cipher, size_t* nl);
foreign import ccall unsafe botan_cipher_get_default_nonce_length :: CipherPtr -> Ptr CSize -> IO BotanErrorCode

cipherGetDefaultNonceLength :: Cipher -> IO Int
cipherGetDefaultNonceLength = mkGetSize withCipherPtr botan_cipher_get_default_nonce_length

-- /**
-- * Return the update granularity of the cipher; botan_cipher_update must be
-- * called with blocks of this size, except for the final.
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_cipher_get_update_granularity(botan_cipher_t cipher, size_t* ug);
foreign import ccall unsafe botan_cipher_get_update_granularity :: CipherPtr -> Ptr CSize -> IO BotanErrorCode

cipherGetUpdateGranularity :: Cipher -> IO Int
cipherGetUpdateGranularity = mkGetSize withCipherPtr botan_cipher_get_update_granularity

-- /**
-- * Return the ideal update granularity of the cipher. This is some multiple of the
-- * update granularity, reflecting possibilities for optimization.
-- */
-- BOTAN_PUBLIC_API(3,0) int botan_cipher_get_ideal_update_granularity(botan_cipher_t cipher, size_t* ug);
foreign import ccall unsafe botan_cipher_get_ideal_update_granularity :: CipherPtr -> Ptr CSize -> IO BotanErrorCode

cipherGetIdealUpdateGranularity :: Cipher -> IO Int
cipherGetIdealUpdateGranularity = mkGetSize withCipherPtr botan_cipher_get_ideal_update_granularity

-- /**
-- * Get information about the key lengths. Prefer botan_cipher_get_keyspec
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_cipher_query_keylen(botan_cipher_t,
--                                         size_t* out_minimum_keylength,
--                                         size_t* out_maximum_keylength);
foreign import ccall unsafe botan_cipher_query_keylen :: CipherPtr -> Ptr CSize -> Ptr CSize -> IO BotanErrorCode

cipherQueryKeylen :: Cipher -> IO (Int,Int)
cipherQueryKeylen = mkGetSizes2 withCipherPtr botan_cipher_query_keylen

-- /**
-- * Get information about the supported key lengths.
-- */
-- BOTAN_PUBLIC_API(2,8) int botan_cipher_get_keyspec(botan_cipher_t,
--                                                    size_t* min_keylen,
--                                                    size_t* max_keylen,
--                                                    size_t* mod_keylen);
foreign import ccall unsafe botan_cipher_get_keyspec :: CipherPtr -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO BotanErrorCode

cipherGetKeyspec :: Cipher -> IO (Int,Int,Int)
cipherGetKeyspec = mkGetSizes3 withCipherPtr botan_cipher_get_keyspec

-- /**
-- * Set the key for this cipher object
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_cipher_set_key(botan_cipher_t cipher,
--                                                const uint8_t* key, size_t key_len);
foreign import ccall unsafe botan_cipher_set_key :: CipherPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

cipherSetKey :: Cipher -> ByteString -> IO ()
cipherSetKey = mkSetBytesLen withCipherPtr botan_cipher_set_key

-- /**
-- * Reset the message specific state for this cipher.
-- * Without resetting the keys, this resets the nonce, and any state
-- * associated with any message bits that have been processed so far.
-- *
-- * It is conceptually equivalent to calling botan_cipher_clear followed
-- * by botan_cipher_set_key with the original key.
-- */
-- BOTAN_PUBLIC_API(2,8) int botan_cipher_reset(botan_cipher_t cipher);
foreign import ccall unsafe botan_cipher_reset :: CipherPtr -> IO BotanErrorCode

cipherReset :: Cipher -> IO ()
cipherReset = mkAction withCipherPtr botan_cipher_reset

-- /**
-- * Set the associated data. Will fail if cipher is not an AEAD
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_cipher_set_associated_data(botan_cipher_t cipher,
--                                                const uint8_t* ad, size_t ad_len);
foreign import ccall unsafe botan_cipher_set_associated_data :: CipherPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

cipherSetAssociatedData :: Cipher -> ByteString -> IO ()
cipherSetAssociatedData = mkSetBytesLen withCipherPtr botan_cipher_set_associated_data

-- /**
-- * Begin processing a new message using the provided nonce
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_cipher_start(botan_cipher_t cipher,
--                                  const uint8_t* nonce, size_t nonce_len);
foreign import ccall unsafe botan_cipher_start :: CipherPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

cipherStart :: Cipher -> ByteString -> IO ()
cipherStart = mkSetBytesLen withCipherPtr botan_cipher_start

-- #define BOTAN_CIPHER_UPDATE_FLAG_FINAL (1U << 0)

type CipherUpdateFlags = Word32

pattern BOTAN_CIPHER_UPDATE_FLAG_NONE = 0 :: CipherUpdateFlags -- NOTE: Not canonical flag
pattern BOTAN_CIPHER_UPDATE_FLAG_FINAL = 1 :: CipherUpdateFlags

-- /**
-- * Encrypt some data
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_cipher_update(botan_cipher_t cipher,
--                                   uint32_t flags,
--                                   uint8_t output[],
--                                   size_t output_size,
--                                   size_t* output_written,
--                                   const uint8_t input_bytes[],
--                                   size_t input_size,
--                                   size_t* input_consumed);
foreign import ccall unsafe botan_cipher_update
    :: CipherPtr
    -> CipherUpdateFlags
    -> Ptr Word8    -- output
    -> CSize        -- output_size
    -> Ptr CSize    -- output_written
    -> Ptr Word8    -- input_bytes
    -> CSize        -- input_size
    -> Ptr CSize    -- input_consumed
    -> IO BotanErrorCode

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

-- /**
-- * Reset the key, nonce, AD and all other state on this cipher object
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_cipher_clear(botan_cipher_t hash);
foreign import ccall unsafe botan_cipher_clear :: CipherPtr -> IO BotanErrorCode

cipherClear :: Cipher -> IO ()
cipherClear = mkAction withCipherPtr botan_cipher_clear
