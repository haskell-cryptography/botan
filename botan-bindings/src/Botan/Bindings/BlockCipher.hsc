{-|
Module      : Botan.Bindings.Version
Description : Block Ciphers
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.BlockCipher
  ( module Botan.Bindings.BlockCipher.Types
  , module Botan.Bindings.BlockCipher
  ) where

import           Botan.Bindings.BlockCipher.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_block_cipher_init"
  botan_block_cipher_init
    :: Ptr Botan_block_cipher_t -- ^ bc
    -> ConstPtr CChar           -- ^ cipher_name
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_block_cipher_destroy"
  botan_block_cipher_destroy
    :: Botan_block_cipher_t -- ^ bc
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_block_cipher_clear"
  botan_block_cipher_clear
    :: Botan_block_cipher_t -- ^ bc
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_block_cipher_set_key"
  botan_block_cipher_set_key
    :: Botan_block_cipher_t -- ^ bc
    -> ConstPtr Word8       -- ^ key[]
    -> CSize                -- ^ len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_block_cipher_block_size"
  botan_block_cipher_block_size
    :: Botan_block_cipher_t -- ^ bc
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_block_cipher_encrypt_blocks"
  botan_block_cipher_encrypt_blocks
    :: Botan_block_cipher_t -- ^ bc
    -> ConstPtr Word8       -- ^ in[]
    -> Ptr Word8            -- ^ out[]
    -> CSize                -- ^ blocks
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_block_cipher_decrypt_blocks"
  botan_block_cipher_decrypt_blocks
    :: Botan_block_cipher_t -- ^ bc
    -> ConstPtr Word8       -- ^ in[]
    -> Ptr Word8            -- ^ out[]
    -> CSize                -- ^ blocks
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_block_cipher_name"
  botan_block_cipher_name
    :: Botan_block_cipher_t -- ^ cipher
    -> Ptr CChar            -- ^ name
    -> Ptr CSize            -- ^ name_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_block_cipher_get_keyspec"
  botan_block_cipher_get_keyspec
    :: Botan_block_cipher_t -- ^ cipher
    -> Ptr CSize            -- ^ out_minimum_keylength
    -> Ptr CSize            -- ^ out_maximum_keylength
    -> Ptr CSize            -- ^ out_keylength_modulo
    -> IO CInt
