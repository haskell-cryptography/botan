{-|
Module      : Botan.Bindings.Bcrypt
Description : Bcrypt password hashing
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

Generate and validate Bcrypt password hashes
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.Bcrypt where

import           Botan.Bindings.Prelude
import           Botan.Bindings.RNG

-- TODO: Maybe move to Botan.Low.Bcrypt
pattern BOTAN_BCRYPT_WORK_FACTOR_FAST
    ,   BOTAN_BCRYPT_WORK_FACTOR_GOOD
    ,   BOTAN_BCRYPT_WORK_FACTOR_STRONG
    ::  (Eq a, Num a) => a

-- | Should not cause noticable CPU usage
pattern BOTAN_BCRYPT_WORK_FACTOR_FAST = 12

-- | May cause noticable CPU usage
pattern BOTAN_BCRYPT_WORK_FACTOR_GOOD = 14

-- | May block for several seconds
pattern BOTAN_BCRYPT_WORK_FACTOR_STRONG = 16

{- |
Create a password hash using Bcrypt

Output is formatted bcrypt $2a$...
-}
foreign import capi safe "botan/ffi.h botan_bcrypt_generate"
      botan_bcrypt_generate
            :: Ptr Word8      -- ^ __out__: buffer holding the password hash, should be of length 64 bytes
            -> Ptr CSize      -- ^ __out_len__: the desired output length in bytes
            -> ConstPtr CChar -- ^ __password__: the password
            -> BotanRNG       -- ^ __rng__: a random number generator
            -> CSize          -- ^ __work_factor__: how much work to do to slow down guessing attacks
            -> Word32         -- ^ __flags__: should be 0 in current API revision, all other uses are reserved
                              --   and return BOTAN_FFI_ERROR_BAD_FLAG
            -> IO CInt        -- ^ 0 on success, a negative value on failure

-- | Check a previously created password hash
foreign import capi safe "botan/ffi.h botan_bcrypt_is_valid"
      botan_bcrypt_is_valid
            :: ConstPtr CChar -- ^ __pass__: the password to check against
            -> ConstPtr CChar -- ^ __hash__: the stored hash to check against
            -> IO CInt        -- ^ 0 if if this password/hash combination is valid,
                              --   1 if the combination is not valid (but otherwise well formed),
                              --   negative on error
