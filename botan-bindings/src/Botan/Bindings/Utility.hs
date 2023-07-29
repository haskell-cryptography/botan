module Botan.Bindings.Utility where

import Data.Void

import Botan.Bindings.Error
import Botan.Bindings.Prelude

-- TODO: Fix documentation?

-- | Returns 0 if x[0..len] == y[0..len], -1 otherwise.
-- | int botan_constant_time_compare(const uint8_t *x, const uint8_t *y, size_t len)
-- NOTE: Return type is CInt, not BotanErrorCode. Function is explicit about return values.
foreign import ccall unsafe botan_constant_time_compare :: Ptr Word8 -> Ptr Word8 -> CSize -> IO CInt

-- | int botan_scrub_mem(void* mem, size_t bytes);
foreign import ccall unsafe botan_scrub_mem :: Ptr Void -> CSize -> IO CInt

type BotanHexFlag = Word32

-- NOTE: Not actually a botan constant
pattern BOTAN_FFI_HEX_NONE = 0 :: BotanHexFlag
pattern BOTAN_FFI_HEX_LOWER_CASE = 1 :: BotanHexFlag

-- | int botan_hex_encode(const uint8_t *x, size_t len, char *out, uint32_t flags)
-- NOTE: Return type is CInt, not BotanErrorCode. Function is explicit about return values.
foreign import ccall unsafe botan_hex_encode :: Ptr Word8 -> CSize -> Ptr CChar -> Word32 -> IO CInt

-- | int botan_hex_decode(const char *hex_str, size_t in_len, uint8_t *out, size_t *out_len)
foreign import ccall unsafe botan_hex_decode :: Ptr CChar -> CSize -> Ptr Word8 -> Ptr CSize -> IO BotanErrorCode

-- | int botan_base64_encode(const uint8_t* x, size_t len, char* out, size_t* out_len);
foreign import ccall unsafe botan_base64_encode :: Ptr Word8 -> CSize -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

-- | int botan_base64_decode(const char* base64_str, size_t in_len, uint8_t* out, size_t* out_len);
foreign import ccall unsafe botan_base64_decode :: Ptr CChar -> CSize -> Ptr Word8 -> Ptr CSize -> IO BotanErrorCode
