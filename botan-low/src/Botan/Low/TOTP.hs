module Botan.Low.TOTP where

import qualified Data.ByteString as ByteString

import Botan.Bindings.TOTP

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

-- NOTE: RFC 6238

-- /**
-- * TOTP
-- */

newtype TOTP = MkTOTP { getTOTPForeignPtr :: ForeignPtr TOTPStruct }

withTOTPPtr :: TOTP -> (TOTPPtr -> IO a) -> IO a
withTOTPPtr = withForeignPtr . getTOTPForeignPtr

-- NOTE: Digits should be 6-8
totpInit :: ByteString -> ByteString -> Int -> TOTPTimestep -> IO TOTP
totpInit key algo digits timestep = alloca $ \ outPtr -> do
    asBytesLen key $ \ keyPtr keyLen -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative $ botan_totp_init outPtr keyPtr keyLen algoPtr (fromIntegral digits) (fromIntegral timestep)
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_totp_destroy out
            return $ MkTOTP foreignPtr

totpDestroy :: TOTP -> IO ()
totpDestroy totp = finalizeForeignPtr (getTOTPForeignPtr totp)

withTOTP :: ByteString -> ByteString -> Int -> TOTPTimestep -> (TOTP -> IO a) -> IO a
withTOTP = mkWithTemp4 totpInit totpDestroy

totpGenerate :: TOTP -> TOTPTimestamp -> IO TOTPCode
totpGenerate totp timestamp = withTOTPPtr totp $ \ totpPtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative $ botan_totp_generate totpPtr outPtr timestamp
        peek outPtr

totpCheck :: TOTP -> TOTPCode -> TOTPTimestamp -> Int -> IO Bool
totpCheck totp code timestamp drift = withTOTPPtr totp $ \ totpPtr -> do
    throwBotanCatchingSuccess $ botan_totp_check totpPtr code timestamp (fromIntegral drift)
