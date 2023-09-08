{-|
Module      : Botan.Bindings.Version
Description : Private Key Creation, Import and Export
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP
           , PatternSynonyms #-}

module Botan.Bindings.PrivKey
  ( module Botan.Bindings.PrivKey.Types
  , module Botan.Bindings.PrivKey
  ) where

import           Botan.Bindings.MPI.Types
import           Botan.Bindings.PrivKey.Types
import           Botan.Bindings.PubKey.Types
import           Botan.Bindings.RNG.Types
import           Botan.Bindings.View

import           Data.Word
#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
##define ConstPtr Ptr
#endif
import           Foreign.C.Types
import           Foreign.Ptr

#include <botan-3/botan/ffi.h>



foreign import capi "botan-3/botan/ffi.h botan_privkey_create"
  botan_privkey_create
    :: Ptr Botan_privkey_t -- ^ key
    -> ConstPtr CChar      -- ^ algo_name
    -> ConstPtr CChar      -- ^ algo_params
    -> Botan_rng_t         -- ^ rng
    -> IO CInt

pattern BOTAN_CHECK_KEY_EXPENSIVE_TESTS :: (Eq a, Num a) => a
pattern BOTAN_CHECK_KEY_EXPENSIVE_TESTS = #const BOTAN_CHECK_KEY_EXPENSIVE_TESTS

foreign import capi "botan-3/botan/ffi.h botan_privkey_check_key"
  botan_privkey_check_key
    :: Botan_privkey_t -- ^ key
    -> Botan_rng_t     -- ^ rng
    -> Word32          -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_create_dsa"
  botan_privkey_create_dsa
    :: Ptr Botan_privkey_t -- ^ key
    -> Botan_rng_t         -- ^ rng
    -> CSize               -- ^ pbits
    -> CSize               -- ^ qbits
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_create_elgamal"
  botan_privkey_create_elgamal
    :: Ptr Botan_privkey_t -- ^ key
    -> Botan_rng_t         -- ^ rng
    -> CSize               -- ^ pbits
    -> CSize               -- ^ qbits
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_load"
  botan_privkey_load
    :: Ptr Botan_privkey_t -- ^ key
    -> Botan_rng_t         -- ^ rng
    -> ConstPtr Word8      -- ^ bits[]
    -> CSize               -- ^ len
    -> ConstPtr CChar      -- ^ password
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_destroy"
  botan_privkey_destroy
    :: Botan_privkey_t -- ^ key
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_export"
  botan_privkey_export
    :: Botan_privkey_t -- ^ key
    -> Ptr Word8       -- ^ out[]
    -> Ptr CSize       -- ^ out_len
    -> Word32          -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_view_der"
  botan_privkey_view_der
    :: Botan_privkey_t          -- ^ key
    -> Botan_view_ctx           -- ^ ctx
    -> FunPtr Botan_view_bin_fn -- ^ view
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_view_pem"
  botan_privkey_view_pem
    :: Botan_privkey_t          -- ^ key
    -> Botan_view_ctx           -- ^ ctx
    -> FunPtr Botan_view_str_fn -- ^ view
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_algo_name"
  botan_privkey_algo_name
    :: Botan_privkey_t -- ^ key
    -> Ptr CChar       -- ^ out[]
    -> Ptr CSize       -- ^ out_len
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_export_encrypted_pbkdf_msec"
  botan_privkey_export_encrypted_pbkdf_msec
    :: Botan_privkey_t -- ^ key
    -> Ptr Word8       -- ^ out[]
    -> Ptr CSize       -- ^ out_len
    -> Botan_rng_t     -- ^ rng
    -> ConstPtr CChar  -- ^ passphrase
    -> Word32          -- ^ pbkdf_msec_runtime
    -> Ptr CSize       -- ^ pbkdf_iterations_out
    -> ConstPtr CChar  -- ^ cipher_algo
    -> ConstPtr CChar  -- ^ pbkdf_algo
    -> Word32          -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_export_encrypted_pbkdf_iter"
  botan_privkey_export_encrypted_pbkdf_iter
    :: Botan_privkey_t -- ^ key
    -> Ptr Word8       -- ^ out[]
    -> Ptr CSize       -- ^ out_len
    -> Botan_rng_t     -- ^ rng
    -> ConstPtr CChar  -- ^ passphrase
    -> CSize           -- ^ pbkdf_iterations
    -> ConstPtr CChar  -- ^ cipher_algo
    -> ConstPtr CChar  -- ^ pbkdf_algo
    -> Word32          -- ^ flags
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_view_encrypted_der"
  botan_privkey_view_encrypted_der
    :: Botan_privkey_t          -- ^ key
    -> Botan_rng_t              -- ^ rng
    -> ConstPtr CChar           -- ^ passphrase
    -> ConstPtr CChar           -- ^ cipher_algo
    -> ConstPtr CChar           -- ^ pbkdf_algo
    -> CSize                    -- ^ pbkdf_iterations
    -> Botan_view_ctx           -- ^ ctx
    -> FunPtr Botan_view_bin_fn -- ^ view
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_view_encrypted_der_timed"
  botan_privkey_view_encrypted_der_timed
    :: Botan_privkey_t          -- ^ key
    -> Botan_rng_t              -- ^ rng
    -> ConstPtr CChar           -- ^ passphrase
    -> ConstPtr CChar           -- ^ cipher_algo
    -> ConstPtr CChar           -- ^ pbkdf_algo
    -> CSize                    -- ^ pbkdf_runtime_msec
    -> Botan_view_ctx           -- ^ ctx
    -> FunPtr Botan_view_bin_fn -- ^ view
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_view_encrypted_pem"
  botan_privkey_view_encrypted_pem
    :: Botan_privkey_t          -- ^ key
    -> Botan_rng_t              -- ^ rng
    -> ConstPtr CChar           -- ^ passphrase
    -> ConstPtr CChar           -- ^ cipher_algo
    -> ConstPtr CChar           -- ^ pbkdf_algo
    -> CSize                    -- ^ pbkdf_iterations
    -> Botan_view_ctx           -- ^ ctx
    -> FunPtr Botan_view_str_fn -- ^ view
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_view_encrypted_pem_timed"
  botan_privkey_view_encrypted_pem_timed
    :: Botan_privkey_t          -- ^ key
    -> Botan_rng_t              -- ^ rng
    -> ConstPtr CChar           -- ^ passphrase
    -> ConstPtr CChar           -- ^ cipher_algo
    -> ConstPtr CChar           -- ^ pbkdf_algo
    -> CSize                    -- ^ pbkdf_runtime_msec
    -> Botan_view_ctx           -- ^ ctx
    -> FunPtr Botan_view_str_fn -- ^ view
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_export_pubkey"
  botan_privkey_export_pubkey
    :: Ptr Botan_pubkey_t -- ^ out
    -> Botan_privkey_t    -- ^ in
    -> IO CInt

foreign import capi "botan-3/botan/ffi.h botan_privkey_get_field"
  botan_privkey_get_field
    :: Botan_mp_t      -- ^ output
    -> Botan_privkey_t -- ^ key
    -> ConstPtr CChar  -- ^ field_name
    -> IO CInt
