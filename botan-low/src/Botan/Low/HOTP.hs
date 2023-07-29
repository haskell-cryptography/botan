module Botan.Low.HOTP where

import qualified Data.ByteString as ByteString

import Botan.Bindings.HOTP

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

-- NOTE: RFC 4226

-- /**
-- * HOTP
-- */

newtype HOTP = MkHOTP { getHOTPForeignPtr :: ForeignPtr HOTPStruct }

withHOTPPtr :: HOTP -> (HOTPPtr -> IO a) -> IO a
withHOTPPtr = withForeignPtr . getHOTPForeignPtr

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

-- NOTE: User is responsible for incrementing counter at this level
hotpGenerate :: HOTP -> HOTPCounter -> IO HOTPCode
hotpGenerate hotp counter = withHOTPPtr hotp $ \ hotpPtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative $ botan_hotp_generate hotpPtr outPtr counter
        peek outPtr

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
