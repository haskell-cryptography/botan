{-|
Module      : Botan.Bindings.SRP6
Description : Secure remote password
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
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

module Botan.Bindings.SRP6 where

import Botan.Bindings.Prelude
import Botan.Bindings.RNG

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
        :: Ptr BotanSRP6ServerSession -- ^ srp6 SRP-6 server session object
        -> IO CInt

-- | SRP-6 Server side step 1
foreign import capi safe "botan/ffi.h botan_srp6_server_session_step1"
    botan_srp6_server_session_step1
        :: BotanSRP6ServerSession   -- ^ @srp6@: SRP-6 server session object
        -> ConstPtr Word8           -- ^ @verifier[]@: the verification value saved from client registration
        -> CSize                    -- ^ @verifier_len@: SRP-6 verifier value length
        -> ConstPtr CChar           -- ^ @group_id@: the SRP group id
        -> ConstPtr CChar           -- ^ @hash_id@: the SRP hash in use
        -> BotanRNG                 -- ^ @rng_obj@: a random number generator object
        -> Ptr Word8                -- ^ @B_pub[]@: out buffer to store the SRP-6 B value
        -> Ptr CSize                -- ^ @B_pub_len@: SRP-6 B value length
        -> IO CInt                  -- ^ 0 on success, negative on failure

-- | SRP-6 Server side step 2
foreign import capi safe "botan/ffi.h botan_srp6_server_session_step2"
    botan_srp6_server_session_step2
        :: BotanSRP6ServerSession   -- ^ @srp6@: SRP-6 server session object
        -> ConstPtr Word8           -- ^ @A[]@: the client's value
        -> CSize                    -- ^ @A_len@: the client's value length
        -> Ptr Word8                -- ^ @key[]@: out buffer to store the symmetric key value
        -> Ptr CSize                -- ^ @key_len@: symmetric key length
        -> IO CInt                  -- ^ 0 on success, negative on failure

-- | Generate a new SRP-6 verifier
foreign import capi safe "botan/ffi.h botan_srp6_generate_verifier"
    botan_srp6_generate_verifier
        :: ConstPtr CChar -- ^ @identifier@: a username or other client identifier
        -> ConstPtr CChar -- ^ @password@: the secret used to authenticate user
        -> ConstPtr Word8 -- ^ @salt[]@: a randomly chosen value, at least 128 bits long
        -> CSize          -- ^ @salt_len@: the length of salt
        -> ConstPtr CChar -- ^ @group_id@: specifies the shared SRP group
        -> ConstPtr CChar -- ^ @hash_id@: specifies a secure hash function
        -> Ptr Word8      -- ^ @verifier[]@: out buffer to store the SRP-6 verifier value
        -> Ptr CSize      -- ^ @verifier_len@: SRP-6 verifier value length
        -> IO CInt        -- ^ 0 on success, negative on failure

-- | SRP6a Client side
foreign import capi safe "botan/ffi.h botan_srp6_client_agree"
    botan_srp6_client_agree
        :: ConstPtr CChar -- ^ @username@: the username we are attempting login for
        -> ConstPtr CChar -- ^ @password@: the password we are attempting to use
        -> ConstPtr CChar -- ^ @group_id@: specifies the shared SRP group
        -> ConstPtr CChar -- ^ @hash_id@: specifies a secure hash function
        -> ConstPtr Word8 -- ^ @salt[]@: is the salt value sent by the server
        -> CSize          -- ^ @salt_len@: the length of salt
        -> ConstPtr Word8 -- ^ @uint8_t@: B[] is the server's public value
        -> CSize          -- ^ @B_len@: is the server's public value length
        -> BotanRNG       -- ^ @rng_obj@: is a random number generator object
        -> Ptr Word8      -- ^ @A[]@: out buffer to store the SRP-6 A value
        -> Ptr CSize      -- ^ @A_len@: SRP-6 A verifier value length
        -> Ptr Word8      -- ^ @K[]@: out buffer to store the symmetric value
        -> Ptr CSize      -- ^ @K_len@: symmetric key length
        -> IO CInt        -- ^ 0 on success, negative on failure

-- | Return the size, in bytes, of the prime associated with group_id
foreign import capi safe "botan/ffi.h botan_srp6_group_size"
    botan_srp6_group_size
        :: ConstPtr CChar -- ^ @group_id@
        -> Ptr CSize      -- ^ @group_p_bytes@
        -> IO CInt
