{-|
Module      : Botan.Bindings.Cipher
Description : Symmetric cipher modes
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
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
    ,   BOTAN_CBC_PADDING_ONE_AND_ZEROS
    ,   BOTAN_CBC_PADDING_X9_23
    ,   BOTAN_CBC_PADDING_ESP
    ,   BOTAN_CBC_PADDING_CTS
    ,   BOTAN_CBC_PADDING_NO_PADDING
    ::  (Eq a, IsString a) => a

pattern BOTAN_CBC_PADDING_PKCS7             = "PKCS7"
pattern BOTAN_CBC_PADDING_ONE_AND_ZEROS    = "OneAndZeros"
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
        :: Ptr BotanCipher  -- ^ __cipher__
        -> ConstPtr CChar   -- ^ __name__
        -> Word32           -- ^ __flags__
        -> IO CInt

-- | Return the name of the cipher object
foreign import capi safe "botan/ffi.h botan_cipher_name"
    botan_cipher_name
        :: BotanCipher  -- ^ __cipher__
        -> Ptr CChar    -- ^ __name__
        -> Ptr CSize    -- ^ __name_len__
        -> IO CInt

-- | Return the output length of this cipher, for a particular input length.
foreign import capi safe "botan/ffi.h botan_cipher_output_length"
    botan_cipher_output_length
        :: BotanCipher  -- ^ __cipher__
        -> CSize        -- ^ __in_len__
        -> Ptr CSize    -- ^ __out_len__
        -> IO CInt

-- | Return if the specified nonce length is valid for this cipher
--   (0 / SUCCESS if valid, 1 / INVALID_IDENTIFIER if not)
foreign import capi safe "botan/ffi.h botan_cipher_valid_nonce_length"
    botan_cipher_valid_nonce_length
        :: BotanCipher  -- ^ __cipher__
        -> CSize        -- ^ __nl__
        -> IO CInt

-- | Get the tag length of the cipher (0 for non-AEAD modes)
foreign import capi safe "botan/ffi.h botan_cipher_get_tag_length"
    botan_cipher_get_tag_length
        :: BotanCipher  -- ^ __cipher__
        -> Ptr CSize    -- ^ __tag_size__
        -> IO CInt

-- | Get the default nonce length of this cipher
foreign import capi safe "botan/ffi.h botan_cipher_get_default_nonce_length"
    botan_cipher_get_default_nonce_length
        :: BotanCipher  -- ^ __cipher__
        -> Ptr CSize    -- ^ __nl__
        -> IO CInt

-- | Return the update granularity of the cipher;
--   botan_cipher_update must be called with blocks of this size, except for the final.
foreign import capi safe "botan/ffi.h botan_cipher_get_update_granularity"
    botan_cipher_get_update_granularity
        :: BotanCipher  -- ^ __cipher__
        -> Ptr CSize    -- ^ __ug__
        -> IO CInt

{-
Return the ideal update granularity of the cipher.
This is some multiple of the update granularity,
reflecting possibilities for optimization.
-}
foreign import capi safe "botan/ffi.h botan_cipher_get_ideal_update_granularity"
    botan_cipher_get_ideal_update_granularity
        :: BotanCipher  -- ^ __cipher__
        -> Ptr CSize    -- ^ __ug__
        -> IO CInt

-- | Get information about the key lengths. Prefer botan_cipher_get_keyspec
foreign import capi safe "botan/ffi.h botan_cipher_query_keylen"
    botan_cipher_query_keylen
        :: BotanCipher  -- ^ __cipher__
        -> Ptr CSize    -- ^ __out_minimum_keylength__
        -> Ptr CSize    -- ^ __out_maximum_keylength__
        -> IO CInt

-- | Get information about the supported key lengths.
foreign import capi safe "botan/ffi.h botan_cipher_get_keyspec"
    botan_cipher_get_keyspec
        :: BotanCipher  -- ^ __cipher__
        -> Ptr CSize    -- ^ __min_keylen__
        -> Ptr CSize    -- ^ __max_keylen__
        -> Ptr CSize    -- ^ __mod_keylen__
        -> IO CInt

-- | Set the key for this cipher object
foreign import capi safe "botan/ffi.h botan_cipher_set_key"
    botan_cipher_set_key
        :: BotanCipher      -- ^ __cipher__
        -> ConstPtr Word8   -- ^ __key__
        -> CSize            -- ^ __key_len__
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
        :: BotanCipher -- ^ __cipher__
        -> IO CInt

-- | Set the associated data. Will fail if cipher is not an AEAD
foreign import capi safe "botan/ffi.h botan_cipher_set_associated_data"
    botan_cipher_set_associated_data
        :: BotanCipher      -- ^ __cipher__
        -> ConstPtr Word8   -- ^ __ad__
        -> CSize            -- ^ __ad_len__
        -> IO CInt

-- | Begin processing a new message using the provided nonce
foreign import capi safe "botan/ffi.h botan_cipher_start"
    botan_cipher_start
        :: BotanCipher      -- ^ __cipher__
        -> ConstPtr Word8   -- ^ __nonce__
        -> CSize            -- ^ __nonce_len__
        -> IO CInt

pattern BOTAN_CIPHER_UPDATE_FLAG_NONE
    ,   BOTAN_CIPHER_UPDATE_FLAG_FINAL
    ::  (Eq a, Num a) => a
pattern BOTAN_CIPHER_UPDATE_FLAG_NONE   = 0
pattern BOTAN_CIPHER_UPDATE_FLAG_FINAL  = #const BOTAN_CIPHER_UPDATE_FLAG_FINAL

-- | Encrypt some data
foreign import capi safe "botan/ffi.h botan_cipher_update"
    botan_cipher_update
        :: BotanCipher      -- ^ __cipher__
        -> Word32           -- ^ __flags__
        -> Ptr Word8        -- ^ __output[]__
        -> CSize            -- ^ __output_size__
        -> Ptr CSize        -- ^ __output_written__
        -> ConstPtr Word8   -- ^ __input_bytes[]__
        -> CSize            -- ^ __input_size__
        -> Ptr CSize        -- ^ __input_consumed__
        -> IO CInt

-- | Reset the key, nonce, AD and all other state on this cipher object
foreign import capi safe "botan/ffi.h botan_cipher_clear"
    botan_cipher_clear
        :: BotanCipher -- ^ __hash__
        -> IO CInt
