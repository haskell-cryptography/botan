module Botan.PubKey.Verify where

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
import Botan.PubKey.Sign (SigningAlgo(..), SigningFlags(..))
import Botan (throwBotanCatchingSuccess)

-- /*
-- * Signature Verification
-- */
-- typedef struct botan_pk_op_verify_struct* botan_pk_op_verify_t;
data VerifyStruct
type VerifyPtr = Ptr VerifyStruct

newtype Verify = MkVerify { getVerifyForeignPtr :: ForeignPtr VerifyStruct }

withVerifyPtr :: Verify -> (VerifyPtr -> IO a) -> IO a
withVerifyPtr = withForeignPtr . getVerifyForeignPtr

type VerifyAlgo = ByteString

-- BOTAN_PUBLIC_API(2,0)
-- int botan_pk_op_verify_create(botan_pk_op_verify_t* op,
--                               botan_pubkey_t key,
--                               const char* hash_and_padding,
--                               uint32_t flags);
foreign import ccall unsafe botan_pk_op_verify_create :: Ptr VerifyPtr -> PubKeyPtr -> CString -> SigningFlags -> IO BotanErrorCode

-- /**
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_verify_destroy(botan_pk_op_verify_t op);
foreign import ccall unsafe "&botan_pk_op_verify_destroy" botan_pk_op_verify_destroy :: FinalizerPtr VerifyStruct

verifyCreate :: PubKey -> SigningAlgo -> SigningFlags -> IO Verify
verifyCreate pk algo flags = alloca $ \ outPtr -> do
    withPubKeyPtr pk $ \ pkPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative_ $ botan_pk_op_verify_create outPtr pkPtr algoPtr flags
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_verify_destroy out
            return $ MkVerify foreignPtr

verifyDestroy :: Verify -> IO ()
verifyDestroy verify = finalizeForeignPtr (getVerifyForeignPtr verify)

withVerify :: PubKey -> SigningAlgo -> SigningFlags -> (Verify -> IO a) -> IO a
withVerify = mkWithTemp3 verifyCreate verifyDestroy

-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_verify_update(botan_pk_op_verify_t op, const uint8_t in[], size_t in_len);
foreign import ccall unsafe botan_pk_op_verify_update :: VerifyPtr -> Ptr Word8  -> CSize -> IO BotanErrorCode

verifyUpdate :: Verify -> ByteString -> IO ()
verifyUpdate = mkSetBytesLen withVerifyPtr botan_pk_op_verify_update

-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_verify_finish(botan_pk_op_verify_t op, const uint8_t sig[], size_t sig_len);
foreign import ccall unsafe botan_pk_op_verify_finish :: VerifyPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- TODO: Signature type
-- NOTE: Ignores szPtr result
verifyFinish :: Verify -> ByteString -> IO Bool
verifyFinish verify sig = withVerifyPtr verify $ \ verifyPtr -> do
    asBytesLen sig $ \ sigPtr sigLen -> do
        throwBotanCatchingSuccess $ botan_pk_op_verify_finish verifyPtr sigPtr sigLen
