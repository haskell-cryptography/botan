module Botan.SRP6 where

import Prelude

import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString

import Data.Word

import System.IO

import Foreign.C.String
import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable

import Botan.Error
import Botan.Make
import Botan.Prelude
import Botan.Random
import Botan.PubKey

-- /**
-- * SRP-6 Server Session type
-- */
-- typedef struct botan_srp6_server_session_struct* botan_srp6_server_session_t;

data SRP6Struct
type SRP6Ptr = Ptr SRP6Struct

newtype SRP6 = MkSRP6 { getSRP6ForeignPtr :: ForeignPtr SRP6Struct }

withSRP6Ptr :: SRP6 -> (SRP6Ptr -> IO a) -> IO a
withSRP6Ptr = withForeignPtr . getSRP6ForeignPtr

-- /**
-- * Initialize an SRP-6 server session object
-- * @param srp6 SRP-6 server session object
-- */
-- BOTAN_PUBLIC_API(3,0)
-- int botan_srp6_server_session_init(botan_srp6_server_session_t *srp6);
foreign import ccall unsafe botan_srp6_server_session_init :: Ptr SRP6Ptr -> IO BotanErrorCode

srp6Init :: IO SRP6
srp6Init = mkInit MkSRP6 botan_srp6_server_session_init botan_srp6_server_session_destroy

withSRP6 :: (SRP6 -> IO a) -> IO a
withSRP6 = mkWithTemp srp6Init srp6Destroy

-- /**
-- * Frees all resources of the SRP-6 server session object
-- * @param srp6 SRP-6 server session object
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(3,0)
-- int botan_srp6_server_session_destroy(botan_srp6_server_session_t srp6);
foreign import ccall unsafe "&botan_srp6_server_session_destroy" botan_srp6_server_session_destroy :: FinalizerPtr SRP6Struct

srp6Destroy :: SRP6 -> IO ()
srp6Destroy srp6 = finalizeForeignPtr (getSRP6ForeignPtr srp6)

-- /**
-- * SRP-6 Server side step 1
-- * @param srp6 SRP-6 server session object
-- * @param verifier the verification value saved from client registration
-- * @param verifier_len SRP-6 verifier value length
-- * @param group_id the SRP group id
-- * @param hash_id the SRP hash in use
-- * @param rng_obj a random number generator object
-- * @param B_pub out buffer to store the SRP-6 B value
-- * @param B_pub_len SRP-6 B value length
-- * @return 0 on success, negative on failure
-- */
-- BOTAN_PUBLIC_API(3,0)
-- int botan_srp6_server_session_step1(botan_srp6_server_session_t srp6,
--                                     const uint8_t verifier[],
--                                     size_t verifier_len, const char *group_id,
--                                     const char *hash_id, botan_rng_t rng_obj,
--                                     uint8_t B_pub[], size_t *B_pub_len);
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

srp6Step1 :: SRP6 -> ByteString -> ByteString -> ByteString -> Random -> IO ByteString
srp6Step1 srp6 verifier groupId hashId random = withSRP6Ptr srp6 $ \ srp6Ptr -> do
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

-- /**
-- * SRP-6 Server side step 2
-- * @param srp6 SRP-6 server session object
-- * @param A the client's value
-- * @param A_len the client's value length
-- * @param key out buffer to store the symmetric key value
-- * @param key_len symmetric key length
-- * @return 0 on success, negative on failure
-- */
-- BOTAN_PUBLIC_API(3,0)
-- int botan_srp6_server_session_step2(botan_srp6_server_session_t srp6,
--                                     const uint8_t A[], size_t A_len,
--                                     uint8_t key[], size_t *key_len);
foreign import ccall unsafe botan_srp6_server_session_step2
    :: SRP6Ptr
    -> Ptr Word8
    -> CSize
    -> Ptr Word8
    -> Ptr CSize
    -> IO BotanErrorCode

srp6Step2 :: SRP6 -> ByteString -> IO ByteString
srp6Step2 srp6 a = withSRP6Ptr srp6 $ \ srp6Ptr -> do
    asBytesLen a $ \ aPtr aLen -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_srp6_server_session_step2
            srp6Ptr
            aPtr
            aLen
            outPtr
            outLen

-- /**
-- * Generate a new SRP-6 verifier
-- * @param identifier a username or other client identifier
-- * @param password the secret used to authenticate user
-- * @param salt a randomly chosen value, at least 128 bits long
-- * @param salt_len the length of salt
-- * @param group_id specifies the shared SRP group
-- * @param hash_id specifies a secure hash function
-- * @param verifier out buffer to store the SRP-6 verifier value
-- * @param verifier_len SRP-6 verifier value length
-- * @return 0 on success, negative on failure
-- */
-- BOTAN_PUBLIC_API(3,0)
-- int botan_srp6_generate_verifier(const char *identifier, const char *password,
--                                  const uint8_t salt[], size_t salt_len,
--                                  const char *group_id, const char *hash_id,
--                                  uint8_t verifier[], size_t *verifier_len);
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

-- /**
-- * SRP6a Client side
-- * @param username the username we are attempting login for
-- * @param password the password we are attempting to use
-- * @param group_id specifies the shared SRP group
-- * @param hash_id specifies a secure hash function
-- * @param salt is the salt value sent by the server
-- * @param salt_len the length of salt
-- * @param B is the server's public value
-- * @param B_len is the server's public value length
-- * @param rng_obj is a random number generator object
-- * @param A out buffer to store the SRP-6 A value
-- * @param A_len SRP-6 A verifier value length
-- * @param K out buffer to store the symmetric value
-- * @param K_len symmetric key length
-- * @return 0 on success, negative on failure
-- */
-- BOTAN_PUBLIC_API(3,0)
-- int botan_srp6_client_agree(const char *username, const char *password,
--                             const char *group_id, const char *hash_id,
--                             const uint8_t salt[], size_t salt_len,
--                             const uint8_t B[], size_t B_len, botan_rng_t rng_obj,
--                             uint8_t A[], size_t *A_len, uint8_t K[],
--                             size_t *K_len);
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

-- /**
-- * Return the size, in bytes, of the prime associated with group_id
-- */
-- BOTAN_PUBLIC_API(3,0)
-- int botan_srp6_group_size(const char* group_id, size_t* group_p_bytes);
foreign import ccall unsafe botan_srp6_group_size :: CString -> Ptr CSize -> IO BotanErrorCode

srp6GroupSize :: ByteString -> IO Int
srp6GroupSize groupId = asCString groupId $ \ groupIdPtr -> do
    alloca $ \ szPtr -> do
        throwBotanIfNegative_ $ botan_srp6_group_size groupIdPtr szPtr
        fromIntegral <$> peek szPtr
