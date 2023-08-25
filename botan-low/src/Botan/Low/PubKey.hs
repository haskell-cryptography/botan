{-|
Module      : Botan.Low.PubKey
Description : Public key cryptography
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

Public key cryptography is a collection of techniques allowing
for encryption, signatures, and key agreement.
-}

module Botan.Low.PubKey where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Unsafe as ByteString

import Botan.Bindings.MPI
import Botan.Bindings.PubKey

import Botan.Low.Error
import Botan.Low.Hash
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.RNG
import Botan.Low.View

-- Associated types

type PKPaddingName = ByteString
    
-- /*
-- * Public/private key creation, import, ...
-- */

newtype PrivKey = MkPrivKey { getPrivKeyForeignPtr :: ForeignPtr PrivKeyStruct }

withPrivKeyPtr :: PrivKey -> (PrivKeyPtr -> IO a) -> IO a
withPrivKeyPtr = withForeignPtr . getPrivKeyForeignPtr

type PrivKeyName = ByteString

privKeyCreateIO :: ByteString -> ByteString -> RNGCtx -> IO PrivKey
privKeyCreateIO name params rng = alloca $ \ outPtr -> do
    asCString name $ \ namePtr -> do
        asCString params $ \ paramsPtr -> do
            withRNGPtr rng $ \ rngPtr -> do
                throwBotanIfNegative_ $ botan_privkey_create outPtr namePtr paramsPtr rngPtr
                out <- peek outPtr
                foreignPtr <- newForeignPtr botan_privkey_destroy out
                return $ MkPrivKey foreignPtr

withPrivKeyCreateIO :: ByteString -> ByteString -> RNGCtx -> (PrivKey -> IO a) -> IO a
withPrivKeyCreateIO = mkWithTemp3 privKeyCreateIO privKeyDestroyIO

privKeyDestroyIO :: PrivKey -> IO ()
privKeyDestroyIO privKey = finalizeForeignPtr (getPrivKeyForeignPtr privKey)

-- TODO: Probably catch -1 (INVALID_INPUT), return Bool
privKeyCheckKeyIO :: PrivKey -> RNGCtx -> PubKeyCheckKeyFlags -> IO ()
privKeyCheckKeyIO sk rng flags = withPrivKeyPtr sk $ \ skPtr -> do
    withRNGPtr rng $ \ rngPtr -> do
        throwBotanIfNegative_ $ botan_privkey_check_key skPtr rngPtr flags

-- NOTE: Expectes PKCS #8 / PEM structure
-- botan_privkey_export -> null password? and botan_privkey_export_encrypted_... -> use a password?
privKeyLoadIO :: ByteString -> ByteString -> IO PrivKey
privKeyLoadIO bits password = alloca $ \ outPtr -> do
    asBytesLen bits $ \ bitsPtr bitsLen -> do
        let asCStringNullable str act = if ByteString.null str
            then act nullPtr
            else asCString str act
        asCStringNullable password $ \ passwordPtr -> do
            throwBotanIfNegative_ $ botan_privkey_load outPtr nullPtr bitsPtr bitsLen passwordPtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_privkey_destroy out
            return $ MkPrivKey foreignPtr

-- NOTE: Different from allocBytesQuerying / INSUFFICIENT_BUFFER_SPACE
privKeyExportIO :: PrivKey -> PrivKeyExportFlags -> IO ByteString
privKeyExportIO sk flags = withPrivKeyPtr sk $ \ skPtr -> do
    alloca $ \szPtr -> do
        poke szPtr 0
        -- NOTE: Presumed be -1
        _ <- botan_privkey_export skPtr nullPtr szPtr flags
        sz <- peek szPtr
        allocBytes (fromIntegral sz) $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_privkey_export skPtr bytesPtr szPtr flags

privKeyAlgoNameIO :: PrivKey -> IO ByteString
privKeyAlgoNameIO = mkGetCString withPrivKeyPtr botan_privkey_algo_name

-- TODO:
-- privKeyExportEncryptedPBKDFMsec
--     :: PrivKey
--     -> RNGCtx
--     -> ByteString   -- Passphrase
--     -> Word32       -- Msec runtime
--     -> ByteString   -- Cipher algo
--     -> ByteString   -- PBKDF algo
--     -> Word32       -- Flags
--     -> IO ByteString 
-- privKeyExportEncryptedPBKDFMsec = undefined

-- TODO:
-- privKeyExportEncryptedPBKDFIter
--     :: PrivKey
--     -> RNGCtx
--     -> ByteString   -- Passphrase
--     -> CSize        -- Iterations
--     -> ByteString   -- Cipher algo
--     -> ByteString   -- PBKDF algo
--     -> Word32       -- Flags
--     -> IO ByteString 
-- privKeyExportEncryptedPBKDFIter = undefined

newtype PubKey = MkPubKey { getPubKeyForeignPtr :: ForeignPtr PubKeyStruct }

withPubKeyPtr :: PubKey -> (PubKeyPtr -> IO a) -> IO a
withPubKeyPtr = withForeignPtr . getPubKeyForeignPtr

type PubKeyName = ByteString

pubKeyDestroyIO :: PubKey -> IO ()
pubKeyDestroyIO pubKey = finalizeForeignPtr (getPubKeyForeignPtr pubKey)

pubKeyLoadIO :: ByteString -> IO PubKey
pubKeyLoadIO = mkInit_bytes_len MkPubKey botan_pubkey_load botan_pubkey_destroy

withPubKeyLoadIO :: ByteString -> (PubKey -> IO a) -> IO a
withPubKeyLoadIO = mkWithTemp1 pubKeyLoadIO pubKeyDestroyIO

privKeyExportPubKeyIO :: PrivKey -> IO PubKey
privKeyExportPubKeyIO = mkInit_with MkPubKey botan_privkey_export_pubkey botan_pubkey_destroy withPrivKeyPtr

pattern PubKeyExportDER :: PubKeyExportFlags
pattern PubKeyExportDER = BOTAN_PUBKEY_EXPORT_FLAG_DER

pattern PubKeyExportPEM :: PubKeyExportFlags
pattern PubKeyExportPEM = BOTAN_PUBKEY_EXPORT_FLAG_PEM

-- NOTE: Different from allocBytesQuerying / INSUFFICIENT_BUFFER_SPACE
pubKeyExportIO :: PubKey -> PubKeyExportFlags -> IO ByteString
pubKeyExportIO pk flags = withPubKeyPtr pk $ \ pkPtr -> do
    alloca $ \szPtr -> do
        poke szPtr 0
        -- NOTE: Presumed be -1
        _ <- botan_pubkey_export pkPtr nullPtr szPtr flags
        sz <- peek szPtr
        allocBytes (fromIntegral sz) $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_pubkey_export pkPtr bytesPtr szPtr flags

pubKeyAlgoNameIO :: PubKey -> IO ByteString
pubKeyAlgoNameIO = mkGetCString withPubKeyPtr botan_pubkey_algo_name

pattern CheckKeyNone :: PubKeyCheckKeyFlags
pattern CheckKeyNone = BOTAN_PUBKEY_CHECK_KEY_FLAGS_NONE

pattern CheckKeyExpensiveTests :: PubKeyCheckKeyFlags
pattern CheckKeyExpensiveTests = BOTAN_PUBKEYCHECK_KEY_FLAGS_EXPENSIVE_TESTS

pubKeyCheckKeyIO :: PubKey -> RNGCtx -> PubKeyCheckKeyFlags -> IO Bool
pubKeyCheckKeyIO pk rng flags = withPubKeyPtr pk $ \ pkPtr -> do
    withRNGPtr rng $ \ rngPtr -> do
        throwBotanCatchingSuccess $ botan_pubkey_check_key pkPtr rngPtr flags

-- Annoying - this mixes cint and csize
--  I need to consolidate getsize / getint
pubKeyEstimatedStrengthIO :: PubKey -> IO Int
pubKeyEstimatedStrengthIO pk = fromIntegral <$> mkGetSize withPubKeyPtr botan_pubkey_estimated_strength pk

pubKeyFingerprintIO :: PubKey -> ByteString -> IO ByteString
pubKeyFingerprintIO pk algo = withPubKeyPtr pk $ \ pkPtr -> do
    asCString algo $ \ algoPtr -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_pubkey_fingerprint
            pkPtr
            algoPtr
            outPtr
            outLen

-- NOTE: Sets the MP
pubKeyGetFieldIO :: MP -> PubKey -> ByteString -> IO ()
pubKeyGetFieldIO mp pk field = withMPPtr mp $ \ mpPtr -> do
    withPubKeyPtr pk $ \ pkPtr -> do
        asCString field $ \ fieldPtr -> do
            throwBotanIfNegative_ $ botan_pubkey_get_field mpPtr pkPtr fieldPtr

-- NOTE: Sets the MP
privKeyGetFieldIO :: MP -> PrivKey -> ByteString -> IO ()
privKeyGetFieldIO mp sk field = withMPPtr mp $ \ mpPtr -> do
    withPrivKeyPtr sk $ \ skPtr -> do
        asCString field $ \ fieldPtr -> do
            throwBotanIfNegative_ $ botan_privkey_get_field mpPtr skPtr fieldPtr

-- Helpers

mkPrivKeyLoad1_name
    :: (Ptr PrivKeyPtr -> MPPtr -> CString -> IO BotanErrorCode)
    -> MP -> ByteString -> IO PrivKey
mkPrivKeyLoad1_name load a name = alloca $ \ outPtr -> do
    withMPPtr a $ \ aPtr -> do
        asCString name $ \ namePtr -> do
            throwBotanIfNegative_ $ load outPtr aPtr namePtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_privkey_destroy out
            return $ MkPrivKey foreignPtr

mkPrivKeyLoad3
    :: (Ptr PrivKeyPtr -> MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode)
    -> MP -> MP -> MP -> IO PrivKey
mkPrivKeyLoad3 load a b c = alloca $ \ outPtr -> do
    withPtrs withMPPtr [a,b,c] $ \ [aPtr,bPtr,cPtr] -> do
        throwBotanIfNegative_ $ load outPtr aPtr bPtr cPtr
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_privkey_destroy out
        return $ MkPrivKey foreignPtr

mkPrivKeyLoad4
    :: (Ptr PrivKeyPtr-> MPPtr -> MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode)
    -> MP -> MP -> MP -> MP -> IO PrivKey
mkPrivKeyLoad4 load a b c d = alloca $ \ outPtr -> do
    withPtrs withMPPtr [a,b,c,d] $ \ [aPtr,bPtr,cPtr,dPtr] -> do
        throwBotanIfNegative_ $ load outPtr aPtr bPtr cPtr dPtr
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_privkey_destroy out
        return $ MkPrivKey foreignPtr

--

mkPubKeyLoad2
    :: (Ptr PubKeyPtr -> MPPtr -> MPPtr -> IO BotanErrorCode)
    -> MP -> MP -> IO PubKey
mkPubKeyLoad2 load a b = alloca $ \ outPtr -> do
    withPtrs withMPPtr [a,b] $ \ [aPtr,bPtr] -> do
        throwBotanIfNegative_ $ load outPtr aPtr bPtr
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_pubkey_destroy out
        return $ MkPubKey foreignPtr

mkPubKeyLoad2_name
    :: (Ptr PubKeyPtr -> MPPtr -> MPPtr -> CString -> IO BotanErrorCode)
    -> MP -> MP -> ByteString -> IO PubKey
mkPubKeyLoad2_name load x y name = alloca $ \ outPtr -> do
    withPtrs withMPPtr [x,y] $ \ [xPtr,yPtr] -> do
        asCString name $ \ namePtr -> do
            throwBotanIfNegative_ $ load outPtr xPtr yPtr namePtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pubkey_destroy out
            return $ MkPubKey foreignPtr

mkPubKeyLoad3
    :: (Ptr PubKeyPtr -> MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode)
    -> MP -> MP -> MP -> IO PubKey
mkPubKeyLoad3 load a b c = alloca $ \ outPtr -> do
    withPtrs withMPPtr [a,b,c] $ \ [aPtr,bPtr,cPtr] -> do
        throwBotanIfNegative_ $ load outPtr aPtr bPtr cPtr
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_pubkey_destroy out
        return $ MkPubKey foreignPtr

mkPubKeyLoad4
    :: (Ptr PubKeyPtr-> MPPtr -> MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode)
    -> MP -> MP -> MP -> MP -> IO PubKey
mkPubKeyLoad4 load a b c d = alloca $ \ outPtr -> do
    withPtrs withMPPtr [a,b,c,d] $ \ [aPtr,bPtr,cPtr,dPtr] -> do
        throwBotanIfNegative_ $ load outPtr aPtr bPtr cPtr dPtr
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_pubkey_destroy out
        return $ MkPubKey foreignPtr
