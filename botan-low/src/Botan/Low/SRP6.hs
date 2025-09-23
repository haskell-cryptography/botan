{-|
Module      : Botan.Low.SRP6
Description : Secure remote password
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

The library contains an implementation of the SRP6-a password
authenticated key exchange protocol.

-}

module Botan.Low.SRP6
(

-- * Secure Random Password 6a
-- $introduction

-- * Usage
-- $usage

  SRP6ServerSession(..)
, withSRP6ServerSession
, srp6ServerSessionInit
, srp6ServerSessionDestroy
, srp6ServerSessionStep1
, srp6ServerSessionStep2
, srp6GenerateVerifier
, srp6ClientAgree
, srp6GroupSize

-- * SRP6 Types

, SRP6Verifier
, SRP6BValue
, SRP6AValue
, SRP6SharedSecret

-- * SRP discrete logarithm groups

, pattern MODP_SRP_1024
, pattern MODP_SRP_1536
, pattern MODP_SRP_2048
, pattern MODP_SRP_3072
, pattern MODP_SRP_4096
, pattern MODP_SRP_6144
, pattern MODP_SRP_8192

) where

import           Botan.Bindings.SRP6

import           Botan.Low.Error
import           Botan.Low.Hash
import           Botan.Low.Make
import           Botan.Low.Prelude
import           Botan.Low.PubKey
import           Botan.Low.Remake
import           Botan.Low.RNG

{- $introduction

A SRP client provides what is called a SRP verifier to the server.
This verifier is based on a password, but the password cannot be
easily derived from the verifier (however brute force attacks are
possible). Later, the client and server can perform an SRP exchange,
which results in a shared secret key. This key can be used for
mutual authentication and/or encryption.

SRP works in a discrete logarithm group. Special parameter sets for
SRP6 are defined, denoted in the library as @modp\/srp\/<size>@, for
example @modp\/srp\/2048@.

Warning

While knowledge of the verifier does not easily allow an attacker to
get the raw password, they could still use the verifier to impersonate
the server to the client, so verifiers should be protected as carefully
as a plaintext password would be.

SRP6 may be used as part of SSL/TLS: https://www.rfc-editor.org/rfc/rfc5054

-}

{- $usage

On signup, the client generates a salt and verifier, and securely sends them to a server:

> import Botan.Low.SRP6
> import Botan.Low.Hash
> import Botan.Low.RNG
> import Botan.Low.MAC
> rng <- rngInit UserRNG
> group = MODP_SRP_4096
> hash = SHA512
> identifier = "alice"
> password = "Fee fi fo fum!"
> salt <- rngGet rng 12
> verifier <- srp6GenerateVerifier identifier password salt group hash
> -- signUpUserWithServer identifier verifier salt group hash

Later, on the server when the client request authentication, the server
looks up the verfier, generates a server key (a SRP6 'B' value), and sends
it back to the client:

> -- rng <- rngInit UserRNG
> session <- srp6ServerSessionInit
> -- (verifier, salt, group, hash) <- lookupUser identifier
> serverKey <- srp6ServerSessionStep1 session verifier group hash rng

Once the client receives the server key, it generates a client key (SRP6 'A' value)
and the session key, and sends the client key to the server:

> -- serverKey <- didReceiveServerKey
> (clientKey, clientSessionKey) <- srp6ClientAgree identifier password group hash salt serverKey rng
> -- sendClientKey clientKey

The server then receives client key, and generates a matching session key:

> -- clientKey <- didReceiveClientKey
> serverSessionKey <- srp6ServerSessionStep2 session clientKey

At this point, clientSessionKey and serverSessionKey should be equal,
but this should be confirmed by exchanging a hash digest to check for integrity,
using the exchange's session key, identifier, salt, and client and server keys.

There are many ways to do this, but preferrably, an (h)mac digest should be used
to also include authentication and avoid impersonation.

> NOTE: Both sides could calculate 'identifier <> salt <> serverKey <> clientKey'
> individually but then we need to prove that each side has calculated it without
relying on the copy received for validation, so we do this song and dance:

The client should first calculate and send the HMAC auth, using identifier + salt + clientKey:

> mac <- macInit (hmac SHA3)
> macSetKey mac clientSessionKey
> macUpdate mac $ identifier <> salt <> clientKey
> clientAuth <- macFinal mac
> -- sendClientAuth clientAuth

The server should then verify the client auth, and send its own HMAC
auth back to the client using serverKey + clientAuth:

> -- clientAuth <- didReceiveClientAuth
> mac <- macInit (hmac SHA3)
> macSetKey mac serverSessionKey
> macUpdate mac $ identifier <> salt <> clientKey
> verifiedClientAuth <- macFinal mac
> -- clientAuth == verifiedClientAuth
> macClear mac
> macSetKey mac serverSessionKey
> macUpdate mac $ serverKey <> clientAuth
> serverAuth <- macFinal mac
> -- sendServerAuth serverAuth

The client then receives the server HMAC auth, and validates it

> -- serverAuth <- didReceiveServerAuth
> macClear mac
> macSetKey mac clientSessionKey
> macUpdate mac $ serverKey <> clientAuth
> verifiedServerAuth <- macFinal mac
> -- serverAuth == verifiedServerAuth

After this, the shared session key may be safely used.

-}


-- TODO: Unify with other / move to botan
type Identifier = ByteString
type Password = ByteString
type Salt = ByteString

type SRP6Verifier = ByteString
type SRP6BValue = ByteString
type SRP6AValue = ByteString
type SRP6SharedSecret = ByteString

newtype SRP6ServerSession = MkSRP6ServerSession { getSRP6ServerSessionForeignPtr :: ForeignPtr BotanSRP6ServerSessionStruct }

withSRP6ServerSession     :: SRP6ServerSession -> (BotanSRP6ServerSession -> IO a) -> IO a
-- | Destroy a SRP6 server session object immediately
srp6ServerSessionDestroy  :: SRP6ServerSession -> IO ()
createSRP6ServerSession   :: (Ptr BotanSRP6ServerSession -> IO CInt) -> IO SRP6ServerSession
(_, withSRP6ServerSession, srp6ServerSessionDestroy, createSRP6ServerSession, _)
    = mkBindings
        MkBotanSRP6ServerSession runBotanSRP6ServerSession
        MkSRP6ServerSession getSRP6ServerSessionForeignPtr
        botan_srp6_server_session_destroy

-- | Initialize an SRP-6 server session object
srp6ServerSessionInit
    :: IO SRP6ServerSession -- ^ __srp6__: SRP-6 server session object
srp6ServerSessionInit = createSRP6ServerSession botan_srp6_server_session_init

-- | SRP-6 Server side step 1: Generate a server B-value
srp6ServerSessionStep1
    :: SRP6ServerSession    -- ^ __srp6__: SRP-6 server session object
    -> SRP6Verifier         -- ^ __verifier[]__: the verification value saved from client registration
    -> DLGroupName          -- ^ __group_id__: the SRP group id
    -> HashName             -- ^ __hash_id__: the SRP hash in use
    -> RNG                  -- ^ __rng_obj__: a random number generator object
    -> IO SRP6BValue        -- ^ __B_pub[]__: out buffer to store the SRP-6 B value
srp6ServerSessionStep1 srp6 verifier groupId hashId rng = withSRP6ServerSession srp6 $ \ srp6Ptr -> do
    asBytesLen verifier $ \ verifierPtr verifierLen -> do
        asCString groupId $ \ groupIdPtr -> do
            asCString hashId $ \ hashIdPtr -> do
                withRNG rng $ \ botanRNG -> do
                    allocBytesQuerying $ \ outPtr outLen -> botan_srp6_server_session_step1
                        srp6Ptr
                        (ConstPtr verifierPtr)
                        verifierLen
                        (ConstPtr groupIdPtr)
                        (ConstPtr hashIdPtr)
                        botanRNG
                        outPtr
                        outLen

-- | SRP-6 Server side step 2:  Generate the server shared key
srp6ServerSessionStep2
    :: SRP6ServerSession    -- ^ __srp6__: SRP-6 server session object
    -> SRP6AValue           -- ^ __A[]__: the client's value
    -> IO SRP6SharedSecret  -- ^ __key[]__: out buffer to store the symmetric key value
srp6ServerSessionStep2 srp6 a = withSRP6ServerSession srp6 $ \ srp6Ptr -> do
    asBytesLen a $ \ aPtr aLen -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_srp6_server_session_step2
            srp6Ptr
            (ConstPtr aPtr)
            aLen
            outPtr
            outLen

-- | SRP-6 Client side step 1:  Generate a new SRP-6 verifier
srp6GenerateVerifier
    :: Identifier       -- ^ __identifier__: a username or other client identifier
    -> Password         -- ^ __password__: the secret used to authenticate user
    -> Salt             -- ^ __salt[]__: a randomly chosen value, at least 128 bits long
    -> DLGroupName      -- ^ __group_id__: specifies the shared SRP group
    -> HashName         -- ^ __hash_id__: specifies a secure hash function
    -> IO SRP6Verifier  -- ^ __verifier[]__: out buffer to store the SRP-6 verifier value
srp6GenerateVerifier identifier password salt groupId hashId = asCString identifier $ \ identifierPtr -> do
    asCString password $ \ passwordPtr -> do
        asBytesLen salt $ \ saltPtr saltLen -> do
            asCString groupId $ \ groupIdPtr -> do
                asCString hashId $ \ hashIdPtr -> do
                    allocBytesQuerying $ \ outPtr outLen -> botan_srp6_generate_verifier
                        (ConstPtr identifierPtr)
                        (ConstPtr passwordPtr)
                        (ConstPtr saltPtr)
                        saltLen
                        (ConstPtr groupIdPtr)
                        (ConstPtr hashIdPtr)
                        outPtr
                        outLen

-- NOTE: ORDER IS DIFFERENT FROM SERVER GENERATE VERIFIER
-- | SRP6a Client side step 2:  Generate a client A-value and the client shared key
srp6ClientAgree
    :: Identifier   -- ^ __username__: the username we are attempting login for
    -> Password     -- ^ __password__: the password we are attempting to use
    -> DLGroupName  -- ^ __group_id__: specifies the shared SRP group
    -> HashName     -- ^ __hash_id__: specifies a secure hash function
    -> Salt         -- ^ __salt[]__: is the salt value sent by the server
    -> SRP6BValue   -- ^ __uint8_t__: B[] is the server's public value
    -> RNG          -- ^ __rng_obj__: is a random number generator object
    -> IO (SRP6AValue, SRP6SharedSecret)    -- @(A,K)@
srp6ClientAgree identifier password groupId hashId salt b rng = do
    asCString identifier $ \ identifierPtr -> do
        asCString password $ \ passwordPtr -> do
            asCString groupId $ \ groupIdPtr -> do
                asCString hashId $ \ hashIdPtr -> do
                    asBytesLen salt $ \ saltPtr saltLen -> do
                        asBytesLen b $ \ bPtr bLen -> do
                            withRNG rng $ \ botanRNG -> do
                                alloca $ \ aSzPtr -> do
                                    alloca $ \ kSzPtr -> do
                                        -- Query sizes
                                        -- TODO: Actually ensure expected error (insufficient buffer space)
                                        --  and propagate unexpected errors
                                        _ <- botan_srp6_client_agree
                                            (ConstPtr identifierPtr)
                                            (ConstPtr passwordPtr)
                                            (ConstPtr groupIdPtr)
                                            (ConstPtr hashIdPtr)
                                            (ConstPtr saltPtr)
                                            saltLen
                                            (ConstPtr bPtr)
                                            bLen
                                            botanRNG
                                            nullPtr
                                            aSzPtr
                                            nullPtr
                                            kSzPtr
                                        kSz <- fromIntegral <$> peek kSzPtr
                                        aSz <- fromIntegral <$> peek aSzPtr
                                        allocBytesWith kSz $ \ kPtr -> do
                                            allocBytes aSz $ \ aPtr -> do
                                                throwBotanIfNegative_ $ botan_srp6_client_agree
                                                    (ConstPtr identifierPtr)
                                                    (ConstPtr passwordPtr)
                                                    (ConstPtr groupIdPtr)
                                                    (ConstPtr hashIdPtr)
                                                    (ConstPtr saltPtr)
                                                    saltLen
                                                    (ConstPtr bPtr)
                                                    bLen
                                                    botanRNG
                                                    aPtr
                                                    aSzPtr
                                                    kPtr
                                                    kSzPtr

-- NOTE: Missing FFI function: srp6_group_identifierz

-- | Return the size, in bytes, of the prime associated with group_id
srp6GroupSize
    :: DLGroupName  -- ^ __group_id__
    -> IO Int       -- ^ __group_p_bytes__
srp6GroupSize groupId = asCString groupId $ \ groupIdPtr -> do
    alloca $ \ szPtr -> do
        throwBotanIfNegative_ $ botan_srp6_group_size (ConstPtr groupIdPtr) szPtr
        fromIntegral <$> peek szPtr
