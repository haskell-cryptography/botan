{-|
Module      : Botan.Bindings.Hash
Description : Hash Functions and Checksums
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE OverloadedStrings #-}

module Botan.Bindings.Hash (
    Types.Botan_hash_t (..)
  , Types.Botan_hash_struct
  , Safe.botan_hash_destroy
  , botan_hash_destroy_ptr
  , Safe.botan_hash_init
  , Safe.botan_hash_name
  , Safe.botan_hash_copy_state
  , Safe.botan_hash_output_length
  , Safe.botan_hash_block_size
  , Safe.botan_hash_update
  , Safe.botan_hash_final
  , Safe.botan_hash_clear
  , Safe.botan_pkcs_hash_id

  , pattern BOTAN_HASH_BLAKE2B
  , pattern BOTAN_HASH_KECCAK_1600
  , pattern BOTAN_HASH_GOST_34_11
  , pattern BOTAN_HASH_MD4
  , pattern BOTAN_HASH_MD5
  , pattern BOTAN_HASH_RIPEMD_160
  , pattern BOTAN_HASH_SHA1
  , pattern BOTAN_HASH_SHA_224
  , pattern BOTAN_HASH_SHA_256
  , pattern BOTAN_HASH_SHA_384
  , pattern BOTAN_HASH_SHA_512
  , pattern BOTAN_HASH_SHA_512_256
  , pattern BOTAN_HASH_SHA_3
  , pattern BOTAN_HASH_SHAKE_128
  , pattern BOTAN_HASH_SHAKE_256
  , pattern BOTAN_HASH_SM3
  , pattern BOTAN_HASH_SKEIN_512
  , pattern BOTAN_HASH_STREEBOG_256
  , pattern BOTAN_HASH_STREEBOG_512
  , pattern BOTAN_HASH_WHIRLPOOL

  , pattern BOTAN_HASH_STRAT_PARALLEL
  , pattern BOTAN_HASH_STRAT_COMB4P

  , pattern BOTAN_CHECKSUM_ADLER32
  , pattern BOTAN_CHECKSUM_CRC24
  , pattern BOTAN_CHECKSUM_CRC32
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.String (IsString)
import           Foreign.C.Types (CInt)
import           Foreign.Ptr (FunPtr)

botan_hash_destroy_ptr :: FunPtr (Types.Botan_hash_t -> IO CInt)
botan_hash_destroy_ptr = FunPtr.botan_hash_destroy

pattern BOTAN_HASH_BLAKE2B
    ,   BOTAN_HASH_KECCAK_1600
    ,   BOTAN_HASH_GOST_34_11
    ,   BOTAN_HASH_MD4
    ,   BOTAN_HASH_MD5
    ,   BOTAN_HASH_RIPEMD_160
    ,   BOTAN_HASH_SHA1
    ,   BOTAN_HASH_SHA_224
    ,   BOTAN_HASH_SHA_256
    ,   BOTAN_HASH_SHA_384
    ,   BOTAN_HASH_SHA_512
    ,   BOTAN_HASH_SHA_512_256
    ,   BOTAN_HASH_SHA_3
    ,   BOTAN_HASH_SHAKE_128
    ,   BOTAN_HASH_SHAKE_256
    ,   BOTAN_HASH_SM3
    ,   BOTAN_HASH_SKEIN_512
    ,   BOTAN_HASH_STREEBOG_256
    ,   BOTAN_HASH_STREEBOG_512
    ,   BOTAN_HASH_WHIRLPOOL
    ,   BOTAN_HASH_STRAT_PARALLEL
    ,   BOTAN_HASH_STRAT_COMB4P
    ,   BOTAN_CHECKSUM_ADLER32
    ,   BOTAN_CHECKSUM_CRC24
    ,   BOTAN_CHECKSUM_CRC32
    :: (Eq a, IsString a) => a
pattern BOTAN_HASH_BLAKE2B      = "BLAKE2b"
pattern BOTAN_HASH_KECCAK_1600  = "Keccak-1600"
pattern BOTAN_HASH_GOST_34_11   = "GOST-34.11"
pattern BOTAN_HASH_MD4          = "MD4"
pattern BOTAN_HASH_MD5          = "MD5"
pattern BOTAN_HASH_RIPEMD_160   = "RIPEMD-160"
pattern BOTAN_HASH_SHA1         = "SHA-1"
pattern BOTAN_HASH_SHA_224      = "SHA-224"
pattern BOTAN_HASH_SHA_256      = "SHA-256"
pattern BOTAN_HASH_SHA_384      = "SHA-384"
pattern BOTAN_HASH_SHA_512      = "SHA-512"
pattern BOTAN_HASH_SHA_512_256  = "SHA-512-256"
pattern BOTAN_HASH_SHA_3        = "SHA-3"
pattern BOTAN_HASH_SHAKE_128    = "SHAKE-128"
pattern BOTAN_HASH_SHAKE_256    = "SHAKE-256"
pattern BOTAN_HASH_SM3          = "SM3"
pattern BOTAN_HASH_SKEIN_512    = "Skein-512"
pattern BOTAN_HASH_STREEBOG_256 = "Streebog-256"
pattern BOTAN_HASH_STREEBOG_512 = "Streebog-512"
pattern BOTAN_HASH_WHIRLPOOL    = "Whirlpool"
-- Combination strategies
pattern BOTAN_HASH_STRAT_PARALLEL     = "Parallel"
pattern BOTAN_HASH_STRAT_COMB4P       = "Comb4P"
-- Checksums
pattern BOTAN_CHECKSUM_ADLER32  = "Adler32"
pattern BOTAN_CHECKSUM_CRC24    = "CRC24"
pattern BOTAN_CHECKSUM_CRC32    = "CRC32"
