module Botan.KDF where

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

-- /**
-- * Derive a key
-- * @param kdf_algo KDF algorithm, e.g., "SP800-56C"
-- * @param out buffer holding the derived key, must be of length out_len
-- * @param out_len the desired output length in bytes
-- * @param secret the secret input
-- * @param secret_len size of secret in bytes
-- * @param salt a diversifier
-- * @param salt_len size of salt in bytes
-- * @param label purpose for the derived keying material
-- * @param label_len size of label in bytes
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_kdf(const char* kdf_algo,
--                         uint8_t out[], size_t out_len,
--                         const uint8_t secret[], size_t secret_len,
--                         const uint8_t salt[], size_t salt_len,
--                         const uint8_t label[], size_t label_len);
foreign import ccall unsafe botan_kdf :: CString -> Ptr Word8 -> CSize -> Ptr Word8 -> CSize -> Ptr Word8 -> CSize -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- NOTE: Untested. May be obsolete / deprecated.
--  No KDF algorithms are available on my Botan installation,
--  or at least I am getting NotImplementedException (-40) for all of them.
-- SEE: Algos here: https://botan.randombit.net/doxygen/classBotan_1_1KDF.html
kdf :: ByteString -> Int -> ByteString -> ByteString -> ByteString -> IO ByteString
kdf algo outLen secret salt label = allocBytes outLen $ \ outPtr -> do
    asCString algo $ \ algoPtr -> do
        asBytesLen secret $ \ secretPtr secretLen -> do
            asBytesLen salt $ \ saltPtr saltLen -> do
                asBytesLen label $ \ labelPtr labelLen -> do
                    throwBotanIfNegative_ $ botan_kdf algoPtr outPtr (fromIntegral outLen) secretPtr secretLen saltPtr saltLen labelPtr labelLen
