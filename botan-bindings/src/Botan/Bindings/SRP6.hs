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

module Botan.Bindings.SRP6 where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.Random

{-|
SRP-6 Server Session type

@typedef struct botan_srp6_server_session_struct* botan_srp6_server_session_t;@
-}

data SRP6Struct
type SRP6Ptr = Ptr SRP6Struct

{-|
Initialize an SRP-6 server session object

- \@param srp6 SRP-6 server session object

@BOTAN_PUBLIC_API(3,0)
int botan_srp6_server_session_init(botan_srp6_server_session_t *srp6);@
-}
foreign import ccall unsafe botan_srp6_server_session_init :: Ptr SRP6Ptr -> IO BotanErrorCode

{-|
Frees all resources of the SRP-6 server session object

- \@param srp6 SRP-6 server session object
- \@return 0 if success, error if invalid object handle

@BOTAN_PUBLIC_API(3,0)
int botan_srp6_server_session_destroy(botan_srp6_server_session_t srp6);@
-}
foreign import ccall unsafe "&botan_srp6_server_session_destroy" botan_srp6_server_session_destroy :: FinalizerPtr SRP6Struct

{-|
SRP-6 Server side step 1

- \@param srp6 SRP-6 server session object
- \@param verifier the verification value saved from client registration
- \@param verifier_len SRP-6 verifier value length
- \@param group_id the SRP group id
- \@param hash_id the SRP hash in use
- \@param rng_obj a random number generator object
- \@param B_pub out buffer to store the SRP-6 B value
- \@param B_pub_len SRP-6 B value length
- \@return 0 on success, negative on failure

@BOTAN_PUBLIC_API(3,0)
int botan_srp6_server_session_step1(botan_srp6_server_session_t srp6,
                                    const uint8_t verifier[],
                                    size_t verifier_len, const char *group_id,
                                    const char *hash_id, botan_rng_t rng_obj,
                                    uint8_t B_pub[], size_t *B_pub_len);@
-}
foreign import ccall unsafe botan_srp6_server_session_step1
    :: SRP6Ptr
    -> Ptr Word8    -- Verifier
    -> CSize        -- Verifier len
    -> CString      -- Group id
    -> CString      -- Hash id
    -> RandomPtr
    -> Ptr Word8    -- Out
    -> Ptr CSize    -- Out len
    -> IO BotanErrorCode

{-|
SRP-6 Server side step 2

- \@param srp6 SRP-6 server session object
- \@param A the client's value
- \@param A_len the client's value length
- \@param key out buffer to store the symmetric key value
- \@param key_len symmetric key length
- \@return 0 on success, negative on failure

@BOTAN_PUBLIC_API(3,0)
int botan_srp6_server_session_step2(botan_srp6_server_session_t srp6,
                                    const uint8_t A[], size_t A_len,
                                    uint8_t key[], size_t *key_len);@
-}
foreign import ccall unsafe botan_srp6_server_session_step2
    :: SRP6Ptr
    -> Ptr Word8
    -> CSize
    -> Ptr Word8
    -> Ptr CSize
    -> IO BotanErrorCode

{-|
Generate a new SRP-6 verifier

- \@param identifier a username or other client identifier
- \@param password the secret used to authenticate user
- \@param salt a randomly chosen value, at least 128 bits long
- \@param salt_len the length of salt
- \@param group_id specifies the shared SRP group
- \@param hash_id specifies a secure hash function
- \@param verifier out buffer to store the SRP-6 verifier value
- \@param verifier_len SRP-6 verifier value length
- \@return 0 on success, negative on failure

@BOTAN_PUBLIC_API(3,0)
int botan_srp6_generate_verifier(const char *identifier, const char *password,
                                 const uint8_t salt[], size_t salt_len,
                                 const char *group_id, const char *hash_id,
                                 uint8_t verifier[], size_t *verifier_len);@
-}
foreign import ccall unsafe botan_srp6_generate_verifier
    :: CString      -- Identifier
    -> CString      -- Password
    -> Ptr Word8    -- Salt
    -> CSize        -- Salt len
    -> CString      -- Group id
    -> CString      -- Hash id
    -> Ptr Word8    -- Verifier (output)
    -> Ptr CSize    -- Verifier len
    -> IO BotanErrorCode

{-|
SRP6a Client side

- \@param username the username we are attempting login for
- \@param password the password we are attempting to use
- \@param group_id specifies the shared SRP group
- \@param hash_id specifies a secure hash function
- \@param salt is the salt value sent by the server
- \@param salt_len the length of salt
- \@param B is the server's public value
- \@param B_len is the server's public value length
- \@param rng_obj is a random number generator object
- \@param A out buffer to store the SRP-6 A value
- \@param A_len SRP-6 A verifier value length
- \@param K out buffer to store the symmetric value
- \@param K_len symmetric key length
- \@return 0 on success, negative on failure

@BOTAN_PUBLIC_API(3,0)
int botan_srp6_client_agree(const char *username, const char *password,
                            const char *group_id, const char *hash_id,
                            const uint8_t salt[], size_t salt_len,
                            const uint8_t B[], size_t B_len, botan_rng_t rng_obj,
                            uint8_t A[], size_t *A_len, uint8_t K[],
                            size_t *K_len);@
-}
foreign import ccall unsafe botan_srp6_client_agree
    :: CString      -- Identifier
    -> CString      -- Password
    -> CString      -- Group id
    -> CString      -- Hash id
    -> Ptr Word8    -- Salt
    -> CSize        -- Salt len
    -> Ptr Word8    -- B
    -> CSize        -- B len
    -> RandomPtr
    -> Ptr Word8    -- A (Output)
    -> Ptr CSize    -- A len
    -> Ptr Word8    -- K (Output)
    -> Ptr CSize    -- K len
    -> IO BotanErrorCode

{-|
Return the size, in bytes, of the prime associated with group_id

@BOTAN_PUBLIC_API(3,0)
int botan_srp6_group_size(const char* group_id, size_t* group_p_bytes);@
-}
foreign import ccall unsafe botan_srp6_group_size :: CString -> Ptr CSize -> IO BotanErrorCode
