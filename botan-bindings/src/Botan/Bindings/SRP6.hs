{-|
Module      : Botan.Bindings.SRP6
Description : Secure remote password
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

This module is based on the [Secure Remote
Password](https://botan.randombit.net/handbook/api_ref/srp.html) section of the
C++ API reference.
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.SRP6 (
    BotanSRP6ServerSessionStruct
  , BotanSRP6ServerSession (..)
  , botan_srp6_server_session_destroy
  , botan_srp6_server_session_init
  , botan_srp6_server_session_step1
  , botan_srp6_server_session_step2
  , botan_srp6_generate_verifier
  , botan_srp6_client_agree
  , botan_srp6_group_size
  ) where

import           Botan.Bindings.ConstPtr
import           Botan.Bindings.RNG
import           Data.Word
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Ptr
import           Foreign.Storable

-- | Opaque SRP-6 server session struct
data {-# CTYPE "botan/ffi.h" "struct botan_srp6_server_session_struct" #-} BotanSRP6ServerSessionStruct

-- | SRP-6 server session object
newtype {-# CTYPE "botan/ffi.h" "botan_srp6_server_session_t" #-} BotanSRP6ServerSession
  = MkBotanSRP6ServerSession { runBotanSRP6ServerSession :: Ptr BotanSRP6ServerSessionStruct }
      deriving newtype (Eq, Ord, Storable)

-- | Frees all resources of the SRP-6 server session object
--
-- NOTE: this a binding to the /address/ of the
-- @botan_srp6_server_session_destroy@ C function.
foreign import capi safe "botan/ffi.h &botan_srp6_server_session_destroy"
  botan_srp6_server_session_destroy
    :: FinalizerPtr BotanSRP6ServerSessionStruct

-- | Initialize an SRP-6 server session object
foreign import capi safe "botan/ffi.h botan_srp6_server_session_init"
  botan_srp6_server_session_init
    :: Ptr BotanSRP6ServerSession -- ^ __srp6__: SRP-6 server session object
    -> IO CInt

-- | SRP-6 Server side step 1
--
-- NOTE: this function should be not be invoked twice on the same server
-- session. Regardless of the result of the first invocation, the second
-- invocation will result in an error. See
-- https://github.com/randombit/botan/issues/5112 for more information. If a
-- second invocation can not be prevented, try it on a newly initialised server
-- session instead.
foreign import capi safe "botan/ffi.h botan_srp6_server_session_step1"
  botan_srp6_server_session_step1
    :: BotanSRP6ServerSession -- ^ __srp6__: SRP-6 server session object
    -> ConstPtr Word8         -- ^ __verifier[]__: the verification value saved from client registration
    -> CSize                  -- ^ __verifier_len__: SRP-6 verifier value length
    -> ConstPtr CChar         -- ^ __group_id__: the SRP group id
    -> ConstPtr CChar         -- ^ __hash_id__: the SRP hash in use
    -> BotanRNG               -- ^ __rng_obj__: a random number generator object
    -> Ptr Word8              -- ^ __B_pub[]__: out buffer to store the SRP-6 B value
    -> Ptr CSize              -- ^ __B_pub_len__: SRP-6 B value length
    -> IO CInt                -- ^ 0 on success, negative on failure

-- | SRP-6 Server side step 2
foreign import capi safe "botan/ffi.h botan_srp6_server_session_step2"
  botan_srp6_server_session_step2
    :: BotanSRP6ServerSession -- ^ __srp6__: SRP-6 server session object
    -> ConstPtr Word8         -- ^ __A[]__: the client's value
    -> CSize                  -- ^ __A_len__: the client's value length
    -> Ptr Word8              -- ^ __key[]__: out buffer to store the symmetric key value
    -> Ptr CSize              -- ^ __key_len__: symmetric key length
    -> IO CInt                -- ^ 0 on success, negative on failure

-- | Generate a new SRP-6 verifier
foreign import capi safe "botan/ffi.h botan_srp6_generate_verifier"
  botan_srp6_generate_verifier
    :: ConstPtr CChar -- ^ __identifier__: a username or other client identifier
    -> ConstPtr CChar -- ^ __password__: the secret used to authenticate user
    -> ConstPtr Word8 -- ^ __salt[]__: a randomly chosen value, at least 128 bits long
    -> CSize          -- ^ __salt_len__: the length of salt
    -> ConstPtr CChar -- ^ __group_id__: specifies the shared SRP group
    -> ConstPtr CChar -- ^ __hash_id__: specifies a secure hash function
    -> Ptr Word8      -- ^ __verifier[]__: out buffer to store the SRP-6 verifier value
    -> Ptr CSize      -- ^ __verifier_len__: SRP-6 verifier value length
    -> IO CInt        -- ^ 0 on success, negative on failure

-- | SRP6a Client side
foreign import capi safe "botan/ffi.h botan_srp6_client_agree"
  botan_srp6_client_agree
    :: ConstPtr CChar -- ^ __username__: the username we are attempting login for
    -> ConstPtr CChar -- ^ __password__: the password we are attempting to use
    -> ConstPtr CChar -- ^ __group_id__: specifies the shared SRP group
    -> ConstPtr CChar -- ^ __hash_id__: specifies a secure hash function
    -> ConstPtr Word8 -- ^ __salt[]__: is the salt value sent by the server
    -> CSize          -- ^ __salt_len__: the length of salt
    -> ConstPtr Word8 -- ^ __B[]__: is the server's public value
    -> CSize          -- ^ __B_len__: is the server's public value length
    -> BotanRNG       -- ^ __rng_obj__: is a random number generator object
    -> Ptr Word8      -- ^ __A[]__: out buffer to store the SRP-6 A value
    -> Ptr CSize      -- ^ __A_len__: SRP-6 A verifier value length
    -> Ptr Word8      -- ^ __K[]__: out buffer to store the symmetric value
    -> Ptr CSize      -- ^ __K_len__: symmetric key length
    -> IO CInt        -- ^ 0 on success, negative on failure

-- | Return the size, in bytes, of the prime associated with group_id
--
-- This function can be used to determine the size of output buffers for
-- generated keys in the SRP6 algorithm. Such buffers need to be allocated
-- before calling SRP6 functions. An example of such a buffer is the
-- @verifier[]@ buffer in the 'botan_srp6_generate_verifier' function.
foreign import capi safe "botan/ffi.h botan_srp6_group_size"
  botan_srp6_group_size
    :: ConstPtr CChar -- ^ __group_id__
    -> Ptr CSize      -- ^ __group_p_bytes__
    -> IO CInt
