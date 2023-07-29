module Botan.Bindings.TOTP where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

-- NOTE: RFC 6238

-- /**
-- * TOTP
-- */

-- typedef struct botan_totp_struct* botan_totp_t;

data TOTPStruct
type TOTPPtr = Ptr TOTPStruct

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
