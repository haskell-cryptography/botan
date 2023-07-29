module Botan.Bindings.FPE where

import Botan.Bindings.Error
import Botan.Bindings.MPI
import Botan.Bindings.Prelude

-- NOTE: This module lacks documentation, and is not mentioned in the FFI bindings.
--  It is mentioned in the C++ docs, but the construction significantly differs.
--  I did find these functions in the actual header, and have implemented them as to my best guess
--  It is untested, pending an understanding of what the expected parameters are.

-- /**
-- * Format Preserving Encryption
-- */

-- typedef struct botan_fpe_struct* botan_fpe_t;

data FPEStruct
type FPEPtr = Ptr FPEStruct

-- #define BOTAN_FPE_FLAG_FE1_COMPAT_MODE 1
type FPEFlags = Word32
pattern BOTAN_FPE_FLAG_NONE = 0 :: FPEFlags -- Not a real flag
pattern BOTAN_FPE_FLAG_FE1_COMPAT_MODE = 1 :: FPEFlags

-- BOTAN_PUBLIC_API(2,8)
-- int botan_fpe_fe1_init(botan_fpe_t* fpe, botan_mp_t n,
--                        const uint8_t key[], size_t key_len,
--                        size_t rounds, uint32_t flags);
foreign import ccall unsafe botan_fpe_fe1_init :: Ptr FPEPtr -> MPPtr -> Ptr Word8 -> CSize -> CSize -> Word32 -> IO BotanErrorCode

-- /**
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,8)
-- int botan_fpe_destroy(botan_fpe_t fpe);
foreign import ccall unsafe "&botan_fpe_destroy" botan_fpe_destroy :: FinalizerPtr FPEStruct

-- BOTAN_PUBLIC_API(2,8)
-- int botan_fpe_encrypt(botan_fpe_t fpe, botan_mp_t x, const uint8_t tweak[], size_t tweak_len);
foreign import ccall unsafe botan_fpe_encrypt :: FPEPtr -> MPPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,8)
-- int botan_fpe_decrypt(botan_fpe_t fpe, botan_mp_t x, const uint8_t tweak[], size_t tweak_len);
foreign import ccall unsafe botan_fpe_decrypt :: FPEPtr -> MPPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode
