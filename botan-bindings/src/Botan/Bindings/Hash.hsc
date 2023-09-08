{-|
Module      : Botan.Bindings.Version
Description : Hash Functions
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP
           , PatternSynonyms #-}

module Botan.Bindings.Hash
  ( module Botan.Bindings.Hash.Types
  , module Botan.Bindings.Hash
  ) where

import           Botan.Bindings.Hash.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_hash_init"
  botan_hash_init
    :: Ptr Botan_hash_t  -- ^ hash
    -> ConstPtr CChar    -- ^ hash_name
    -> Word32            -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_hash_copy_state"
  botan_hash_copy_state
    :: Ptr Botan_hash_t -- ^ dest
    -> Botan_hash_t     -- ^ source
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_hash_output_length"
  botan_hash_output_length
    :: Botan_hash_t -- ^ hash
    -> Ptr CSize    -- ^ output_length
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_hash_block_size"
  botan_hash_block_size
    :: Botan_hash_t -- ^ hash
    -> Ptr CSize    -- ^ block_size
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_hash_update"
  botan_hash_update
    :: Botan_hash_t    -- ^ hash
    -> ConstPtr Word8  -- ^ in
    -> CSize           -- ^ in_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_hash_final"
  botan_hash_final
    :: Botan_hash_t -- ^ hash
    -> Ptr Word8    -- ^ out[]
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_hash_clear"
  botan_hash_clear
    :: Botan_hash_t -- ^ hash
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_hash_destroy"
  botan_hash_destroy
    :: Botan_hash_t -- ^ hash
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_hash_name"
  botan_hash_name
    :: Botan_hash_t -- ^ hash
    -> Ptr CChar    -- ^ name
    -> Ptr CSize    -- ^ name_len
    -> IO CInt
