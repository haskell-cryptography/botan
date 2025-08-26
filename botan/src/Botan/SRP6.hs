{-|
Module      : Botan.SRP6
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

{-# LANGUAGE TypeSynonymInstances, FlexibleInstances #-}

module Botan.SRP6
(

-- * SRP6
-- $introduction

-- * Usage
-- $usage

-- * Server session

-- ** Mutable context
 SRP6ServerSession(..)

-- ** Destructor

, destroySRP6ServerSession

-- ** Associated types
, SRP6Group(..)
, SRP6Hash(..)
-- , SRP6Config(..)
, SRP6Salt(..)
, SRP6Verifier(..)
, SRP6ServerKey(..)
, SRP6ClientKey(..)
, SRP6SessionKey(..)

-- ** Initializers

, newSRP6ServerSession

-- ** Accessors
-- TODO: Missing
-- , srp6GroupId

-- ** Accessory functions

, srp6GroupSize

-- ** Algorithm

, generateSRP6ClientVerifier
, generateSRP6ClientSecrets

, generateSRP6ServerKey
, generateSRP6ClientKeys
, generateSRP6SessionKey

-- TODO: Server and client should exchange proof of session key before it is used,
-- with the client sending it first. This proof can be a Hash or HMAC of the session
-- key
-- , generateSRP6ClientSessionProof
-- , generateSRP6ServerSessionProof

) where

import qualified Data.ByteString as ByteString

import qualified Botan.Low.SRP6 as Low

import Botan.Error
import Botan.Hash
import Botan.PubKey
import Botan.Prelude
import Botan.RNG

import Control.Monad.Reader

{- $usage

```
import Botan.SRP6
import Botan.PubKey (DLGroup(..))
import Botan.Hash
import Botan.MAC
let group = MODP_SRP_4096
let hash = Cryptohash $ SHA2 SHA512
let user = "bob"
let pass = "burger"
-- Signup
-- Client generates a salt and verifier, and sends them to a server
(salt, verifier) <- generateSRP6ClientSecrets group hash user pass
-- Authentication (client has requested a connection)
-- Server looks up their verifier, generates a server key, and sends it back
session <- newSRP6ServerSession
serverKey <- generateSRP6ServerKey group hash session verifier
-- Client receives server key, and generates a client key and (client) session key
(clientKey, clientSessionKey) <- generateSRP6ClientKeys group hash user pass salt serverKey
-- Server receives client key, and generates a matching (server) session key
serverSessionKey <- generateSRP6SessionKey session clientKey
-- At this point, clientSessionKey and serverSessionKey should be equal,
-- but this should be confirmed by exchanging hash digest to check for integrity,
-- or preferrably, an (h)mac digest to also include authentication and avoid impersonation.
-- The client should send their hash / hmac first as the server shouldn't do
-- anything with the session key until they finish verifying the client
-- SEE: https://en.wikipedia.org/wiki/Secure_Remote_Password_protocol#Offline_bruteforce_attack_with_server-first_messaging_in_the_absence_of_key_verification
-- We can handle this by having both the client and server calculate a mac auth
-- code using the session key and user name.
-- The client calculates and sends first
Just clientAuth = mac (HMAC hash) clientSessionKey user
-- The server receives the client auth, generates their own, and compares them
Just serverAuth = mac (HMAC hash) serverSessionKey user
serverAuth == clientAuth
-- If it matches, the server then switches to encrypted mode using the session key
-- and sends the server auth code to the client
-- QUESTION, should the server send the server auth code before switching to encrypted,
-- or should it send the server auth code as the first encrypted message? FIND OUT
```

Minus the explanations

```
import Botan.SRP6
import Botan.PubKey (DLGroup(..))
import Botan.Hash
import Botan.MAC
let group = MODP_SRP_4096
let hash = Cryptohash $ SHA2 SHA512
let user = "bob"
let pass = "burger"
(salt, verifier) <- generateSRP6ClientSecrets group hash user pass
session <- newSRP6ServerSession
serverKey <- generateSRP6ServerKey group hash session verifier
(clientKey, clientSessionKey) <- generateSRP6ClientKeys group hash user pass salt serverKey
serverSessionKey <- generateSRP6SessionKey session clientKey
Just clientAuth = mac (HMAC hash) clientSessionKey user
Just serverAuth = mac (HMAC hash) serverSessionKey user
serverAuth == clientAuth
```
-}

--
-- Server session
--

-- ** Mutable context

type SRP6ServerSession = Low.SRP6ServerSession

-- ** Destructor

destroySRP6ServerSession :: (MonadIO m) => Low.SRP6ServerSession -> m ()
destroySRP6ServerSession = liftIO . Low.srp6ServerSessionDestroy

-- ** Associated types

type SRP6Group = DLGroup
-- TODO: Confirm if a DLGroup in general works, or just the modp srp groups:
-- , "modp/srp/1024"
-- , "modp/srp/1536"
-- , "modp/srp/2048"
-- , "modp/srp/3072"
-- , "modp/srp/4096"
-- , "modp/srp/6144"
-- , "modp/srp/8192"

-- TODO: Confirm if any Hash in general works, or just specific ones (eg block size 128):
type SRP6Hash = Hash

type SRP6Salt = ByteString
type SRP6Verifier = ByteString
type SRP6ServerKey = ByteString
type SRP6ClientKey = ByteString
type SRP6SessionKey = ByteString

-- ** Initializers

-- TODO: Integrate step1 / generateServerKey with session init, persist data in the session
newSRP6ServerSession :: (MonadIO m) => m SRP6ServerSession
newSRP6ServerSession = liftIO Low.srp6ServerSessionInit

-- ** Accessors
-- TODO: Missing
-- , srp6GroupId

-- Accessory functions

srp6GroupSize :: DLGroup -> Int
srp6GroupSize = unsafePerformIO . Low.srp6GroupSize . dlGroupName

-- Algorithm

generateSRP6ClientVerifier
    :: SRP6Group
    -> SRP6Hash
    -> ByteString
    -> ByteString
    -> SRP6Salt
    -> SRP6Verifier
generateSRP6ClientVerifier group hash ident pass salt = unsafePerformIO $ do
    Low.srp6GenerateVerifier ident pass salt (dlGroupName group) (hashName hash)

generateSRP6ClientSecrets
    :: (MonadRandomIO m)
    => SRP6Group
    -> SRP6Hash
    -> ByteString
    -> ByteString
    -> m (SRP6Salt, SRP6Verifier)
generateSRP6ClientSecrets group hash ident pass = do
    salt <- getRandomBytes 12
    let verifier = generateSRP6ClientVerifier group hash ident pass salt
    return $ verifier `seq` (salt, verifier)

generateSRP6ServerKey
    :: (MonadRandomIO m)
    => SRP6Group
    -> SRP6Hash
    -> SRP6ServerSession
    -> SRP6Verifier
    -> m SRP6ServerKey
generateSRP6ServerKey group hash session verifier = do
    rng <- getRNG
    liftIO $ Low.srp6ServerSessionStep1
        session
        verifier
        (dlGroupName group)
        (hashName hash)
        rng

generateSRP6ClientKeys
    :: (MonadRandomIO m)
    => SRP6Group
    -> SRP6Hash
    -> ByteString
    -> ByteString
    -> SRP6Salt
    -> SRP6ServerKey
    -> m (SRP6ClientKey, SRP6SessionKey)
generateSRP6ClientKeys group hash ident pass salt skey = do
    rng <- getRNG
    liftIO $ Low.srp6ClientAgree
        ident
        pass
        (dlGroupName group)
        (hashName hash)
        salt
        skey
        rng

generateSRP6SessionKey
    :: (MonadIO m)
    => SRP6ServerSession
    -> SRP6ClientKey
    -> m SRP6SessionKey
generateSRP6SessionKey session ckey = liftIO $ Low.srp6ServerSessionStep2 session ckey


--

-- TODO: Monadic SRP6 sessions for much smoother automatic handling of stuff
-- TODO: Needs to handle verifiers

data SRP6Config'
    = SRP6Config'
    { srp6ConfigGroup' :: SRP6Group
    , srp6ConfigHash'  :: SRP6Hash
    , srp6ConfigIdent' :: ByteString
    , srp6ConfigSalt'  :: SRP6Salt
    }

class (Monad m) => SRP6Session' m where

    getSRP6Config' :: m SRP6Config'

    getSRP6SessionKey' :: m SRP6SessionKey

getSRP6Group' :: (SRP6Session' m) => m SRP6Group
getSRP6Group' = srp6ConfigGroup' <$> getSRP6Config'

getSRP6Hash' :: (SRP6Session' m) => m SRP6Hash
getSRP6Hash' = srp6ConfigHash' <$> getSRP6Config'

getSRP6Ident' :: (SRP6Session' m) => m ByteString
getSRP6Ident' = srp6ConfigIdent' <$> getSRP6Config'

getSRP6Salt' :: (SRP6Session' m) => m SRP6Salt
getSRP6Salt' = srp6ConfigSalt' <$> getSRP6Config'

class (SRP6Session' m) => SRP6Server' m where

    getSRP6ServerSession' :: m SRP6ServerSession'

-- TODO: Maybe MVar instead of IORef - has valid state for 'uninitialized' re blocking on empty
data SRP6ServerSession'
    = SRP6ServerSession'
    { srp6ServerSessionConfig'      :: SRP6Config'
    , srp6ServerSessionRef'         :: Low.SRP6ServerSession
    , srp6ServerSessionServerKey'   :: IORef SRP6ServerKey
    , srp6ServerSessionSessionKey'  :: IORef SRP6SessionKey
    -- , srp6ServerSessionUserContext :: IORef a
    }

-- TODO: Newtype
type SRP6ServerT' m = ReaderT SRP6ServerSession' m

runSRP6ServerT' :: (MonadIO m) => SRP6ServerT' m a -> SRP6ServerSession' -> m a
runSRP6ServerT' = runReaderT

instance (MonadIO m) => SRP6Session' (SRP6ServerT' m) where

    getSRP6Config' :: SRP6ServerT' m SRP6Config'
    getSRP6Config' = srp6ServerSessionConfig' <$> getSRP6ServerSession'

    getSRP6SessionKey' :: SRP6ServerT' m SRP6SessionKey
    getSRP6SessionKey' = do
        session <- getSRP6ServerSession'
        liftIO $ readIORef (srp6ServerSessionSessionKey' session)

instance (MonadIO m) => SRP6Server' (SRP6ServerT' m) where

    getSRP6ServerSession' :: SRP6ServerT' m SRP6ServerSession'
    getSRP6ServerSession' = ask

class (SRP6Session' m) => SRP6Client' m where

    getSRP6ClientSession' :: m SRP6ClientSession'

-- TODO: Maybe MVar instead of IORef - has valid state for 'uninitialized' re blocking on empty
data SRP6ClientSession'
    = SRP6ClientSession'
    { srp6ClientSessionConfig'       :: SRP6Config'
    , srp6ClientSessionClientKey'    :: IORef SRP6ClientKey
    , srp6ClientSessionSessionKey'   :: IORef SRP6SessionKey
    -- , srp6ClientSessionUserContext :: IORef a
    }

-- TODO: Newtype
type SRP6ClientT' m = ReaderT SRP6ClientSession' m

runSRP6ClientT' :: (MonadIO m) => SRP6ClientT' m a -> SRP6ClientSession' -> m a
runSRP6ClientT' = runReaderT

instance (MonadIO m) => SRP6Session' (SRP6ClientT' m) where

    getSRP6Config' :: SRP6ClientT' m SRP6Config'
    getSRP6Config' = srp6ClientSessionConfig' <$> getSRP6ClientSession'

    getSRP6SessionKey' :: SRP6ClientT' m SRP6SessionKey
    getSRP6SessionKey' = do
        session <- getSRP6ClientSession'
        liftIO $ readIORef (srp6ClientSessionSessionKey' session)

instance (MonadIO m) => SRP6Client' (SRP6ClientT' m) where

    getSRP6ClientSession' :: SRP6ClientT' m SRP6ClientSession'
    getSRP6ClientSession' = ask


-- TODO: Elide group, hash, salt, and handshake for extreme convenience

newClient :: (MonadRandomIO m) => ByteString -> m SRP6ClientSession'
newClient ident = newClientWith ident MODP_SRP_4096 sha2_512

newClientWith :: (MonadRandomIO m) => ByteString -> SRP6Group -> SRP6Hash -> m SRP6ClientSession'
newClientWith ident group hash = do
    salt <- getRandomBytes 12
    loadClientWith ident $ \ _ -> return (group, hash, salt)

loadClientWith :: (MonadIO m) => ByteString -> (ByteString -> m (SRP6Group, SRP6Hash, SRP6Salt)) -> m SRP6ClientSession'
loadClientWith ident lookup = do
    (group, hash, salt) <- lookup ident
    let sessionConfig = SRP6Config'
            { srp6ConfigGroup' = group
            , srp6ConfigHash'  = hash
            , srp6ConfigIdent' = ident
            , srp6ConfigSalt'  = salt
            }
    clientKeyRef <- liftIO $ newIORef undefined
    sessionKeyRef <- liftIO $ newIORef undefined
    -- userContextRef <- liftIO $ newIORef undefined
    return $ SRP6ClientSession'
        { srp6ClientSessionConfig'      = sessionConfig
        , srp6ClientSessionClientKey'   = clientKeyRef
        , srp6ClientSessionSessionKey'  = sessionKeyRef
        -- , srp6ClientSessionUserContext  = userContextRef
        }
