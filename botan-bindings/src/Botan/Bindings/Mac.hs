module Botan.Bindings.Mac where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

-- /*
-- * Message Authentication type
-- */
-- typedef struct botan_mac_struct* botan_mac_t;
data MacStruct
type MacPtr = Ptr MacStruct

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

-- /**
-- * Writes the output length of the message authentication code to *output_length
-- * @param mac mac object
-- * @param output_length output buffer to hold the MAC output length
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_mac_output_length(botan_mac_t mac, size_t* output_length);
foreign import ccall unsafe botan_mac_output_length :: MacPtr -> Ptr CSize -> IO BotanErrorCode

-- /**
-- * Sets the key on the MAC
-- * @param mac mac object
-- * @param key buffer holding the key
-- * @param key_len size of the key buffer in bytes
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_mac_set_key(botan_mac_t mac, const uint8_t* key, size_t key_len);
foreign import ccall unsafe botan_mac_set_key :: MacPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- /**
-- * Sets the nonce on the MAC
-- * @param mac mac object
-- * @param nonce buffer holding the key
-- * @param nonce_len size of the key buffer in bytes
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(3,0) int botan_mac_set_nonce(botan_mac_t mac, const uint8_t* nonce, size_t nonce_len);
foreign import ccall unsafe botan_mac_set_nonce :: MacPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- /**
-- * Send more input to the message authentication code
-- * @param mac mac object
-- * @param buf input buffer
-- * @param len number of bytes to read from the input buffer
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_mac_update(botan_mac_t mac, const uint8_t* buf, size_t len);
foreign import ccall unsafe botan_mac_update :: MacPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

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

-- /**
-- * Reinitializes the state of the MAC computation. A MAC can
-- * be computed (with update/final) immediately.
-- * @param mac mac object
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_mac_clear(botan_mac_t mac);
foreign import ccall unsafe botan_mac_clear :: MacPtr -> IO BotanErrorCode

-- /**
-- * Get the name of this MAC
-- * @param mac the object to read
-- * @param name output buffer
-- * @param name_len on input, the length of buffer, on success the number of bytes written
-- */
-- BOTAN_PUBLIC_API(2,8) int botan_mac_name(botan_mac_t mac, char* name, size_t* name_len);
foreign import ccall unsafe botan_mac_name :: MacPtr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

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
