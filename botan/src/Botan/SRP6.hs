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
, SRP6GroupId(..)
, SRP6HashId(..)
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


) where

import qualified Data.ByteString as ByteString

import qualified Botan.Low.SRP6 as Low

import Botan.Error
import Botan.Hash
import Botan.PubKey
import Botan.Prelude
import Botan.RNG

--
-- Server session
--

-- ** Mutable context

data SRP6ServerSession

-- ** Destructor

destroySRP6ServerSession = undefined

-- ** Associated types

type SRP6GroupId = DLGroup
-- TODO: Confirm if a DLGroup in general works, or just the modp srp groups:
-- , "modp/srp/1024"
-- , "modp/srp/1536"
-- , "modp/srp/2048"
-- , "modp/srp/3072"
-- , "modp/srp/4096"
-- , "modp/srp/6144"
-- , "modp/srp/8192"

-- TODO: Confirm if any Hash in general works, or just specific ones (eg block size 128):
type SRP6HashId = Hash

-- data SRP6Config
--     = SRP6Config
--     { srp6ConfigGroupId :: SRP6GroupId
--     , srp6ConfigHashId :: SRP6HashId
--     }

type SRP6Salt = ByteString
type SRP6Verifier = ByteString
type SRP6ServerKey = ByteString
type SRP6ClientKey = ByteString
type SRP6SessionKey = ByteString

-- ** Initializers

newSRP6ServerSession :: (MonadIO m) => m SRP6ServerSession
newSRP6ServerSession = undefined

-- ** Accessors
-- TODO: Missing
-- , srp6GroupId

-- Accessory functions

srp6GroupSize :: DLGroup -> Int
srp6GroupSize = undefined

-- Algorithm

generateSRP6ClientVerifier
    :: SRP6GroupId
    -> SRP6HashId
    -> ByteString
    -> ByteString
    -> SRP6Salt
    -> SRP6Verifier
generateSRP6ClientVerifier = undefined

generateSRP6ClientSecrets
    :: (MonadRandomIO m)
    => SRP6GroupId
    -> SRP6HashId
    -> ByteString
    -> ByteString
    -> m (SRP6Salt, SRP6Verifier)
generateSRP6ClientSecrets groupid hashid identifier password = do
    salt <- getRandomBytes 12
    let verifier = generateSRP6ClientVerifier groupid hashid identifier password salt
    return $ verifier `seq` (salt, verifier)

generateSRP6ServerKey
    :: (MonadRandomIO m)
    => SRP6GroupId
    -> SRP6HashId
    -> SRP6ServerSession
    -> SRP6Verifier
    -> m SRP6ServerKey
generateSRP6ServerKey = undefined

generateSRP6ClientKeys
    :: (MonadRandomIO m)
    => SRP6GroupId
    -> SRP6HashId
    -> ByteString
    -> ByteString
    -> SRP6Salt
    -> SRP6ServerKey
    -> m (SRP6ClientKey, SRP6SessionKey)
generateSRP6ClientKeys = undefined

generateSRP6SessionKey
    :: (MonadIO m)
    => SRP6ServerSession
    -> SRP6ClientKey
    -> m SRP6SessionKey
generateSRP6SessionKey = undefined
