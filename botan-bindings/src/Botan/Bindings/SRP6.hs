{-|
Module      : Botan.Bindings.SRP6
Description : Secure remote password
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

The library contains an implementation of the SRP6-a password
authenticated key exchange protocol.

A SRP client provides what is called a SRP verifier to the server.
This verifier is based on a password, but the password cannot be
easily derived from the verifier (however brute force attacks are
possible). Later, the client and server can perform an SRP exchange,
which results in a shared secret key. This key can be used for
mutual authentication and/or encryption.

SRP works in a discrete logarithm group. Special parameter sets for
SRP6 are defined, denoted in the library as “modp/srp/<size>”, for
example “modp/srp/2048”.

Warning

While knowledge of the verifier does not easily allow an attacker to
get the raw password, they could still use the verifier to impersonate
the server to the client, so verifiers should be protected as carefully
as a plaintext password would be.
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

import           Botan.Bindings.Prelude
import           Botan.Bindings.RNG

-- | Opaque SRP-6 server session struct
data {-# CTYPE "botan/ffi.h" "struct botan_srp6_server_session_struct" #-} BotanSRP6ServerSessionStruct

-- | Botan SRP-6 server session object
newtype {-# CTYPE "botan/ffi.h" "botan_srp6_server_session_t" #-} BotanSRP6ServerSession
  = MkBotanSRP6ServerSession { runBotanSRP6ServerSession :: Ptr BotanSRP6ServerSessionStruct }
      deriving newtype (Eq, Ord, Storable)

-- | Frees all resources of the SRP-6 server session object
foreign import capi safe "botan/ffi.h &botan_srp6_server_session_destroy"
  botan_srp6_server_session_destroy
    :: FinalizerPtr BotanSRP6ServerSessionStruct

-- | Initialize an SRP-6 server session object
foreign import capi safe "botan/ffi.h botan_srp6_server_session_init"
  botan_srp6_server_session_init
    :: Ptr BotanSRP6ServerSession -- ^ __srp6__: SRP-6 server session object
    -> IO CInt

-- | SRP-6 Server side step 1: Generate a server B-value
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

-- | SRP-6 Server side step 2:  Generate the server shared key
foreign import capi safe "botan/ffi.h botan_srp6_server_session_step2"
  botan_srp6_server_session_step2
    :: BotanSRP6ServerSession -- ^ __srp6__: SRP-6 server session object
    -> ConstPtr Word8         -- ^ __A[]__: the client's value
    -> CSize                  -- ^ __A_len__: the client's value length
    -> Ptr Word8              -- ^ __key[]__: out buffer to store the symmetric key value
    -> Ptr CSize              -- ^ __key_len__: symmetric key length
    -> IO CInt                -- ^ 0 on success, negative on failure

-- | SRP-6 Client side step 1:  Generate a new SRP-6 verifier
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

-- | SRP6a Client side step 2:  Generate a client A-value and the client shared key
foreign import capi safe "botan/ffi.h botan_srp6_client_agree"
  botan_srp6_client_agree
    :: ConstPtr CChar -- ^ __username__: the username we are attempting login for
    -> ConstPtr CChar -- ^ __password__: the password we are attempting to use
    -> ConstPtr CChar -- ^ __group_id__: specifies the shared SRP group
    -> ConstPtr CChar -- ^ __hash_id__: specifies a secure hash function
    -> ConstPtr Word8 -- ^ __salt[]__: is the salt value sent by the server
    -> CSize          -- ^ __salt_len__: the length of salt
    -> ConstPtr Word8 -- ^ __uint8_t__: B[] is the server's public value
    -> CSize          -- ^ __B_len__: is the server's public value length
    -> BotanRNG       -- ^ __rng_obj__: is a random number generator object
    -> Ptr Word8      -- ^ __A[]__: out buffer to store the SRP-6 A value
    -> Ptr CSize      -- ^ __A_len__: SRP-6 A verifier value length
    -> Ptr Word8      -- ^ __K[]__: out buffer to store the symmetric value
    -> Ptr CSize      -- ^ __K_len__: symmetric key length
    -> IO CInt        -- ^ 0 on success, negative on failure

-- | Return the size, in bytes, of the prime associated with group_id
foreign import capi safe "botan/ffi.h botan_srp6_group_size"
  botan_srp6_group_size
    :: ConstPtr CChar -- ^ __group_id__
    -> Ptr CSize      -- ^ __group_p_bytes__
    -> IO CInt
