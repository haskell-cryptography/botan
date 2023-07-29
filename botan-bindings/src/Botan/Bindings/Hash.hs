module Botan.Bindings.Hash where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

-- /*
-- * Hash type
-- */
-- typedef struct botan_hash_struct* botan_hash_t;

data HashStruct
type HashPtr = Ptr HashStruct

-- /**
-- * Initialize a hash function object
-- * @param hash hash object
-- * @param hash_name name of the hash function, e.g., "SHA-384"
-- * @param flags should be 0 in current API revision, all other uses are reserved
-- *       and return BOTAN_FFI_ERROR_BAD_FLAG
-- */
-- BOTAN_FFI_EXPORT(2, 0) int botan_hash_init(botan_hash_t* hash, const char* hash_name, uint32_t flags);
foreign import ccall unsafe botan_hash_init :: Ptr HashPtr -> Ptr CChar -> Word32 -> IO BotanErrorCode

-- /**
-- * Frees all resources of the hash object
-- * @param hash hash object
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_FFI_EXPORT(2, 0) int botan_hash_destroy(botan_hash_t hash);
foreign import ccall unsafe "&botan_hash_destroy" botan_hash_destroy :: FinalizerPtr HashStruct

-- /**
-- * Get the name of this hash function
-- * @param hash the object to read
-- * @param name output buffer
-- * @param name_len on input, the length of buffer, on success the number of bytes written
-- */
-- BOTAN_FFI_EXPORT(2, 8) int botan_hash_name(botan_hash_t hash, char* name, size_t* name_len);
foreign import ccall unsafe botan_hash_name :: HashPtr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

-- /**
-- * Copy the state of a hash function object
-- * @param dest destination hash object
-- * @param source source hash object
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_FFI_EXPORT(2, 2) int botan_hash_copy_state(botan_hash_t* dest, const botan_hash_t source);
foreign import ccall unsafe botan_hash_copy_state :: Ptr HashPtr -> HashPtr -> IO BotanErrorCode

-- /**
-- * Reinitializes the state of the hash computation. A hash can
-- * be computed (with update/final) immediately.
-- * @param hash hash object
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_FFI_EXPORT(2, 0) int botan_hash_clear(botan_hash_t hash);
foreign import ccall unsafe botan_hash_clear :: HashPtr -> IO BotanErrorCode

-- /**
-- * Writes the block size of the hash function to *block_size
-- * @param hash hash object
-- * @param block_size output buffer to hold the hash function output length
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_FFI_EXPORT(2, 2) int botan_hash_block_size(botan_hash_t hash, size_t* block_size);
foreign import ccall unsafe botan_hash_block_size :: HashPtr -> Ptr CSize -> IO BotanErrorCode

-- /**
-- * Writes the output length of the hash function to *output_length
-- * @param hash hash object
-- * @param output_length output buffer to hold the hash function output length
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_FFI_EXPORT(2, 0) int botan_hash_output_length(botan_hash_t hash, size_t* output_length);
foreign import ccall unsafe botan_hash_output_length :: HashPtr -> Ptr CSize -> IO BotanErrorCode

-- /**
-- * Send more input to the hash function
-- * @param hash hash object
-- * @param in input buffer
-- * @param in_len number of bytes to read from the input buffer
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_FFI_EXPORT(2, 0) int botan_hash_update(botan_hash_t hash, const uint8_t* in, size_t in_len);
foreign import ccall unsafe botan_hash_update :: HashPtr -> Ptr Word8  -> CSize -> IO BotanErrorCode

-- /**
-- * Finalizes the hash computation and writes the output to
-- * out[0:botan_hash_output_length()] then reinitializes for computing
-- * another digest as if botan_hash_clear had been called.
-- * @param hash hash object
-- * @param out output buffer
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_FFI_EXPORT(2, 0) int botan_hash_final(botan_hash_t hash, uint8_t out[]);
foreign import ccall unsafe botan_hash_final :: HashPtr -> Ptr Word8 -> IO BotanErrorCode
