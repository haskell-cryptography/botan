module Botan.FPE where

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
import Botan.MPI
import Botan.Prelude

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

newtype FPE = MkFPE { getFPEForeignPtr :: ForeignPtr FPEStruct }

withFPEPtr :: FPE -> (FPEPtr -> IO a) -> IO a
withFPEPtr = withForeignPtr . getFPEForeignPtr

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

fpeFE1Init :: MP -> ByteString -> Int -> FPEFlags -> IO FPE
fpeFE1Init n key rounds flags = withMPPtr n $ \ nPtr -> do
    asBytesLen key $ \ keyPtr keyLen -> do
        alloca $ \ outPtr -> do
            throwBotanIfNegative_ $ botan_fpe_fe1_init outPtr nPtr keyPtr keyLen (fromIntegral rounds) flags
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_fpe_destroy out
            return $ MkFPE foreignPtr

fpeDestroy :: FPE -> IO ()
fpeDestroy fpe = finalizeForeignPtr (getFPEForeignPtr fpe)

withFPEFE1 :: MP -> ByteString -> Int -> FPEFlags -> (FPE -> IO a) -> IO a
withFPEFE1 = mkWithTemp4 fpeFE1Init fpeDestroy

-- BOTAN_PUBLIC_API(2,8)
-- int botan_fpe_encrypt(botan_fpe_t fpe, botan_mp_t x, const uint8_t tweak[], size_t tweak_len);
foreign import ccall unsafe botan_fpe_encrypt :: FPEPtr -> MPPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- NOTE: Referentially transparent
fpeEncrypt :: FPE -> MP -> ByteString -> IO MP
fpeEncrypt fpe mp tweak = do
    mp' <- mpCopy mp
    fpeEncrypt' fpe mp' tweak
    return mp 

-- NOTE: Mutates the MP
fpeEncrypt' :: FPE -> MP -> ByteString -> IO ()
fpeEncrypt' fpe mp tweak = do
    withFPEPtr fpe $ \ fpePtr -> do
        withMPPtr mp $ \ mpPtr -> do
            asBytesLen tweak $ \ tweakPtr tweakLen -> do
                throwBotanIfNegative_ $ botan_fpe_encrypt fpePtr mpPtr tweakPtr tweakLen
             

-- BOTAN_PUBLIC_API(2,8)
-- int botan_fpe_decrypt(botan_fpe_t fpe, botan_mp_t x, const uint8_t tweak[], size_t tweak_len);
foreign import ccall unsafe botan_fpe_decrypt :: FPEPtr -> MPPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- NOTE: Referentially transparent
fpeDecrypt :: FPE -> MP -> ByteString -> IO MP
fpeDecrypt fpe mp tweak = do
    mp' <- mpCopy mp
    fpeDecrypt' fpe mp' tweak
    return mp 

-- NOTE: Mutates the MP
fpeDecrypt' :: FPE -> MP -> ByteString -> IO ()
fpeDecrypt' fpe mp tweak = do
    withFPEPtr fpe $ \ fpePtr -> do
        withMPPtr mp $ \ mpPtr -> do
            asBytesLen tweak $ \ tweakPtr tweakLen -> do
                throwBotanIfNegative_ $ botan_fpe_decrypt fpePtr mpPtr tweakPtr tweakLen
