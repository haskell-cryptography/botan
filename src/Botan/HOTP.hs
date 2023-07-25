module Botan.HOTP where

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

-- NOTE: RFC 4226

-- /**
-- * HOTP
-- */

-- typedef struct botan_hotp_struct* botan_hotp_t;

data HOTPStruct
type HOTPPtr = Ptr HOTPStruct

newtype HOTP = MkHOTP { getHOTPForeignPtr :: ForeignPtr HOTPStruct }

withHOTPPtr :: HOTP -> (HOTPPtr -> IO a) -> IO a
withHOTPPtr = withForeignPtr . getHOTPForeignPtr

type HOTPCode = Word32
type HOTPCounter = Word64

-- /**
-- * Initialize a HOTP instance
-- */
-- BOTAN_PUBLIC_API(2,8)
-- int botan_hotp_init(botan_hotp_t* hotp,
--                     const uint8_t key[], size_t key_len,
--                     const char* hash_algo,
--                     size_t digits);
foreign import ccall unsafe botan_hotp_init
    :: Ptr HOTPPtr
    -> Ptr Word8 -> CSize
    -> CString
    -> CSize
    -> IO BotanErrorCode

-- /**
-- * Destroy a HOTP instance
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,8)
-- int botan_hotp_destroy(botan_hotp_t hotp);
foreign import ccall unsafe "&botan_hotp_destroy" botan_hotp_destroy :: FinalizerPtr HOTPStruct

-- NOTE: Digits should be 6-8
hotpInit :: ByteString -> ByteString -> Int -> IO HOTP
hotpInit key algo digits = alloca $ \ outPtr -> do
    asBytesLen key $ \ keyPtr keyLen -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative $ botan_hotp_init outPtr keyPtr keyLen algoPtr (fromIntegral digits)
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_hotp_destroy out
            return $ MkHOTP foreignPtr

hotpDestroy :: HOTP -> IO ()
hotpDestroy hotp = finalizeForeignPtr (getHOTPForeignPtr hotp)

withHOTP :: ByteString -> ByteString -> Int -> (HOTP -> IO a) -> IO a
withHOTP = mkWithTemp3 hotpInit hotpDestroy

-- /**
-- * Generate a HOTP code for the provided counter
-- */
-- BOTAN_PUBLIC_API(2,8)
-- int botan_hotp_generate(botan_hotp_t hotp,
--                         uint32_t* hotp_code,
--                         uint64_t hotp_counter);
foreign import ccall unsafe botan_hotp_generate
    :: HOTPPtr
    -> Ptr HOTPCode
    -> HOTPCounter
    -> IO BotanErrorCode

-- NOTE: User is responsible for incrementing counter at this level
hotpGenerate :: HOTP -> HOTPCounter -> IO HOTPCode
hotpGenerate hotp counter = withHOTPPtr hotp $ \ hotpPtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative $ botan_hotp_generate hotpPtr outPtr counter
        peek outPtr

-- /**
-- * Verify a HOTP code
-- */
-- BOTAN_PUBLIC_API(2,8)
-- int botan_hotp_check(botan_hotp_t hotp,
--                      uint64_t* next_hotp_counter,
--                      uint32_t hotp_code,
--                      uint64_t hotp_counter,
--                      size_t resync_range);
foreign import ccall unsafe botan_hotp_check
    :: HOTPPtr
    -> Ptr HOTPCounter
    -> HOTPCode
    -> HOTPCounter
    -> CSize
    -> IO BotanErrorCode

-- ~~TODO: Should probably return bool - see other similar cases~~
--  Struck:
--      "Returns a pair of (is_valid,next_counter_to_use). If the OTP is
--      invalid then always returns (false,starting_counter), since the
--      last successful authentication counter has not changed. ""
-- NOTE: "Depending on the environment a resync_range of 3 to 10 might be appropriate."
hotpCheck :: HOTP -> HOTPCode -> HOTPCounter -> Int -> IO (Bool, HOTPCounter)
hotpCheck hotp code counter resync = withHOTPPtr hotp $ \ hotpPtr -> do
    alloca $ \ outPtr -> do
        valid <- throwBotanCatchingSuccess $ botan_hotp_check hotpPtr outPtr code counter (fromIntegral resync)
        nextCounter <- peek outPtr
        return (valid, nextCounter)
