module Botan.PubKey.Sign where

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

-- /*
-- * Signature Generation
-- */

-- typedef struct botan_pk_op_sign_struct* botan_pk_op_sign_t;
data SignStruct
type SignPtr = Ptr SignStruct

newtype Sign = MkSign { getSignForeignPtr :: ForeignPtr SignStruct }

withSignPtr :: Sign -> (SignPtr -> IO a) -> IO a
withSignPtr = withForeignPtr . getSignForeignPtr

type SignAlgo = ByteString

-- #define BOTAN_PUBKEY_DER_FORMAT_SIGNATURE 1
type SignFlags = Word32

-- NOTE: Ugh. Bad names. Will rename. Or make a general BOTAN_FLAGS_NONE?
pattern BOTAN_PUBKEY_SIGNING_FLAGS_NONE = 0 :: SignFlags -- NOTE: NOT ACTUAL FLAG.
pattern BOTAN_PUBKEY_DER_FORMAT_SIGNATURE = 1 :: SignFlags

-- BOTAN_PUBLIC_API(2,0)
-- int botan_pk_op_sign_create(botan_pk_op_sign_t* op,
--                             botan_privkey_t key,
--                             const char* hash_and_padding,
--                             uint32_t flags);
foreign import ccall unsafe botan_pk_op_sign_create :: Ptr SignPtr -> PrivKeyPtr -> CString -> SignFlags -> IO BotanErrorCode

-- /**
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_sign_destroy(botan_pk_op_sign_t op);
foreign import ccall unsafe "&botan_pk_op_sign_destroy" botan_pk_op_sign_destroy :: FinalizerPtr SignStruct

signCreate :: PrivKey -> SignAlgo -> SignFlags -> IO Sign
signCreate sk algo flags = alloca $ \ outPtr -> do
    withPrivKeyPtr sk $ \ skPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative_ $ botan_pk_op_sign_create outPtr skPtr algoPtr flags
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_sign_destroy out
            return $ MkSign foreignPtr

-- BOTAN_PUBLIC_API(2,8) int botan_pk_op_sign_output_length(botan_pk_op_sign_t op, size_t* olen);
foreign import ccall unsafe botan_pk_op_sign_output_length :: SignPtr -> Ptr CSize -> IO BotanErrorCode

signOutputLength :: Sign -> IO Int
signOutputLength = mkGetSize withSignPtr botan_pk_op_sign_output_length

-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_sign_update(botan_pk_op_sign_t op, const uint8_t in[], size_t in_len);
foreign import ccall unsafe botan_pk_op_sign_update :: SignPtr -> Ptr Word8  -> CSize -> IO BotanErrorCode

signUpdate :: Sign -> ByteString -> IO ()
signUpdate = mkSetBytesLen withSignPtr botan_pk_op_sign_update

-- BOTAN_PUBLIC_API(2,0)
-- int botan_pk_op_sign_finish(botan_pk_op_sign_t op, botan_rng_t rng,
--                             uint8_t sig[], size_t* sig_len);
foreign import ccall unsafe botan_pk_op_sign_finish :: SignPtr -> RandomPtr -> Ptr Word8 -> Ptr CSize -> IO BotanErrorCode

-- TODO: Signature type
-- NOTE: Ignores szPtr result
signFinish :: Sign -> Random -> IO ByteString
signFinish sign random = withSignPtr sign $ \ signPtr -> do
    withRandomPtr random $ \ randomPtr -> do
        sz <- signOutputLength sign
        allocBytes sz $ \ sigPtr -> do
            alloca $ \ szPtr -> do
                throwBotanIfNegative_ $ botan_pk_op_sign_finish signPtr randomPtr sigPtr szPtr

-- /**
-- * Signature Scheme Utility Functions
-- */

-- BOTAN_PUBLIC_API(2,0) int botan_pkcs_hash_id(const char* hash_name, uint8_t pkcs_id[], size_t* pkcs_id_len);
