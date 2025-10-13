{-|
Module      : Botan.Low.SRP6
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

module Botan.Low.SRP6 (
    -- * Example usage
    -- $usage
    -- * Algorithm
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

import qualified Data.ByteString.Internal as BS

import           Botan.Bindings.SRP6

import           Botan.Low.Error
import           Botan.Low.Hash
import           Botan.Low.Prelude
import           Botan.Low.PubKey
import           Botan.Low.Remake
import           Botan.Low.RNG

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
-- | Frees all resources of the SRP-6 server session object
srp6ServerSessionDestroy  :: SRP6ServerSession -> IO ()
createSRP6ServerSession   :: (Ptr BotanSRP6ServerSession -> IO CInt) -> IO SRP6ServerSession
(_, withSRP6ServerSession, srp6ServerSessionDestroy, createSRP6ServerSession, _)
    = mkBindings
        MkBotanSRP6ServerSession runBotanSRP6ServerSession
        MkSRP6ServerSession getSRP6ServerSessionForeignPtr
        botan_srp6_server_session_destroy

-- | Initialize an SRP-6 server session object
srp6ServerSessionInit ::
     IO SRP6ServerSession -- ^ __srp6__: SRP-6 server session object
srp6ServerSessionInit = createSRP6ServerSession botan_srp6_server_session_init

-- | SRP-6 Server side step 1
--
-- NOTE: this function should be not be invoked twice on the same server
-- session. Regardless of the result of the first invocation, the second
-- invocation will result in an error. See
-- https://github.com/randombit/botan/issues/5112 for more information. If a
-- second invocation can not be prevented, try it on a newly initialised server
-- session instead.
srp6ServerSessionStep1 ::
     SRP6ServerSession -- ^ __srp6__: SRP-6 server session object
  -> SRP6Verifier      -- ^ __verifier[]__: the verification value saved from client registration
  -> DLGroupName       -- ^ __group_id__: the SRP group id
  -> HashName          -- ^ __hash_id__: the SRP hash in use
  -> RNG               -- ^ __rng_obj__: a random number generator object
  -> IO SRP6BValue     -- ^ __B_pub[]__: out buffer to store the SRP-6 B value
srp6ServerSessionStep1 srp6 verifier groupId hashId rng =
    withSRP6ServerSession srp6 $ \ srp6Ptr ->
    asBytesLen verifier $ \ verifierPtr verifierLen ->
    asCString groupId $ \ groupIdPtr ->
    asCString hashId $ \ hashIdPtr ->
    withRNG rng $ \ botanRNG ->
    createWithGroupSize groupId $ \ outPtr outLen ->
    throwBotanIfNegative_ $
      botan_srp6_server_session_step1
        srp6Ptr
        (ConstPtr verifierPtr)
        verifierLen
        (ConstPtr groupIdPtr)
        (ConstPtr hashIdPtr)
        botanRNG
        outPtr
        outLen

-- | SRP-6 Server side step 2
srp6ServerSessionStep2 ::
     SRP6ServerSession   -- ^ __srp6__: SRP-6 server session object
  -> SRP6AValue          -- ^ __A[]__: the client's value
  -> DLGroupName         -- ^ the SRP group id
  -> IO SRP6SharedSecret -- ^ __key[]__: out buffer to store the symmetric key value
srp6ServerSessionStep2 srp6 groupId a =
    withSRP6ServerSession srp6 $ \ srp6Ptr ->
    asBytesLen a $ \ aPtr aLen ->
    createWithGroupSize groupId $ \ outPtr outLen ->
    throwBotanIfNegative_ $
      botan_srp6_server_session_step2
        srp6Ptr
        (ConstPtr aPtr)
        aLen
        outPtr
        outLen

-- | Generate a new SRP-6 verifier
srp6GenerateVerifier ::
     Identifier      -- ^ __identifier__: a username or other client identifier
  -> Password        -- ^ __password__: the secret used to authenticate user
  -> Salt            -- ^ __salt[]__: a randomly chosen value, at least 128 bits long
  -> DLGroupName     -- ^ __group_id__: specifies the shared SRP group
  -> HashName        -- ^ __hash_id__: specifies a secure hash function
  -> IO SRP6Verifier -- ^ __verifier[]__: out buffer to store the SRP-6 verifier value
srp6GenerateVerifier identifier password salt groupId hashId =
    asCString identifier $ \ identifierPtr ->
    asCString password $ \ passwordPtr ->
    asBytesLen salt $ \ saltPtr saltLen ->
    asCString groupId $ \ groupIdPtr ->
    asCString hashId $ \ hashIdPtr ->
    createWithGroupSize groupId $ \ outPtr outLen ->
    throwBotanIfNegative_ $
      botan_srp6_generate_verifier
        (ConstPtr identifierPtr)
        (ConstPtr passwordPtr)
        (ConstPtr saltPtr)
        saltLen
        (ConstPtr groupIdPtr)
        (ConstPtr hashIdPtr)
        outPtr
        (castPtr outLen)

-- | SRP6a Client side
srp6ClientAgree ::
     -- | __username__: the username we are attempting login for
     Identifier
     -- | __password__: the password we are attempting to use
  -> Password
     -- | __group_id__: specifies the shared SRP group
  -> DLGroupName
     -- | __hash_id__: specifies a secure hash function
  -> HashName
     -- | __salt[]__: is the salt value sent by the server
  -> Salt
     -- | __B[]__: is the server's public value
  -> SRP6BValue
     -- | __rng_obj__: is a random number generator object
  -> RNG
     -- | A tuple of two elements (in order):
     --
     -- * __A[]__: out buffer to store the SRP-6 A value
     -- * __K[]__: out buffer to store the symmetric value
  -> IO (SRP6AValue, SRP6SharedSecret)
srp6ClientAgree identifier password groupId hashId salt b rng =
    asCString identifier $ \ identifierPtr ->
    asCString password $ \ passwordPtr ->
    asCString groupId $ \ groupIdPtr ->
    asCString hashId $ \ hashIdPtr ->
    asBytesLen salt $ \ saltPtr saltLen ->
    asBytesLen b $ \ bPtr bLen ->
    withRNG rng $ \ botanRNG ->
    createWithGroupSize' groupId $ \ aPtr aSzPtr ->
    createWithGroupSize groupId $ \ kPtr kSzPtr ->
    throwBotanIfNegative_ $
      botan_srp6_client_agree
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

-- | Return the size, in bytes, of the prime associated with group_id
--
-- This function can be used to determine the size of output buffers for
-- generated keys in the SRP6 algorithm. Such buffers need to be allocated
-- before calling SRP6 functions. An example of such a buffer is the
-- @verifier[]@ buffer in the 'srp6GenerateVerifier' function. In @botan-low@,
-- such buffers are created internally using 'srp6GroupSize', without requiring
-- input from you (the user).
srp6GroupSize ::
     DLGroupName  -- ^ __group_id__
  -> IO Int       -- ^ __group_p_bytes__
srp6GroupSize groupId =
    asCString groupId $ \ groupIdPtr ->
    alloca $ \ szPtr -> do
      throwBotanIfNegative_ $
        botan_srp6_group_size (ConstPtr groupIdPtr) szPtr
      fromIntegral <$> peek szPtr

{-------------------------------------------------------------------------------
  Utility
-------------------------------------------------------------------------------}

-- | A version of 'BS.create' that determines the size of the byte string based
-- on an argument 'DLGroupName'.
createWithGroupSize ::
     DLGroupName
  -> (Ptr Word8 -> Ptr CSize -> IO ())
  -> IO ByteString
createWithGroupSize groupId k = do
    sz <- srp6GroupSize groupId
    createWithSize sz k

-- | A version of 'BS.create' that also creates a pointer for the size of the
-- byte string.
createWithSize ::
     Int
  -> (Ptr Word8 -> Ptr CSize -> IO ())
  -> IO ByteString
createWithSize sz k =
    BS.createUptoN sz $ \bytesPtr ->
    alloca $ \lenPtr -> do
      poke lenPtr (fromIntegral sz)
      k bytesPtr lenPtr
      fromIntegral <$> peek lenPtr

-- | A version of 'BS.createUptoN'' that determines the size of the byte string
-- based on an argument 'DLGroupName'.
createWithGroupSize' ::
     DLGroupName
  -> (Ptr Word8 -> Ptr CSize -> IO a)
  -> IO (ByteString, a)
createWithGroupSize' groupId k = do
    sz <- srp6GroupSize groupId
    createWithSize' sz k

-- | A version of 'BS.createUptoN'' that also creates a pointer for the size of
-- the byte string.
createWithSize' ::
     Int
  -> (Ptr Word8 -> Ptr CSize -> IO a)
  -> IO (ByteString, a)
createWithSize' sz k =
    BS.createUptoN' sz $ \bytesPtr ->
    alloca $ \lenPtr -> do
      poke lenPtr (fromIntegral sz)
      x <- k bytesPtr lenPtr
      sz' <- fromIntegral <$> peek lenPtr
      pure (sz', x)
