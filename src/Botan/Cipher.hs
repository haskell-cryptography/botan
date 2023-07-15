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

type CipherFlags = Word32

-- #define BOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION 1 -- Use is not documented, equal to decrypt
-- #define BOTAN_CIPHER_INIT_FLAG_ENCRYPT 0
-- #define BOTAN_CIPHER_INIT_FLAG_DECRYPT 1
pattern BOTAN_CIPHER_INIT_FLAG_ENCRYPT = 0 :: CipherFlags
pattern BOTAN_CIPHER_INIT_FLAG_DECRYPT = 1 :: CipherFlags

-- /**
-- * Initialize a cipher object
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_cipher_init(botan_cipher_t* cipher, const char* name, uint32_t flags);
foreign import ccall unsafe botan_cipher_init :: Ptr CipherPtr -> CString -> CipherFlags -> IO BotanErrorCode

-- /**
-- * Destroy the cipher object
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_cipher_destroy(botan_cipher_t cipher);
foreign import ccall unsafe "&botan_cipher_destroy" botan_cipher_destroy :: FinalizerPtr CipherStruct

cipherInit :: CipherName -> CipherFlags -> IO Cipher
cipherInit = mkInit_name_flags MkCipher botan_cipher_init botan_cipher_destroy

