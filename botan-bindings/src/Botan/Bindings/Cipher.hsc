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

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.Cipher where

import Botan.Bindings.Prelude

#include <botan/ffi.h>

-- | Opaque Cipher struct
data {-# CTYPE "botan/ffi.h" "struct botan_cipher_struct" #-} BotanCipherStruct

-- | Botan Cipher object
newtype {-# CTYPE "botan/ffi.h" "botan_cipher_t" #-} BotanCipher
    = MkBotanCipher { runBotanCipher :: Ptr BotanCipherStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy the cipher object
foreign import capi safe "botan/ffi.h &botan_cipher_destroy"
    botan_cipher_destroy
        :: FinalizerPtr BotanCipherStruct

pattern BOTAN_CIPHER_MODE_CBC
    ,   BOTAN_CIPHER_MODE_CFB
    ,   BOTAN_CIPHER_MODE_XTS
    ::  (Eq a, IsString a) => a

pattern BOTAN_CIPHER_MODE_CBC = "CBC"
pattern BOTAN_CIPHER_MODE_CFB = "CFB"
pattern BOTAN_CIPHER_MODE_XTS = "XTS"

pattern BOTAN_CBC_PADDING_PKCS7
    ,   BOTAN_CBC_PADDING_ONE_AND_ZEROES
    ,   BOTAN_CBC_PADDING_X9_23
    ,   BOTAN_CBC_PADDING_ESP
    ,   BOTAN_CBC_PADDING_CTS
    ,   BOTAN_CBC_PADDING_NO_PADDING
    ::  (Eq a, IsString a) => a

pattern BOTAN_CBC_PADDING_PKCS7             = "PKCS7"
pattern BOTAN_CBC_PADDING_ONE_AND_ZEROES    = "OneAndZeros"
pattern BOTAN_CBC_PADDING_X9_23             = "X9.23"
pattern BOTAN_CBC_PADDING_ESP               = "ESP"
pattern BOTAN_CBC_PADDING_CTS               = "CTS"
pattern BOTAN_CBC_PADDING_NO_PADDING        = "NoPadding"

pattern BOTAN_AEAD_CHACHA20POLY1305
    ::  (Eq a, IsString a) => a

pattern BOTAN_AEAD_CHACHA20POLY1305 = "ChaCha20Poly1305"

pattern BOTAN_AEAD_MODE_GCM
    ,   BOTAN_AEAD_MODE_OCB
    ,   BOTAN_AEAD_MODE_EAX
    ,   BOTAN_AEAD_MODE_SIV
    ,   BOTAN_AEAD_MODE_CCM
    ::  (Eq a, IsString a) => a

pattern BOTAN_AEAD_MODE_GCM         = "GCM"
pattern BOTAN_AEAD_MODE_OCB         = "OCB"
pattern BOTAN_AEAD_MODE_EAX         = "EAX"
pattern BOTAN_AEAD_MODE_SIV         = "SIV"
pattern BOTAN_AEAD_MODE_CCM         = "CCM"

pattern BOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION
    ,   BOTAN_CIPHER_INIT_FLAG_ENCRYPT
    ,   BOTAN_CIPHER_INIT_FLAG_DECRYPT
    ::  (Eq a, Num a) => a
pattern BOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION = #const BOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION
pattern BOTAN_CIPHER_INIT_FLAG_ENCRYPT        = #const BOTAN_CIPHER_INIT_FLAG_ENCRYPT
pattern BOTAN_CIPHER_INIT_FLAG_DECRYPT        = #const BOTAN_CIPHER_INIT_FLAG_DECRYPT

-- | Initialize a cipher object
foreign import capi safe "botan/ffi.h botan_cipher_init"
    botan_cipher_init
        :: Ptr BotanCipher  -- ^ cipher
        -> ConstPtr CChar   -- ^ name
        -> Word32           -- ^ flags
        -> IO CInt

-- | Return the name of the cipher object
foreign import capi safe "botan/ffi.h botan_cipher_name"
    botan_cipher_name
        :: BotanCipher  -- ^ cipher
        -> Ptr CChar    -- ^ name
        -> Ptr CSize    -- ^ name_len
        -> IO CInt

-- | Return the output length of this cipher, for a particular input length.
foreign import capi safe "botan/ffi.h botan_cipher_output_length"
    botan_cipher_output_length
        :: BotanCipher  -- ^ cipher
        -> CSize        -- ^ in_len
        -> Ptr CSize    -- ^ out_len
        -> IO CInt

-- | Return if the specified nonce length is valid for this cipher
--   (0 / SUCCESS if valid, 1 / INVALID_IDENTIFIER if not)
foreign import capi safe "botan/ffi.h botan_cipher_valid_nonce_length"
    botan_cipher_valid_nonce_length
        :: BotanCipher  -- ^ cipher
        -> CSize        -- ^ nl
        -> IO CInt

-- | Get the tag length of the cipher (0 for non-AEAD modes)
foreign import capi safe "botan/ffi.h botan_cipher_get_tag_length"
    botan_cipher_get_tag_length
        :: BotanCipher  -- ^ cipher
        -> Ptr CSize    -- ^ tag_size
        -> IO CInt

-- | Get the default nonce length of this cipher
foreign import capi safe "botan/ffi.h botan_cipher_get_default_nonce_length"
    botan_cipher_get_default_nonce_length
        :: BotanCipher  -- ^ cipher
        -> Ptr CSize    -- ^ nl
        -> IO CInt

-- | Return the update granularity of the cipher;
--   botan_cipher_update must be called with blocks of this size, except for the final.
foreign import capi safe "botan/ffi.h botan_cipher_get_update_granularity"
    botan_cipher_get_update_granularity
        :: BotanCipher  -- ^ cipher
        -> Ptr CSize    -- ^ ug
        -> IO CInt

{-
Return the ideal update granularity of the cipher.
This is some multiple of the update granularity,
reflecting possibilities for optimization.
-}
foreign import capi safe "botan/ffi.h botan_cipher_get_ideal_update_granularity"
    botan_cipher_get_ideal_update_granularity
        :: BotanCipher  -- ^ cipher
        -> Ptr CSize    -- ^ ug
        -> IO CInt

-- | Get information about the key lengths. Prefer botan_cipher_get_keyspec
foreign import capi safe "botan/ffi.h botan_cipher_query_keylen"
    botan_cipher_query_keylen
        :: BotanCipher  -- ^ cipher
        -> Ptr CSize    -- ^ out_minimum_keylength,
        -> Ptr CSize    -- ^ out_maximum_keylength
        -> IO CInt

-- | Get information about the supported key lengths.
foreign import capi safe "botan/ffi.h botan_cipher_get_keyspec"
    botan_cipher_get_keyspec
        :: BotanCipher  -- ^ cipher
        -> Ptr CSize    -- ^ min_keylen
        -> Ptr CSize    -- ^ max_keylen
        -> Ptr CSize    -- ^ mod_keylen
        -> IO CInt

-- | Set the key for this cipher object
foreign import capi safe "botan/ffi.h botan_cipher_set_key"
    botan_cipher_set_key
        :: BotanCipher      -- ^ cipher
        -> ConstPtr Word8   -- ^ key
        -> CSize            -- ^ key_len
        -> IO CInt

{-
Reset the message specific state for this cipher.
Without resetting the keys, this resets the nonce, and any state
associated with any message bits that have been processed so far.

It is conceptually equivalent to calling botan_cipher_clear followed
by botan_cipher_set_key with the original key.
-}
foreign import capi safe "botan/ffi.h botan_cipher_reset"
    botan_cipher_reset
        :: BotanCipher -- ^ cipher
        -> IO CInt

-- | Set the associated data. Will fail if cipher is not an AEAD
foreign import capi safe "botan/ffi.h botan_cipher_set_associated_data"
    botan_cipher_set_associated_data
        :: BotanCipher      -- ^ cipher,
        -> ConstPtr Word8   -- ^ ad
        -> CSize            -- ^ ad_len
        -> IO CInt

-- | Begin processing a new message using the provided nonce
foreign import capi safe "botan/ffi.h botan_cipher_start"
    botan_cipher_start
        :: BotanCipher      -- ^ cipher
        -> ConstPtr Word8   -- ^ nonce
        -> CSize            -- ^ nonce_len
        -> IO CInt

-- TODO: Maybe move to Botan.Low.Cipher
pattern BOTAN_CIPHER_UPDATE_FLAG_NONE
    ,   BOTAN_CIPHER_UPDATE_FLAG_FINAL
    ::  (Eq a, Num a) => a
pattern BOTAN_CIPHER_UPDATE_FLAG_NONE = 0
pattern BOTAN_CIPHER_UPDATE_FLAG_FINAL = #const BOTAN_CIPHER_UPDATE_FLAG_FINAL

-- | Encrypt some data
foreign import capi safe "botan/ffi.h botan_cipher_update"
    botan_cipher_update
        :: BotanCipher      -- ^ cipher
        -> Word32           -- ^ flags
        -> Ptr Word8        -- ^ output[]
        -> CSize            -- ^ output_size
        -> Ptr CSize        -- ^ output_written
        -> ConstPtr Word8   -- ^ input_bytes[]
        -> CSize            -- ^ input_size
        -> Ptr CSize        -- ^ input_consumed
        -> IO CInt

-- | Reset the key, nonce, AD and all other state on this cipher object
foreign import capi safe "botan/ffi.h botan_cipher_clear"
    botan_cipher_clear
        :: BotanCipher -- ^ hash
        -> IO CInt
