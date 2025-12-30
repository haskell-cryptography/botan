{-|
Module      : Botan.Bindings.RNG
Description : Random number generators
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE OverloadedStrings #-}

module Botan.Bindings.RNG (
    Types.Botan_rng_t (..)
  , Types.Botan_rng_struct
  , Safe.botan_rng_destroy
  , botan_rng_destroy_ptr
  , Safe.botan_rng_init
  , Safe.botan_rng_init_custom
  , Safe.botan_rng_get
  , Safe.botan_system_rng_get
  , Safe.botan_rng_reseed
  , Safe.botan_rng_reseed_from_rng
  , Safe.botan_rng_add_entropy
  , pattern BOTAN_RNG_TYPE_SYSTEM
  , pattern BOTAN_RNG_TYPE_USER
  , pattern BOTAN_RNG_TYPE_USER_THREADSAFE
  , pattern BOTAN_RNG_TYPE_RDRAND
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.String (IsString)
import           Foreign.C.Types (CInt)
import           Foreign.Ptr (FunPtr)

botan_rng_destroy_ptr :: FunPtr (Types.Botan_rng_t -> IO CInt)
botan_rng_destroy_ptr = FunPtr.botan_rng_destroy

pattern BOTAN_RNG_TYPE_SYSTEM           -- ^ system RNG
    ,   BOTAN_RNG_TYPE_USER             -- ^ userspace RNG
    ,   BOTAN_RNG_TYPE_USER_THREADSAFE  -- ^ userspace RNG, with internal locking
    ,   BOTAN_RNG_TYPE_RDRAND           -- ^ directly read RDRAND
    ::  (Eq a, IsString a) => a
pattern BOTAN_RNG_TYPE_SYSTEM            = "system"
pattern BOTAN_RNG_TYPE_USER              = "user"
pattern BOTAN_RNG_TYPE_USER_THREADSAFE   = "user-threadsafe"
pattern BOTAN_RNG_TYPE_RDRAND            = "rdrand"
