{-|
Module      : Botan.Bindings.Hash
Description : Hash Functions and Checksums
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

Hash functions are one-way functions, which map data of arbitrary size
to a fixed output length. Most of the hash functions in Botan are designed
to be cryptographically secure, which means that it is computationally
infeasible to create a collision (finding two inputs with the same hash)
or preimages (given a hash output, generating an arbitrary input with the
same hash). But note that not all such hash functions meet their goals,
in particular MD4 and MD5 are trivially broken. However they are still
included due to their wide adoption in various protocols.

Using a hash function is typically split into three stages: initialization,
update, and finalization (often referred to as a IUF interface). The
initialization stage is implicit: after creating a hash function object,
it is ready to process data. Then update is called one or more times.
Calling update several times is equivalent to calling it once with all of
the arguments concatenated. After completing a hash computation (eg using
hashFinal), the internal state is reset to begin hashing a new message.
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.Hash where

import Botan.Bindings.Prelude

-- | Opaque Hash struct
data {-# CTYPE "botan/ffi.h" "struct botan_hash_struct" #-} BotanHashStruct

-- | Botan Hash object
newtype {-# CTYPE "botan/ffi.h" "botan_hash_t" #-} BotanHash
    = MkBotanHash { runBotanHash :: Ptr BotanHashStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Frees all resources of the hash object
foreign import capi safe "botan/ffi.h &botan_hash_destroy"
    botan_hash_destroy
        :: FinalizerPtr BotanHashStruct

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

-- | Initialize a hash function object
foreign import capi safe "botan/ffi.h botan_hash_init"
    botan_hash_init
        :: Ptr BotanHash    -- ^ @hash@: hash object
        -> ConstPtr CChar   -- ^ @hash_name@: name of the hash function, e.g., "SHA-384"
        -> Word32           -- ^ @flags@: should be 0 in current API revision, all other uses are reserved
                            --   and return BOTAN_FFI_ERROR_BAD_FLAG
        -> IO CInt      

-- | Get the name of this hash function
foreign import capi safe "botan/ffi.h botan_hash_name"
    botan_hash_name
        :: BotanHash    -- ^ @hash@: the object to read
        -> Ptr CChar    -- ^ @name@: output buffer
        -> Ptr CSize    -- ^ @name_len@: on input, the length of buffer, on success the number of bytes written
        -> IO CInt

-- | Copy the state of a hash function object
foreign import capi safe "botan/ffi.h botan_hash_copy_state"
    botan_hash_copy_state
        :: Ptr BotanHash    -- ^ @dest@: destination hash object
        -> BotanHash        -- ^ @source@: source hash object
        -> IO CInt          -- ^ 0 on success, a negative value on failure

-- | Writes the output length of the hash function to *output_length
foreign import capi safe "botan/ffi.h botan_hash_output_length"
    botan_hash_output_length
        :: BotanHash    -- ^ @hash@: hash object
        -> Ptr CSize    -- ^ @output_length@: output buffer to hold the hash function output length
        -> IO CInt      -- ^ 0 on success, a negative value on failure

-- | Writes the block size of the hash function to *block_size
foreign import capi safe "botan/ffi.h botan_hash_block_size"
    botan_hash_block_size
        :: BotanHash    -- ^ @hash@: hash object
        -> Ptr CSize    -- ^ @block_size@: output buffer to hold the hash function block size
        -> IO CInt      -- ^ 0 on success, a negative value on failure

-- | Send more input to the hash function
foreign import capi safe "botan/ffi.h botan_hash_update"
    botan_hash_update
        :: BotanHash        -- ^ @hash@: hash object
        -> ConstPtr Word8   -- ^ @in@: input buffer
        -> CSize            -- ^ @in_len@: number of bytes to read from the input buffer
        -> IO CInt          -- ^ 0 on success, a negative value on failure

{- |
Finalizes the hash computation and writes the output to
out[0:botan_hash_output_length()] then reinitializes for computing
another digest as if botan_hash_clear had been called.
-}
foreign import capi safe "botan/ffi.h botan_hash_final"
    botan_hash_final
        :: BotanHash    -- ^ @hash@: hash object
        -> Ptr Word8    -- ^ @out[]@: output buffer
        -> IO CInt      -- ^ 0 on success, a negative value on failure

{- |
Reinitializes the state of the hash computation. A hash can
be computed (with update/final) immediately.
-}
foreign import capi safe "botan/ffi.h botan_hash_clear"
    botan_hash_clear
        :: BotanHash    -- ^ @hash@: hash object
        -> IO CInt      -- 0 on success, a negative value on failure

foreign import capi safe "botan/ffi.h botan_pkcs_hash_id"
    botan_pkcs_hash_id
        :: ConstPtr CChar -- ^ @hash_name@
        -> Ptr Word8      -- ^ @pkcs_id[]@
        -> Ptr CSize      -- ^ @pkcs_id_len@
        -> IO CInt
