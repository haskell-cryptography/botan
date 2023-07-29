module Botan.Low.FPE where

import qualified Data.ByteString as ByteString

import Botan.Bindings.FPE

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude

-- NOTE: This module lacks documentation, and is not mentioned in the FFI bindings.
--  It is mentioned in the C++ docs, but the construction significantly differs.
--  I did find these functions in the actual header, and have implemented them as to my best guess
--  It is untested, pending an understanding of what the expected parameters are.

-- /**
-- * Format Preserving Encryption
-- */

-- typedef struct botan_fpe_struct* botan_fpe_t;

newtype FPE = MkFPE { getFPEForeignPtr :: ForeignPtr FPEStruct }

withFPEPtr :: FPE -> (FPEPtr -> IO a) -> IO a
withFPEPtr = withForeignPtr . getFPEForeignPtr

pattern FPENone :: FPEFlags
pattern FPENone = BOTAN_FPE_FLAG_NONE

pattern FPEFE1CompatMode :: FPEFlags
pattern FPEFE1CompatMode = BOTAN_FPE_FLAG_FE1_COMPAT_MODE

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
