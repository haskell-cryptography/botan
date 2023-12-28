{-|
Module      : Botan.Low.SRP6
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

module Botan.Low.SRP6 where

import qualified Data.ByteString as ByteString

import Botan.Bindings.SRP6

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.Remake
import Botan.Low.RNG
import Botan.Low.PubKey

-- /**
-- * SRP-6 Server Session type
-- */

-- TODO: Unify with other / move to botan
type Identifier = ByteString
type Password = ByteString
type Salt = ByteString

type HashId = ByteString -- HashName

type GroupId = ByteString -- NOTE: Should be a DLGroup, potentially just the modp/srp/* ones

type SRP6Verifier = ByteString
type SRP6BValue = ByteString
type SRP6AValue = ByteString
type SRP6SharedSecret = ByteString

newtype SRP6ServerSession = MkSRP6ServerSession { getSRP6ServerSessionForeignPtr :: ForeignPtr BotanSRP6ServerSessionStruct }

newSRP6ServerSession      :: BotanSRP6ServerSession -> IO SRP6ServerSession
withSRP6ServerSession     :: SRP6ServerSession -> (BotanSRP6ServerSession -> IO a) -> IO a
-- | Destroy a SRP6 server session object immediately
srp6ServerSessionDestroy  :: SRP6ServerSession -> IO ()
createSRP6ServerSession   :: (Ptr BotanSRP6ServerSession -> IO CInt) -> IO SRP6ServerSession
(newSRP6ServerSession, withSRP6ServerSession, srp6ServerSessionDestroy, createSRP6ServerSession, _)
    = mkBindings
        MkBotanSRP6ServerSession runBotanSRP6ServerSession
        MkSRP6ServerSession getSRP6ServerSessionForeignPtr
        botan_srp6_server_session_destroy


srp6ServerSessionInit :: IO SRP6ServerSession
srp6ServerSessionInit = createSRP6ServerSession botan_srp6_server_session_init

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withSRP6ServerSessionInit :: (SRP6ServerSession -> IO a) -> IO a
withSRP6ServerSessionInit = mkWithTemp srp6ServerSessionInit srp6ServerSessionDestroy

srp6ServerSessionStep1 :: SRP6ServerSession -> SRP6Verifier -> GroupId -> HashId -> RNG -> IO SRP6BValue
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

srp6ServerSessionStep2 :: SRP6ServerSession -> SRP6AValue -> IO SRP6SharedSecret
srp6ServerSessionStep2 srp6 a = withSRP6ServerSession srp6 $ \ srp6Ptr -> do
    asBytesLen a $ \ aPtr aLen -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_srp6_server_session_step2
            srp6Ptr
            (ConstPtr aPtr)
            aLen
            outPtr
            outLen

srp6GenerateVerifier :: Identifier -> Password -> Salt -> GroupId -> HashId -> IO SRP6Verifier
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
srp6ClientAgree :: Identifier -> Password -> GroupId -> HashId -> Salt -> SRP6BValue -> RNG -> IO (SRP6AValue, SRP6SharedSecret)
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

srp6GroupSize :: GroupId -> IO Int
srp6GroupSize groupId = asCString groupId $ \ groupIdPtr -> do
    alloca $ \ szPtr -> do
        throwBotanIfNegative_ $ botan_srp6_group_size (ConstPtr groupIdPtr) szPtr
        fromIntegral <$> peek szPtr
