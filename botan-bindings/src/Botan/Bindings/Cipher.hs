{-|
Module      : Botan.Bindings.Cipher
Description : Symmetric cipher modes
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

A block cipher by itself, is only able to securely encrypt a single
data block. To be able to securely encrypt data of arbitrary length,
a mode of operation applies the block cipher’s single block operation
repeatedly to encrypt an entire message.
-}

module Botan.Bindings.Cipher where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

-- NOTE: This is *symmetric* ciphers
--  For the 'raw' interface to ECB mode block ciphers, see BlockCipher.hs

{-|
Opaque cipher object

@typedef struct botan_cipher_struct* botan_cipher_t;@
-}

data CipherStruct
type CipherPtr = Ptr CipherStruct

type CipherInitFlags = Word32

-- #define BOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION 1 -- Use is not documented, equal to decrypt
-- #define BOTAN_CIPHER_INIT_FLAG_ENCRYPT 0
-- #define BOTAN_CIPHER_INIT_FLAG_DECRYPT 1
pattern BOTAN_CIPHER_INIT_FLAG_ENCRYPT = 0 :: CipherInitFlags
pattern BOTAN_CIPHER_INIT_FLAG_DECRYPT = 1 :: CipherInitFlags

{-|
Initialize a cipher object

@BOTAN_PUBLIC_API(2,0) int botan_cipher_init(botan_cipher_t* cipher, const char* name, uint32_t flags);@
-}
foreign import ccall unsafe botan_cipher_init :: Ptr CipherPtr -> CString -> CipherInitFlags -> IO BotanErrorCode

{-|
Destroy the cipher object

- \@return 0 if success, error if invalid object handle

@BOTAN_PUBLIC_API(2,0) int botan_cipher_destroy(botan_cipher_t cipher);@
-}
foreign import ccall unsafe "&botan_cipher_destroy" botan_cipher_destroy :: FinalizerPtr CipherStruct

{-|
Return the name of the cipher object

@BOTAN_PUBLIC_API(2,8) int botan_cipher_name(botan_cipher_t cipher, char* name, size_t* name_len);@
-}
foreign import ccall unsafe botan_cipher_name :: CipherPtr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

{-|
Return the output length of this cipher, for a particular input length.

@BOTAN_PUBLIC_API(2,8) int botan_cipher_output_length(botan_cipher_t cipher, size_t in_len, size_t* out_len);@
-}
foreign import ccall unsafe botan_cipher_output_length :: CipherPtr -> CSize -> Ptr CSize -> IO BotanErrorCode

{-|
Return if the specified nonce length is valid for this cipher (0 / SUCCESS if valid, 1 / INVALID_IDENTIFIER if not)

@BOTAN_PUBLIC_API(2,0) int botan_cipher_valid_nonce_length(botan_cipher_t cipher, size_t nl);@
-}
foreign import ccall unsafe botan_cipher_valid_nonce_length :: CipherPtr -> CSize -> IO BotanErrorCode

{-|
Get the tag length of the cipher (0 for non-AEAD modes)

@BOTAN_PUBLIC_API(2,0) int botan_cipher_get_tag_length(botan_cipher_t cipher, size_t* tag_size);@
-}
foreign import ccall unsafe botan_cipher_get_tag_length :: CipherPtr -> Ptr CSize -> IO BotanErrorCode

{-|
Get the default nonce length of this cipher

@BOTAN_PUBLIC_API(2,0) int botan_cipher_get_default_nonce_length(botan_cipher_t cipher, size_t* nl);@
-}
foreign import ccall unsafe botan_cipher_get_default_nonce_length :: CipherPtr -> Ptr CSize -> IO BotanErrorCode

{-|
Return the update granularity of the cipher; botan_cipher_update must be
called with blocks of this size, except for the final.

@BOTAN_PUBLIC_API(2,0) int botan_cipher_get_update_granularity(botan_cipher_t cipher, size_t* ug);@
-}
foreign import ccall unsafe botan_cipher_get_update_granularity :: CipherPtr -> Ptr CSize -> IO BotanErrorCode

{-|
Return the ideal update granularity of the cipher. This is some multiple of the
update granularity, reflecting possibilities for optimization.

@BOTAN_PUBLIC_API(3,0) int botan_cipher_get_ideal_update_granularity(botan_cipher_t cipher, size_t* ug);@
-}
foreign import ccall unsafe botan_cipher_get_ideal_update_granularity :: CipherPtr -> Ptr CSize -> IO BotanErrorCode

{-|
Get information about the key lengths. Prefer botan_cipher_get_keyspec

@BOTAN_PUBLIC_API(2,0) int botan_cipher_query_keylen(botan_cipher_t,
                                        size_t* out_minimum_keylength,
                                        size_t* out_maximum_keylength);@
-}

foreign import ccall unsafe botan_cipher_query_keylen :: CipherPtr -> Ptr CSize -> Ptr CSize -> IO BotanErrorCode

{-|
Get information about the supported key lengths.

@BOTAN_PUBLIC_API(2,8) int botan_cipher_get_keyspec(botan_cipher_t,
                                                   size_t* min_keylen,
                                                   size_t* max_keylen,
                                                   size_t* mod_keylen);@
-}
foreign import ccall unsafe botan_cipher_get_keyspec :: CipherPtr -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO BotanErrorCode

{-|
Set the key for this cipher object

@BOTAN_PUBLIC_API(2,0) int botan_cipher_set_key(botan_cipher_t cipher,
                                               const uint8_t* key, size_t key_len);@
-}
foreign import ccall unsafe botan_cipher_set_key :: CipherPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

{-|
Reset the message specific state for this cipher.
Without resetting the keys, this resets the nonce, and any state
associated with any message bits that have been processed so far.

It is conceptually equivalent to calling botan_cipher_clear followed
by botan_cipher_set_key with the original key.

@BOTAN_PUBLIC_API(2,8) int botan_cipher_reset(botan_cipher_t cipher);@
-}
foreign import ccall unsafe botan_cipher_reset :: CipherPtr -> IO BotanErrorCode

{-|
Set the associated data. Will fail if cipher is not an AEAD

@BOTAN_PUBLIC_API(2,0) int botan_cipher_set_associated_data(botan_cipher_t cipher,
                                               const uint8_t* ad, size_t ad_len);@
-}
foreign import ccall unsafe botan_cipher_set_associated_data :: CipherPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

{-|
Begin processing a new message using the provided nonce

@BOTAN_PUBLIC_API(2,0) int botan_cipher_start(botan_cipher_t cipher,
                                 const uint8_t* nonce, size_t nonce_len);@
-}
foreign import ccall unsafe botan_cipher_start :: CipherPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- #define BOTAN_CIPHER_UPDATE_FLAG_FINAL (1U << 0)

type CipherUpdateFlags = Word32

pattern BOTAN_CIPHER_UPDATE_FLAG_NONE = 0 :: CipherUpdateFlags -- NOTE: Not canonical flag
pattern BOTAN_CIPHER_UPDATE_FLAG_FINAL = 1 :: CipherUpdateFlags

{-|
Encrypt some data

@BOTAN_PUBLIC_API(2,0) int botan_cipher_update(botan_cipher_t cipher,
                                  uint32_t flags,
                                  uint8_t output[],
                                  size_t output_size,
                                  size_t* output_written,
                                  const uint8_t input_bytes[],
                                  size_t input_size,
                                  size_t* input_consumed);@
-}
foreign import ccall safe botan_cipher_update
    :: CipherPtr
    -> CipherUpdateFlags
    -> Ptr Word8    -- output
    -> CSize        -- output_size
    -> Ptr CSize    -- output_written
    -> Ptr Word8    -- input_bytes
    -> CSize        -- input_size
    -> Ptr CSize    -- input_consumed
    -> IO BotanErrorCode

{-|
Reset the key, nonce, AD and all other state on this cipher object

@BOTAN_PUBLIC_API(2,0) int botan_cipher_clear(botan_cipher_t hash);@@
-}
foreign import ccall unsafe botan_cipher_clear :: CipherPtr -> IO BotanErrorCode
