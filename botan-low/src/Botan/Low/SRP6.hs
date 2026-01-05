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
    -- * Password hashing
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

import           Botan.Bindings.ConstPtr (ConstPtr (..))
import           Botan.Bindings.SRP6
import           Botan.Low.Error.Internal
import           Botan.Low.Hash
import           Botan.Low.Internal.ByteString
import           Botan.Low.PubKey
import           Botan.Low.Remake
import           Botan.Low.RNG
import           Data.ByteString (ByteString)
import qualified Data.ByteString.Internal as BS
import           Data.Word
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Marshal.Alloc
import           Foreign.Ptr
import           Foreign.Storable

{-------------------------------------------------------------------------------
  Example usage
-------------------------------------------------------------------------------}

-- NOTE: when changing this example, also change the copied example in the
-- "Test.Botan.Low.SRP6.Example" module.

{- $usage

This is a simplified, executable example that should give you an idea of how to
use the functions in this module to run the SRP6 protocol. We will not explain
the protocol in detail here, so consult other sources if you need details about
the algorithm. The simplified example shows how a client and server run the
protocol from separate threads, keeping private values secret and communicating
public values using message passing. In practice, the client and server will
probably run on separate machines (or processes) with secure communication
channels in place, and other security measures are necessary. So, don't use this
example directly in your code if it runs in production.

Let us start with some necessary imports.

>>> :{
{-# OPTIONS_GHC -threaded -Wall #-}
{-# LANGUAGE OverloadedStrings #-}
import           Botan.Low.Hash
import           Botan.Low.PubKey
import           Botan.Low.RNG
import           Botan.Low.SRP6
import           Control.Concurrent
import           Control.Concurrent.Async
import           Data.ByteString hiding (group)
import           Data.IORef
import           Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import           Data.Maybe
import           Text.Printf
:}

The client and server exchange a number of messages during the protocol. They
will be explained in more detail later as they become relevant for the part of
the protocol that we are discussing. The messages will be exchanged from the
client to the server using an @MVar ClientMsg@, and from the server to the
client using an @MVar ServerMsg@.

>>> :{
type Identifier = ByteString
data ClientMsg =
    Signup Identifier SRP6Verifier
  | StartAuthentication Identifier
  | SendClientPublicKey SRP6AValue
data ServerMsg =
    SendServerPublicKey SRP6BValue
:}

SRP works in a discrete logarithm group, and it computes hashes using a hash
family. Both can be configured, and we will configure them as follows:

>>> :{
group :: DLGroupName
group = MODP_SRP_4096
hash :: HashName
hash = SHA512
:}

When a client wants to sign up with the server with a combination of an
identifier and password, the client first generates a verifier using the
identifier, the password, and a locally generated salt. Then, the client sends
their identifier and verifier to the server, while it stores its own salt
locally:

>>> :{
type Password = ByteString
type Salt = ByteString
clientSignup :: MVar ClientMsg -> Identifier -> Password -> IO Salt
clientSignup clientMsgVar identifier password = do
    rng <- rngInit UserRNG
    salt <- rngGet rng 12
    verifier <- srp6GenerateVerifier identifier password salt group hash
    putMVar clientMsgVar $ Signup identifier verifier
    pure salt
:}

The server receives the signup request, and stores the identifier with the
verifier:

>>> :{
type Users = Map Identifier SRP6Verifier
serverSignup :: MVar ClientMsg -> IORef Users -> IO ()
serverSignup clientMsgVar usersRef = do
    Signup identifier verifier <- takeMVar clientMsgVar
    modifyIORef usersRef $ Map.insert identifier verifier
:}

Later, the client may request to authenticate itself to the server:

>>> :{
clientStartAuthentication :: MVar ClientMsg -> Identifier -> IO ()
clientStartAuthentication clientMsgVar identifier = do
    putMVar clientMsgVar $ StartAuthentication identifier
:}

The server receives the authentication request, looks up the verfier, generates
the server's public key (a SRP6 @B@ value), and sends it back to the client:

>>> :{
serverStartAuthentication :: MVar ClientMsg -> MVar ServerMsg -> IORef Users -> IO SRP6ServerSession
serverStartAuthentication clientMsgVar serverMsg usersRef = do
    StartAuthentication identifier <- takeMVar clientMsgVar
    users <- readIORef usersRef
    let verifier = fromJust $ Map.lookup identifier users
    rng <- rngInit UserRNG
    session <- srp6ServerSessionInit
    serverPublicKey <- srp6ServerSessionStep1 session verifier group hash rng
    putMVar serverMsg $ SendServerPublicKey serverPublicKey
    pure session
:}

Once the client receives the server's public key, it generates the client's
public key (an SRP6 @B@ value) and the shared secret key, and sends the client's
public key to the server:

>>> :{
clientAuthentication :: MVar ClientMsg -> MVar ServerMsg -> Identifier -> Password -> Salt -> IO SRP6SharedSecret
clientAuthentication clientMsgVar serverMsgVar identifier password salt = do
    SendServerPublicKey serverPublicKey <- takeMVar serverMsgVar
    rng <- rngInit UserRNG
    (clientPublicKey, clientSecretKey) <-
      srp6ClientAgree identifier password group hash salt serverPublicKey rng
    putMVar clientMsgVar $ SendClientPublicKey clientPublicKey
    pure clientSecretKey
:}

The server then receives the client's public key, and generates a matching
shared secret key:

>>> :{
serverAuthentication :: MVar ClientMsg -> SRP6ServerSession -> IO SRP6SharedSecret
serverAuthentication clientMsgVar session = do
    SendClientPublicKey clientPublicKey <- takeMVar clientMsgVar
    serverSecretKey <- srp6ServerSessionStep2 session group clientPublicKey
    pure serverSecretKey
:}

At this point, the client's and servers' secret key should be equal. In
practice, the secret keys should be confirmed to match by exchanging a hash
digest of relevant protocol values, susch as the secret key, public keys,
identifier, salt, and more. Calculation of this hash digest is not part of this
example. Instead, we will return the secret keys from the client and server so
that we can compare them, which obviously breaks security, but this should be
fine for our example.

We bring the client-side of the algorithm together by picking an identifier and
password, and calling the client-side functions in order.

>>> :{
client :: MVar ClientMsg -> MVar ServerMsg -> IO SRP6SharedSecret
client clientMsgVar serverMsgVar = do
    let identifier = "alice"
        password = "Fee fi fo fum!"
    salt <- clientSignup clientMsgVar identifier password
    clientStartAuthentication clientMsgVar identifier
    clientAuthentication clientMsgVar serverMsgVar identifier password salt
:}

We bring the server-side of the algorithm together by initialising a session and
calling the server-side functions in order.

>>> :{
server :: MVar ClientMsg -> MVar ServerMsg -> IO SRP6SharedSecret
server clientMsgVar serverMsgVar = do
    usersRef <- newIORef Map.empty
    serverSignup clientMsgVar usersRef
    session <- serverStartAuthentication clientMsgVar serverMsgVar usersRef
    serverAuthentication clientMsgVar session
:}

Using the @async@ package, we spin up a thread for the client and a thread for
the server. We wait for them to finish, and then compare the resulting secret
keys.

>>> :{
main :: IO ()
main = do
  clientMsgVar <- newEmptyMVar
  serverMsgVar <- newEmptyMVar
  (clientSecretKey, serverSecretKey) <-
    concurrently (client clientMsgVar serverMsgVar) (server clientMsgVar serverMsgVar)
  let match = clientSecretKey == serverSecretKey
  if match then
    print @String "client secret == server secret"
  else
    error $
      printf "%s /= %s"
              (show clientSecretKey)
              (show serverSecretKey)
:}

All that is left to do is run the program.

>>> main
"client secret == server secret"

-}

{-------------------------------------------------------------------------------
  Password hashing
-------------------------------------------------------------------------------}

-- TODO: Unify with other / move to botan
type Identifier = ByteString
type Password = ByteString
type Salt = ByteString

type SRP6Verifier = ByteString
type SRP6BValue = ByteString
type SRP6AValue = ByteString
type SRP6SharedSecret = ByteString

newtype SRP6ServerSession = MkSRP6ServerSession { foreignPtr :: ForeignPtr BotanSRP6ServerSessionStruct }

withSRP6ServerSession     :: SRP6ServerSession -> (BotanSRP6ServerSession -> IO a) -> IO a
-- | Frees all resources of the SRP-6 server session object
srp6ServerSessionDestroy  :: SRP6ServerSession -> IO ()
createSRP6ServerSession   :: (Ptr BotanSRP6ServerSession -> IO CInt) -> IO SRP6ServerSession
(withSRP6ServerSession, srp6ServerSessionDestroy, createSRP6ServerSession)
    = mkBindings
        MkBotanSRP6ServerSession (.ptr)
        MkSRP6ServerSession (.foreignPtr)
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

-- | Like 'createWithSize', but we determine the maximum size of the byte string
-- based on an argument 'DLGroupName'.
createWithGroupSize ::
     DLGroupName
  -> (Ptr Word8 -> Ptr CSize -> IO ())
  -> IO ByteString
createWithGroupSize groupId k = do
    sz <- srp6GroupSize groupId
    createWithSize sz k

-- | Given the maximum size needed and a function to make the contents of a
-- 'ByteString', 'createWithSize' makes the 'ByteString'.
--
-- The generating function is required to write the actual final size (<= the
-- maximum size) to the 'CSize' pointer, and the resulting byte array is
-- reallocated to this size.
--
-- NOTE: this is based on 'BS.createAndTrim'.
createWithSize ::
     Int
  -> (Ptr Word8 -> Ptr CSize -> IO ())
  -> IO ByteString
createWithSize sz k =
    BS.createAndTrim sz $ \bytesPtr ->
    alloca $ \lenPtr -> do
      poke lenPtr (fromIntegral sz)
      k bytesPtr lenPtr
      fromIntegral <$> peek lenPtr

-- | Like 'createWithGroupSize', but also returns an additional value created by
-- the action.
createWithGroupSize' ::
     DLGroupName
  -> (Ptr Word8 -> Ptr CSize -> IO a)
  -> IO (ByteString, a)
createWithGroupSize' groupId k = do
    sz <- srp6GroupSize groupId
    createWithSize' sz k

-- | Like 'createWithSize', but also returns an additional value created by the
-- action.
--
-- NOTE: this is based on 'BS.createAndTrim''.
createWithSize' ::
     Int
  -> (Ptr Word8 -> Ptr CSize -> IO a)
  -> IO (ByteString, a)
createWithSize' sz k =
    BS.createAndTrim' sz $ \bytesPtr ->
    alloca $ \lenPtr -> do
      poke lenPtr (fromIntegral sz)
      x <- k bytesPtr lenPtr
      sz' <- fromIntegral <$> peek lenPtr
      pure (0, sz', x)
