module Botan.Mac where

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

-- /*
-- * Message Authentication type
-- */
-- typedef struct botan_mac_struct* botan_mac_t;
data MacStruct
type MacPtr = Ptr MacStruct

newtype Mac = MkMac { getMacForeignPtr :: ForeignPtr MacStruct }

withMacPtr :: Mac -> (MacPtr -> IO a) -> IO a
withMacPtr = withForeignPtr . getMacForeignPtr

type MacName = ByteString

-- data MacType
--     = HMAC_SHA256

-- withMacType :: MacType -> (CString -> IO a) -> IO a
-- withMacType HMAC_SHA256 = ByteString.useAsCString "HMAC(SHA-256)"

type MacFlags = Word32

-- /**
-- * Initialize a message authentication code object
-- * @param mac mac object
-- * @param mac_name name of the hash function, e.g., "HMAC(SHA-384)"
-- * @param flags should be 0 in current API revision, all other uses are reserved
-- *       and return a negative value (error code)
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_mac_init(botan_mac_t* mac, const char* mac_name, uint32_t flags);
foreign import ccall unsafe botan_mac_init :: Ptr MacPtr -> CString -> MacFlags -> IO BotanErrorCode

-- /**
-- * Frees all resources of the MAC object
-- * @param mac mac object
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_mac_destroy(botan_mac_t mac);
foreign import ccall unsafe "&botan_mac_destroy" botan_mac_destroy :: FinalizerPtr MacStruct

macInit :: MacName -> IO Mac
macInit name = mkInit_name_flags MkMac botan_mac_init botan_mac_destroy name 0

macDestroy :: Mac -> IO ()
macDestroy mac = finalizeForeignPtr (getMacForeignPtr mac)

withMac :: MacName -> (Mac -> IO a) -> IO a
withMac = mkWithTemp1 macInit macDestroy

-- /**
-- * Writes the output length of the message authentication code to *output_length
-- * @param mac mac object
-- * @param output_length output buffer to hold the MAC output length
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_mac_output_length(botan_mac_t mac, size_t* output_length);
foreign import ccall unsafe botan_mac_output_length :: MacPtr -> Ptr CSize -> IO BotanErrorCode

macOutputLength :: Mac -> IO Int
macOutputLength = mkGetSize withMacPtr botan_mac_output_length

-- /**
-- * Sets the key on the MAC
-- * @param mac mac object
-- * @param key buffer holding the key
-- * @param key_len size of the key buffer in bytes
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_mac_set_key(botan_mac_t mac, const uint8_t* key, size_t key_len);
foreign import ccall unsafe botan_mac_set_key :: MacPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

macSetKey :: Mac -> ByteString -> IO ()
macSetKey = mkSetBytesLen withMacPtr botan_mac_set_key

-- /**
-- * Sets the nonce on the MAC
-- * @param mac mac object
-- * @param nonce buffer holding the key
-- * @param nonce_len size of the key buffer in bytes
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(3,0) int botan_mac_set_nonce(botan_mac_t mac, const uint8_t* nonce, size_t nonce_len);
foreign import ccall unsafe botan_mac_set_nonce :: MacPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- NOTE: Not all MACs require a nonce
--  Eg, GMAC and Poly1305 require a nonce
--  Other MACs do not require a nonce, and will cause a BadParameterException (-32)
macSetNonce :: Mac -> ByteString -> IO ()
macSetNonce = mkSetBytesLen withMacPtr botan_mac_set_nonce

-- /**
-- * Send more input to the message authentication code
-- * @param mac mac object
-- * @param buf input buffer
-- * @param len number of bytes to read from the input buffer
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_mac_update(botan_mac_t mac, const uint8_t* buf, size_t len);
foreign import ccall unsafe botan_mac_update :: MacPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

macUpdate :: Mac -> ByteString -> IO ()
macUpdate = mkSetBytesLen withMacPtr botan_mac_update

-- /**
-- * Finalizes the MAC computation and writes the output to
-- * out[0:botan_mac_output_length()] then reinitializes for computing
-- * another MAC as if botan_mac_clear had been called.
-- * @param mac mac object
-- * @param out output buffer
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_mac_final(botan_mac_t mac, uint8_t out[]);
foreign import ccall unsafe botan_mac_final :: MacPtr -> Ptr Word8 -> IO BotanErrorCode

-- TODO: Digest type
macFinal :: Mac -> IO ByteString
macFinal mac = withMacPtr mac $ \ macPtr -> do
    -- sz <- alloca $ \ szPtr -> do
    --     throwBotanIfNegative_ $ botan_mac_output_length macPtr szPtr
    --     fromIntegral <$> peek szPtr
    sz <- macOutputLength mac
    allocBytes sz $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_mac_final macPtr bytesPtr

-- /**
-- * Reinitializes the state of the MAC computation. A MAC can
-- * be computed (with update/final) immediately.
-- * @param mac mac object
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_mac_clear(botan_mac_t mac);
foreign import ccall unsafe botan_mac_clear :: MacPtr -> IO BotanErrorCode

macClear :: Mac -> IO ()
macClear = mkAction withMacPtr botan_mac_clear

-- /**
-- * Get the name of this MAC
-- * @param mac the object to read
-- * @param name output buffer
-- * @param name_len on input, the length of buffer, on success the number of bytes written
-- */
-- BOTAN_PUBLIC_API(2,8) int botan_mac_name(botan_mac_t mac, char* name, size_t* name_len);
foreign import ccall unsafe botan_mac_name :: MacPtr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

macName :: Mac -> IO ByteString
macName = mkGetName withMacPtr botan_mac_name

-- /**
-- * Get the key length limits of this auth code
-- * @param mac the object to read
-- * @param out_minimum_keylength if non-NULL, will be set to minimum keylength of MAC
-- * @param out_maximum_keylength if non-NULL, will be set to maximum keylength of MAC
-- * @param out_keylength_modulo if non-NULL will be set to byte multiple of valid keys
-- */
-- BOTAN_PUBLIC_API(2,8) int botan_mac_get_keyspec(botan_mac_t mac,
--                                                  size_t* out_minimum_keylength,
--                                                  size_t* out_maximum_keylength,
--                                                  size_t* out_keylength_modulo);
foreign import ccall unsafe botan_mac_get_keyspec
    :: MacPtr
    -> Ptr CSize 
    -> Ptr CSize 
    -> Ptr CSize 
    -> IO BotanErrorCode

macGetKeyspec :: Mac -> IO (Int,Int,Int)
macGetKeyspec = mkGetSizes3 withMacPtr botan_mac_get_keyspec

-- TODO: Proper MACType

-- Currently the following MAC algorithms are available in Botan. In new code, default to HMAC with a strong hash like SHA-256 or SHA-384.

-- CMAC
--
-- A modern CBC-MAC variant that avoids the security problems of plain CBC-MAC. Approved by NIST. Also sometimes called OMAC.
--
-- Available if BOTAN_HAS_CMAC is defined.

-- GMAC
--
-- GMAC is related to the GCM authenticated cipher mode. It is quite slow unless hardware support for carryless multiplications is available. A new nonce must be used with each message authenticated, or otherwise all security is lost.
--
-- Available if BOTAN_HAS_GMAC is defined.
--
-- Warning
--
-- Due to the nonce requirement, GMAC is exceptionally fragile. Avoid it unless absolutely required.

-- HMAC
--
-- A message authentication code based on a hash function. Very commonly used.
--
-- Available if BOTAN_HAS_HMAC is defined.

-- Poly1305
--
-- A polynomial mac (similar to GMAC). Very fast, but tricky to use safely. Forms part of the ChaCha20Poly1305 AEAD mode. A new key must be used for each message, or all security is lost.
--
-- Available if BOTAN_HAS_POLY1305 is defined.
--
-- Warning
--
-- Due to the nonce requirement, Poly1305 is exceptionally fragile. Avoid it unless absolutely required.

-- SipHash
--
-- A modern and very fast PRF. Produces only a 64-bit output. Defaults to “SipHash(2,4)” which is the recommended configuration, using 2 rounds for each input block and 4 rounds for finalization.
--
-- Available if BOTAN_HAS_SIPHASH is defined.

-- X9.19-MAC
--
-- A CBC-MAC variant sometimes used in finance. Always uses DES. Sometimes called the “DES retail MAC”, also standardized in ISO 9797-1.
--
-- It is slow and has known attacks. Avoid unless required.
--
-- Available if BOTAN_HAS_X919_MAC is defined.
