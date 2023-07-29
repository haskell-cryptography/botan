module Botan.Bindings.HOTP where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

-- NOTE: RFC 4226

-- /**
-- * HOTP
-- */

-- typedef struct botan_hotp_struct* botan_hotp_t;

data HOTPStruct
type HOTPPtr = Ptr HOTPStruct

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
