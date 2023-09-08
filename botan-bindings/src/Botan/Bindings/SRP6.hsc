{-|
Module      : Botan.Bindings.Version
Description : SRP-6 specific functions
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP #-}

module Botan.Bindings.SRP6
  ( module Botan.Bindings.SRP6.Types
  , module Botan.Bindings.SRP6
  ) where

import           Botan.Bindings.SRP6.Types
import           Botan.Bindings.RNG.Types

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_srp6_server_session_init"
  botan_srp6_server_session_init
    :: Ptr Botan_srp6_server_session_t -- ^srp6
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_srp6_server_session_destroy"
  botan_srp6_server_session_destroy
    :: Botan_srp6_server_session_t -- ^ srp6
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_srp6_server_session_step1"
  botan_srp6_server_session_step1
    :: Botan_srp6_server_session_t -- ^ srp6
    -> ConstPtr Word8              -- ^ verifier[]
    -> CSize                       -- ^ verifier_len
    -> ConstPtr CChar              -- ^ group_id
    -> ConstPtr CChar              -- ^ hash_id
    -> Botan_rng_t                 -- ^ rng_obj
    -> Ptr Word8                   -- ^ B_pub[]
    -> Ptr CSize                   -- ^ B_pub_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_srp6_server_session_step2"
  botan_srp6_server_session_step2
    :: Botan_srp6_server_session_t -- ^ srp6
    -> ConstPtr Word8              -- ^ A[]
    -> CSize                       -- ^ A_len
    -> Ptr Word8                   -- ^ key[]
    -> Ptr CSize                   -- ^ key_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_srp6_generate_verifier"
  botan_srp6_generate_verifier
    :: ConstPtr CChar -- ^ identifier
    -> ConstPtr CChar -- ^ password
    -> ConstPtr Word8 -- ^ salt[]
    -> CSize          -- ^ salt_len
    -> ConstPtr CChar -- ^ group_id
    -> ConstPtr CChar -- ^ hash_id
    -> Ptr Word8      -- ^ verifier[]
    -> Ptr CSize      -- ^ verifier_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_srp6_client_agree"
  botan_srp6_client_agree
    :: ConstPtr CChar -- ^ username
    -> ConstPtr CChar -- ^ password
    -> ConstPtr CChar -- ^ group_id
    -> ConstPtr CChar -- ^ hash_id
    -> ConstPtr Word8 -- ^ salt[]
    -> CSize          -- ^ salt_len
    -> ConstPtr Word8 -- ^ uint8_t B[]
    -> CSize          -- ^ B_len
    -> Botan_rng_t    -- ^ rng_obj
    -> Ptr Word8      -- ^ A[]
    -> Ptr CSize      -- ^ A_len
    -> Ptr Word8      -- ^ K[]
    -> Ptr CSize      -- ^ K_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_srp6_group_size"
  botan_srp6_group_size
    :: ConstPtr CChar -- ^ group_id
    -> Ptr CSize      -- ^ group_p_bytes
    -> IO CInt
