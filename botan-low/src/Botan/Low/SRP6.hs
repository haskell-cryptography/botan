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
import Botan.Low.RNG
import Botan.Low.PubKey

-- /**
-- * SRP-6 Server Session type
-- */

newtype SRP6ServerSessionCtx = MkSRP6ServerSessionCtx { getSRP6ForeignPtr :: ForeignPtr SRP6Struct }

withSRP6Ptr :: SRP6ServerSessionCtx -> (SRP6Ptr -> IO a) -> IO a
withSRP6Ptr = withForeignPtr . getSRP6ForeignPtr

srp6ServerSessionInit :: IO SRP6ServerSessionCtx
srp6ServerSessionInit = mkInit MkSRP6ServerSessionCtx botan_srp6_server_session_init botan_srp6_server_session_destroy

withSRP6ServerSessionCtx :: (SRP6ServerSessionCtx -> IO a) -> IO a
withSRP6ServerSessionCtx = mkWithTemp srp6ServerSessionInit srp6ServerSessionDestroy

srp6ServerSessionDestroy :: SRP6ServerSessionCtx -> IO ()
srp6ServerSessionDestroy srp6 = finalizeForeignPtr (getSRP6ForeignPtr srp6)

srp6ServerSessionStep1 :: SRP6ServerSessionCtx -> ByteString -> ByteString -> ByteString -> RNGCtx -> IO ByteString
srp6ServerSessionStep1 srp6 verifier groupId hashId rng = withSRP6Ptr srp6 $ \ srp6Ptr -> do
    asBytesLen verifier $ \ verifierPtr verifierLen -> do
        asCString groupId $ \ groupIdPtr -> do
            asCString hashId $ \ hashIdPtr -> do
                withRNGPtr rng $ \ rngPtr -> do
                    allocBytesQuerying $ \ outPtr outLen -> botan_srp6_server_session_step1
                        srp6Ptr
                        verifierPtr
                        verifierLen
                        groupIdPtr
                        hashIdPtr
                        rngPtr
                        outPtr
                        outLen

srp6ServerSessionStep2 :: SRP6ServerSessionCtx -> ByteString -> IO ByteString
srp6ServerSessionStep2 srp6 a = withSRP6Ptr srp6 $ \ srp6Ptr -> do
    asBytesLen a $ \ aPtr aLen -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_srp6_server_session_step2
            srp6Ptr
            aPtr
            aLen
            outPtr
            outLen

srp6GenerateVerifier :: ByteString -> ByteString -> ByteString -> ByteString -> ByteString -> IO ByteString
srp6GenerateVerifier identifier password salt groupId hashId = asCString identifier $ \ identifierPtr -> do
    asCString password $ \ passwordPtr -> do
        asBytesLen salt $ \ saltPtr saltLen -> do
            asCString groupId $ \ groupIdPtr -> do
                asCString hashId $ \ hashIdPtr -> do
                    allocBytesQuerying $ \ outPtr outLen -> botan_srp6_generate_verifier
                        identifierPtr
                        passwordPtr
                        saltPtr
                        saltLen
                        groupIdPtr
                        hashIdPtr
                        outPtr
                        outLen

-- NOTE: ORDER IS DIFFERENT FROM SERVER GENERATE VERIFIER
srp6ClientAgree :: ByteString -> ByteString -> ByteString -> ByteString -> ByteString -> ByteString -> RNGCtx -> IO (ByteString, ByteString)
srp6ClientAgree identifier password groupId hashId salt b rng = do
    asCString identifier $ \ identifierPtr -> do
        asCString password $ \ passwordPtr -> do
            asCString groupId $ \ groupIdPtr -> do
                asCString hashId $ \ hashIdPtr -> do
                    asBytesLen salt $ \ saltPtr saltLen -> do
                        asBytesLen b $ \ bPtr bLen -> do
                            withRNGPtr rng $ \ rngPtr -> do
                                alloca $ \ aSzPtr -> do 
                                    alloca $ \ kSzPtr -> do
                                        -- Query sizes
                                        -- TODO: Actually ensure expected error (insufficient buffer space)
                                        --  and propagate unexpected errors
                                        _ <- botan_srp6_client_agree
                                            identifierPtr
                                            passwordPtr
                                            groupIdPtr
                                            hashIdPtr
                                            saltPtr
                                            saltLen
                                            bPtr
                                            bLen
                                            rngPtr
                                            nullPtr
                                            aSzPtr
                                            nullPtr
                                            kSzPtr
                                        kSz <- fromIntegral <$> peek kSzPtr
                                        aSz <- fromIntegral <$> peek aSzPtr
                                        allocBytesWith kSz $ \ encapPtr -> do
                                            allocBytes aSz $ \ sharedPtr -> do
                                                throwBotanIfNegative_ $ botan_srp6_client_agree
                                                    identifierPtr
                                                    passwordPtr
                                                    groupIdPtr
                                                    hashIdPtr
                                                    saltPtr
                                                    saltLen
                                                    bPtr
                                                    bLen
                                                    rngPtr
                                                    nullPtr
                                                    aSzPtr
                                                    nullPtr
                                                    kSzPtr

srp6GroupSize :: ByteString -> IO Int
srp6GroupSize groupId = asCString groupId $ \ groupIdPtr -> do
    alloca $ \ szPtr -> do
        throwBotanIfNegative_ $ botan_srp6_group_size groupIdPtr szPtr
        fromIntegral <$> peek szPtr
