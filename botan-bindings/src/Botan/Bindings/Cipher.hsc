{-|
Module      : Botan.Bindings.Version
Description : Symmetric Ciphers
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP
           , PatternSynonyms #-}

module Botan.Bindings.Cipher
  ( module Botan.Bindings.Cipher.Types
  , module Botan.Bindings.Cipher
  ) where

import           Botan.Bindings.Cipher.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



pattern BOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION
      , BOTAN_CIPHER_INIT_FLAG_ENCRYPT
      , BOTAN_CIPHER_INIT_FLAG_DECRYPT
     :: (Eq a, Num a) => a
pattern BOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION = #const BOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION
pattern BOTAN_CIPHER_INIT_FLAG_ENCRYPT        = #const BOTAN_CIPHER_INIT_FLAG_ENCRYPT
pattern BOTAN_CIPHER_INIT_FLAG_DECRYPT        = #const BOTAN_CIPHER_INIT_FLAG_DECRYPT

foreign import capi "botan-3/botan/ffi.h botan_cipher_init"
  botan_cipher_init
    :: Ptr Botan_cipher_t -- ^ cipher
    -> ConstPtr CChar     -- ^ name
    -> Word32             -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_name"
  botan_cipher_name
    :: Botan_cipher_t -- ^ cipher
    -> Ptr CChar      -- ^ name
    -> Ptr CSize      -- ^ name_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_output_length"
  botan_cipher_output_length
    :: Botan_cipher_t -- ^ cipher
    -> CSize          -- ^ in_len
    -> Ptr CSize      -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_valid_nonce_length"
  botan_cipher_valid_nonce_length
    :: Botan_cipher_t -- ^ cipher
    -> CSize          -- ^ nl
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_get_tag_length"
  botan_cipher_get_tag_length
    :: Botan_cipher_t -- ^ cipher
    -> Ptr CSize      -- ^ tag_size
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_get_default_nonce_length"
  botan_cipher_get_default_nonce_length
    :: Botan_cipher_t -- ^ cipher
    -> Ptr CSize      -- ^ nl
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_get_update_granularity"
  botan_cipher_get_update_granularity
    :: Botan_cipher_t -- ^ cipher
    -> Ptr CSize      -- ^ ug
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_get_ideal_update_granularity"
  botan_cipher_get_ideal_update_granularity
    :: Botan_cipher_t -- ^ cipher
    -> Ptr CSize      -- ^ ug
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_query_keylen"
  botan_cipher_query_keylen
    :: Botan_cipher_t -- ^ cipher
    -> Ptr CSize      -- ^ out_minimum_keylength
    -> Ptr CSize      -- ^ out_maximum_keylength
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_get_keyspec"
  botan_cipher_get_keyspec
    :: Botan_cipher_t -- ^ cipher
    -> Ptr CSize      -- ^ min_keylen
    -> Ptr CSize      -- ^ max_keylen
    -> Ptr CSize      -- ^ mod_keylen
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_set_key"
  botan_cipher_set_key
    :: Botan_cipher_t  -- ^ cipher
    -> ConstPtr Word8  -- ^ key
    -> CSize           -- ^ key_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_reset"
  botan_cipher_reset
    :: Botan_cipher_t -- ^ cipher
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_set_associated_data"
  botan_cipher_set_associated_data
    :: Botan_cipher_t  -- ^ cipher
    -> ConstPtr Word8  -- ^ ad
    -> CSize           -- ^ ad_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_start"
  botan_cipher_start
    :: Botan_cipher_t  -- ^ cipher
    -> ConstPtr Word8  -- ^ nonce
    -> CSize           -- ^ nonce_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_update"
  botan_cipher_update
    :: Botan_cipher_t  -- ^ cipher
    -> Word32          -- ^ flags
    -> Ptr Word8       -- ^ output[]
    -> CSize           -- ^ output_size
    -> Ptr CSize       -- ^ output_written
    -> ConstPtr Word8  -- ^ input_bytes[]
    -> CSize           -- ^ input_size
    -> Ptr CSize       -- ^ input_consumed
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_clear"
  botan_cipher_clear
    :: Botan_cipher_t -- ^ hash
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_cipher_destroy"
  botan_cipher_destroy
    :: Botan_cipher_t -- ^ cipher
    -> IO CInt
