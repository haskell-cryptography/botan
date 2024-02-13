{-|
Module      : Botan.Bindings.RNG
Description : Random number generators
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.RNG where
import Botan.Bindings.Prelude

-- | Opaque RNG struct
data {-# CTYPE "botan/ffi.h" "struct botan_rng_struct" #-} BotanRNGStruct

-- | Botan RNG object
newtype {-# CTYPE "botan/ffi.h" "botan_rng_t" #-} BotanRNG
    = MkBotanRNG { runBotanRNG :: Ptr BotanRNGStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Frees all resources of the random number generator object
foreign import capi safe "botan/ffi.h &botan_rng_destroy"
    botan_rng_destroy
        :: FinalizerPtr BotanRNGStruct

-- WARNING: Not real botan constants, values are taken from documentation / source code.
-- TODO: Maybe move to Botan.Low.RNG
pattern BOTAN_RNG_TYPE_SYSTEM           -- ^ system RNG
    ,   BOTAN_RNG_TYPE_USER             -- ^ userspace RNG
    ,   BOTAN_RNG_TYPE_USER_THREADSAFE  -- ^ userspace RNG, with internal locking
    ,   BOTAN_RNG_TYPE_RDRAND           -- ^ directly read RDRAND
    ::  (Eq a, IsString a) => a
pattern BOTAN_RNG_TYPE_SYSTEM            = "system"
pattern BOTAN_RNG_TYPE_USER              = "user"
pattern BOTAN_RNG_TYPE_USER_THREADSAFE   = "user-threadsafe"
pattern BOTAN_RNG_TYPE_RDRAND            = "rdrand"

{- |
Initialize a random number generator object

rng_type has the possible values:

    - "system": system RNG
    
    - "user": userspace RNG
    
    - "user-threadsafe": userspace RNG, with internal locking
    
    - "rdrand": directly read RDRAND

Set rng_type to null to let the library choose some default.
-}
foreign import capi safe "botan/ffi.h botan_rng_init"
    botan_rng_init
        :: Ptr BotanRNG     -- ^ __rng__
        -> ConstPtr CChar   -- ^ __rng_type__: type of the rng
        -> IO CInt          -- ^ 0 if success, else error code

-- | Callback for getting random bytes from the rng, return 0 for success
type BotanRNGGetCallback ctx
    =  Ptr ctx      -- ^ __context__
    -> Ptr Word8    -- ^ __out__
    -> CSize        -- ^ __out_len__
    -> IO CInt

-- NOTE: "Wrapper stubs can't be used with CApiFFI."
foreign import ccall "wrapper"
    mallocBotanRNGGetCallbackFunPtr
        :: BotanRNGGetCallback ctx
        -> IO (FunPtr (BotanRNGGetCallback ctx))

-- | Callback for adding entropy to the rng, return 0 for success
type BotanRNGAddEntropyCallback ctx
    =  Ptr ctx          -- ^ __context__
    -> ConstPtr Word8   -- ^ __input[]__
    -> CSize            -- ^ __length__
    -> IO CInt

-- NOTE: "Wrapper stubs can't be used with CApiFFI."
foreign import ccall "wrapper"
    mallocBotanRNGAddEntropyCallbackFunPtr
        :: BotanRNGAddEntropyCallback ctx
        -> IO (FunPtr (BotanRNGAddEntropyCallback ctx))

-- | Callback called when rng is destroyed
type BotanRNGDestroyCallback ctx
    =  Ptr ctx  -- ^ __context__
    -> IO ()

-- NOTE: "Wrapper stubs can't be used with CApiFFI."
foreign import ccall "wrapper"
    mallocBotanRNGDestroyCallbackFunPtr
        :: BotanRNGDestroyCallback ctx
        -> IO (FunPtr (BotanRNGDestroyCallback ctx))

-- | Initialize a custom random number generator from a set of callback functions
foreign import capi safe "botan/ffi.h botan_rng_init_custom"
    botan_rng_init_custom
        :: Ptr BotanRNG     -- ^ __rng_out__
        -> ConstPtr CChar   -- ^ __rng_name__: name of the rng
        -> Ptr ctx          -- ^ __context__: an application-specific context passed to the callback functions
        -> FunPtr (BotanRNGGetCallback ctx)         -- ^ __get_cb__
        -> FunPtr (BotanRNGAddEntropyCallback ctx)  -- ^ __add_entropy_cb__: may be NULL
        -> FunPtr (BotanRNGDestroyCallback ctx)     -- ^ __destroy_cb__: may be NULL
        -> IO CInt

-- | Get random bytes from a random number generators
foreign import capi safe "botan/ffi.h botan_rng_get"
    botan_rng_get
        :: BotanRNG     -- ^ __rng__: rng object
        -> Ptr Word8    -- ^ __out__: output buffer of size out_len
        -> CSize        -- ^ __out_len__: number of requested bytes
        -> IO CInt      -- ^ 0 on success, negative on failure

-- | Get random bytes from system random number generator
foreign import capi safe "botan/ffi.h botan_system_rng_get"
    botan_system_rng_get
        :: Ptr Word8    -- ^ __out__: output buffer of size out_len
        -> CSize        -- ^ __out_len__: number of requested bytes
        -> IO CInt      -- ^ 0 on success, negative on failure

{- |
Reseed a random number generator

Uses the System_RNG as a seed generator.
-}
foreign import capi safe "botan/ffi.h botan_rng_reseed"
    botan_rng_reseed
        :: BotanRNG -- ^ __rng__: rng object
        -> CSize    -- ^ __bits__: number of bits to reseed with
        -> IO CInt  -- ^ 0 on success, a negative value on failure

-- | Reseed a random number generator
foreign import capi safe "botan/ffi.h botan_rng_reseed_from_rng"
    botan_rng_reseed_from_rng
        :: BotanRNG -- ^ __rng__: rng object
        -> BotanRNG -- ^ __source_rng__: the rng that will be read from
        -> CSize    -- ^ __bits__: number of bits to reseed with
        -> IO CInt  -- ^ 0 on success, a negative value on failure

-- | Add some seed material to a random number generator
foreign import capi safe "botan/ffi.h botan_rng_add_entropy"
    botan_rng_add_entropy
        :: BotanRNG         -- ^ __rng__: rng object
        -> ConstPtr Word8   -- ^ __entropy__: the data to add
        -> CSize            -- ^ __entropy_len__: length of entropy buffer
        -> IO CInt          -- ^ 0 on success, a negative value on failure
