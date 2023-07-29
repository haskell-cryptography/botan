module Botan.Low.SRP6 where

import qualified Data.ByteString as ByteString

import Botan.Bindings.SRP6

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.Random
import Botan.Low.PubKey

-- /**
-- * SRP-6 Server Session type
-- */

newtype SRP6 = MkSRP6 { getSRP6ForeignPtr :: ForeignPtr SRP6Struct }

withSRP6Ptr :: SRP6 -> (SRP6Ptr -> IO a) -> IO a
withSRP6Ptr = withForeignPtr . getSRP6ForeignPtr

srp6Init :: IO SRP6
srp6Init = mkInit MkSRP6 botan_srp6_server_session_init botan_srp6_server_session_destroy

withSRP6 :: (SRP6 -> IO a) -> IO a
withSRP6 = mkWithTemp srp6Init srp6Destroy

srp6Destroy :: SRP6 -> IO ()
srp6Destroy srp6 = finalizeForeignPtr (getSRP6ForeignPtr srp6)

srp6ServerSessionStep1 :: SRP6 -> ByteString -> ByteString -> ByteString -> Random -> IO ByteString
srp6ServerSessionStep1 srp6 verifier groupId hashId random = withSRP6Ptr srp6 $ \ srp6Ptr -> do
    asBytesLen verifier $ \ verifierPtr verifierLen -> do
        asCString groupId $ \ groupIdPtr -> do
            asCString hashId $ \ hashIdPtr -> do
                withRandomPtr random $ \ randomPtr -> do
                    allocBytesQuerying $ \ outPtr outLen -> botan_srp6_server_session_step1
                        srp6Ptr
                        verifierPtr
                        verifierLen
                        groupIdPtr
                        hashIdPtr
                        randomPtr
                        outPtr
                        outLen

srp6ServerSessionStep2 :: SRP6 -> ByteString -> IO ByteString
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
srp6ClientAgree :: ByteString -> ByteString -> ByteString -> ByteString -> ByteString -> ByteString -> Random -> IO (ByteString, ByteString)
srp6ClientAgree identifier password groupId hashId salt b random = do
    asCString identifier $ \ identifierPtr -> do
        asCString password $ \ passwordPtr -> do
            asCString groupId $ \ groupIdPtr -> do
                asCString hashId $ \ hashIdPtr -> do
                    asBytesLen salt $ \ saltPtr saltLen -> do
                        asBytesLen b $ \ bPtr bLen -> do
                            withRandomPtr random $ \ randomPtr -> do
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
                                            randomPtr
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
                                                    randomPtr
                                                    nullPtr
                                                    aSzPtr
                                                    nullPtr
                                                    kSzPtr

srp6GroupSize :: ByteString -> IO Int
srp6GroupSize groupId = asCString groupId $ \ groupIdPtr -> do
    alloca $ \ szPtr -> do
        throwBotanIfNegative_ $ botan_srp6_group_size groupIdPtr szPtr
        fromIntegral <$> peek szPtr
