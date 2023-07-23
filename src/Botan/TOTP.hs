module Botan.TOTP where

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

-- NOTE: RFC 6238

-- /**
-- * TOTP
-- */

-- typedef struct botan_totp_struct* botan_totp_t;

data TOTPStruct
type TOTPPtr = Ptr TOTPStruct

newtype TOTP = MkTOTP { getTOTPForeignPtr :: ForeignPtr TOTPStruct }

withTOTPPtr :: TOTP -> (TOTPPtr -> IO a) -> IO a
withTOTPPtr = withForeignPtr . getTOTPForeignPtr

type TOTPCode = Word32
type TOTPTimestep = Word64
type TOTPTimestamp = Word64

-- /**
-- * Initialize a TOTP instance
-- */
-- BOTAN_PUBLIC_API(2,8)
-- int botan_totp_init(botan_totp_t* totp,
--                     const uint8_t key[], size_t key_len,
--                     const char* hash_algo,
--                     size_t digits,
--                     size_t time_step);
foreign import ccall unsafe botan_totp_init
    :: Ptr TOTPPtr
    -> Ptr Word8 -> CSize
    -> CString
    -> CSize
    -> CSize
    -> IO BotanErrorCode

-- /**
-- * Destroy a TOTP instance
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,8)
-- int botan_totp_destroy(botan_totp_t totp);
foreign import ccall unsafe "&botan_totp_destroy" botan_totp_destroy :: FinalizerPtr TOTPStruct

-- NOTE: Digits should be 6-8
totpInit :: ByteString -> ByteString -> Int -> TOTPTimestep -> IO TOTP
totpInit key algo digits timestep = alloca $ \ outPtr -> do
    asBytesLen key $ \ keyPtr keyLen -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative $ botan_totp_init outPtr keyPtr keyLen algoPtr (fromIntegral digits) (fromIntegral timestep)
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_totp_destroy out
            return $ MkTOTP foreignPtr


-- /**
-- * Generate a TOTP code for the provided timestamp
-- * @param totp the TOTP object
-- * @param totp_code the OTP code will be written here
-- * @param timestamp the current local timestamp
-- */
-- BOTAN_PUBLIC_API(2,8)
-- int botan_totp_generate(botan_totp_t totp,
--                         uint32_t* totp_code,
--                         uint64_t timestamp);
foreign import ccall unsafe botan_totp_generate
    :: TOTPPtr
    -> Ptr TOTPCode
    -> TOTPTimestamp
    -> IO BotanErrorCode

totpGenerate :: TOTP -> TOTPTimestamp -> IO TOTPCode
totpGenerate totp timestamp = withTOTPPtr totp $ \ totpPtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative $ botan_totp_generate totpPtr outPtr timestamp
        peek outPtr

-- /**
-- * Verify a TOTP code
-- * @param totp the TOTP object
-- * @param totp_code the presented OTP
-- * @param timestamp the current local timestamp
-- * @param acceptable_clock_drift specifies the acceptable amount
-- * of clock drift (in terms of time steps) between the two hosts.
-- */
-- BOTAN_PUBLIC_API(2,8)
-- int botan_totp_check(botan_totp_t totp,
--                      uint32_t totp_code,
--                      uint64_t timestamp,
--                      size_t acceptable_clock_drift);
foreign import ccall unsafe botan_totp_check
    :: TOTPPtr
    -> TOTPCode
    -> TOTPTimestamp
    -> CSize
    -> IO BotanErrorCode

totpCheck :: TOTP -> TOTPCode -> TOTPTimestamp -> Int -> IO Bool
totpCheck totp code timestamp drift = withTOTPPtr totp $ \ totpPtr -> do
    throwBotanCatchingSuccess $ botan_totp_check totpPtr code timestamp (fromIntegral drift)
