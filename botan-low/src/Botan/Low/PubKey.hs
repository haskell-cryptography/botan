module Botan.Low.PubKey where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Unsafe as ByteString

import Botan.Bindings.MPI
import Botan.Bindings.PubKey

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.Random
import Botan.Low.View
    
-- /*
-- * Public/private key creation, import, ...
-- */

newtype PrivKey = MkPrivKey { getPrivKeyForeignPtr :: ForeignPtr PrivKeyStruct }

withPrivKeyPtr :: PrivKey -> (PrivKeyPtr -> IO a) -> IO a
withPrivKeyPtr = withForeignPtr . getPrivKeyForeignPtr

type PrivKeyName = ByteString

privKeyCreate :: ByteString -> ByteString -> Random -> IO PrivKey
privKeyCreate name params random = alloca $ \ outPtr -> do
    asCString name $ \ namePtr -> do
        asCString params $ \ paramsPtr -> do
            withRandomPtr random $ \ randomPtr -> do
                throwBotanIfNegative_ $ botan_privkey_create outPtr namePtr paramsPtr randomPtr
                out <- peek outPtr
                foreignPtr <- newForeignPtr botan_privkey_destroy out
                return $ MkPrivKey foreignPtr

-- NOTE: Multiple ways of creating priv keys - need multiple withPrivKeys?
-- withPrivKeyCreate :: ByteString -> ByteString -> Random -> (PrivKey -> IO a) -> IO a
-- withPrivKeyCreate = mkWithTemp3 privKeyCreate privKeyDestroyCreate

privKeyDestroy :: PrivKey -> IO ()
privKeyDestroy privKey = finalizeForeignPtr (getPrivKeyForeignPtr privKey)

-- TODO: Probably catch -1 (INVALID_INPUT), return Bool
privKeyCheckKey :: PrivKey -> Random -> PubKeyCheckKeyFlags -> IO ()
privKeyCheckKey sk random flags = withPrivKeyPtr sk $ \ skPtr -> do
    withRandomPtr random $ \ randomPtr -> do
        throwBotanIfNegative_ $ botan_privkey_check_key skPtr randomPtr flags 

privKeyCreateDSA :: Random -> Int -> Int -> IO PrivKey
privKeyCreateDSA random pbits qbits = withRandomPtr random $ \ randomPtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_privkey_create_dsa outPtr randomPtr (fromIntegral pbits) (fromIntegral qbits)
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_privkey_destroy out
        return $ MkPrivKey foreignPtr

privKeyCreateElGamal :: Random -> Int -> Int -> IO PrivKey
privKeyCreateElGamal random pbits qbits = withRandomPtr random $ \ randomPtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_privkey_create_elgamal outPtr randomPtr (fromIntegral pbits) (fromIntegral qbits)
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_privkey_destroy out
        return $ MkPrivKey foreignPtr

-- NOTE: Expectes PKCS #8 / PEM structure
-- botan_privkey_export -> null password? and botan_privkey_export_encrypted_... -> use a password?
privKeyLoad :: ByteString -> ByteString -> IO PrivKey
privKeyLoad bits password = alloca $ \ outPtr -> do
    asBytesLen bits $ \ bitsPtr bitsLen -> do
        let asCStringNullable str act = if ByteString.null str
            then act nullPtr
            else asCString str act
        asCStringNullable password $ \ passwordPtr -> do
            throwBotanIfNegative_ $ botan_privkey_load outPtr nullPtr bitsPtr bitsLen passwordPtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_privkey_destroy out
            return $ MkPrivKey foreignPtr

pattern PrivKeyExportDER :: PrivKeyExportFlags
pattern PrivKeyExportDER = BOTAN_PRIVKEY_EXPORT_FLAG_DER

pattern PrivKeyExportPEM :: PrivKeyExportFlags
pattern PrivKeyExportPEM = BOTAN_PRIVKEY_EXPORT_FLAG_PEM

-- NOTE: Different from allocBytesQuerying / INSUFFICIENT_BUFFER_SPACE
privKeyExport :: PrivKey -> PrivKeyExportFlags -> IO ByteString
privKeyExport sk flags = withPrivKeyPtr sk $ \ skPtr -> do
    alloca $ \szPtr -> do
        poke szPtr 0
        -- NOTE: Presumed be -1
        _ <- botan_privkey_export skPtr nullPtr szPtr flags
        sz <- peek szPtr
        allocBytes (fromIntegral sz) $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_privkey_export skPtr bytesPtr szPtr flags

privKeyAlgoName :: PrivKey -> IO ByteString
privKeyAlgoName = mkGetName withPrivKeyPtr botan_privkey_algo_name

-- TODO:
-- privKeyExportEncryptedPBKDFMsec
--     :: PrivKey
--     -> Random
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
--     -> Random
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

pubKeyDestroy :: PubKey -> IO ()
pubKeyDestroy pubKey = finalizeForeignPtr (getPubKeyForeignPtr pubKey)

pubKeyLoad :: ByteString -> IO PubKey
pubKeyLoad = mkInit_bytes_len MkPubKey botan_pubkey_load botan_pubkey_destroy

withLoadedPubKey :: ByteString -> (PubKey -> IO a) -> IO a
withLoadedPubKey = mkWithTemp1 pubKeyLoad pubKeyDestroy

privKeyExportPubKey :: PrivKey -> IO PubKey
privKeyExportPubKey = mkInit_with MkPubKey botan_privkey_export_pubkey botan_pubkey_destroy withPrivKeyPtr

withExportedPubKey :: PrivKey -> (PubKey -> IO a) -> IO a
withExportedPubKey = mkWithTemp1 privKeyExportPubKey pubKeyDestroy

pattern PubKeyExportDER :: PubKeyExportFlags
pattern PubKeyExportDER = BOTAN_PUBKEY_EXPORT_FLAG_DER

pattern PubKeyExportPEM :: PubKeyExportFlags
pattern PubKeyExportPEM = BOTAN_PUBKEY_EXPORT_FLAG_PEM

-- NOTE: Different from allocBytesQuerying / INSUFFICIENT_BUFFER_SPACE
pubKeyExport :: PubKey -> PubKeyExportFlags -> IO ByteString
pubKeyExport pk flags = withPubKeyPtr pk $ \ pkPtr -> do
    alloca $ \szPtr -> do
        poke szPtr 0
        -- NOTE: Presumed be -1
        _ <- botan_pubkey_export pkPtr nullPtr szPtr flags
        sz <- peek szPtr
        allocBytes (fromIntegral sz) $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_pubkey_export pkPtr bytesPtr szPtr flags

pubKeyAlgoName :: PubKey -> IO ByteString
pubKeyAlgoName = mkGetName withPubKeyPtr botan_pubkey_algo_name

pattern CheckKeyNone :: PubKeyCheckKeyFlags
pattern CheckKeyNone = BOTAN_PUBKEY_CHECK_KEY_FLAGS_NONE

pattern CheckKeyExpensiveTests :: PubKeyCheckKeyFlags
pattern CheckKeyExpensiveTests = BOTAN_PUBKEYCHECK_KEY_FLAGS_EXPENSIVE_TESTS

pubKeyCheckKey :: PubKey -> Random -> PubKeyCheckKeyFlags -> IO Bool
pubKeyCheckKey pk random flags = withPubKeyPtr pk $ \ pkPtr -> do
    withRandomPtr random $ \ randomPtr -> do
        throwBotanCatchingSuccess $ botan_pubkey_check_key pkPtr randomPtr flags

-- Annoying - this mixes cint and csize
--  I need to consolidate getsize / getint
pubKeyEstimatedStrength :: PubKey -> IO Int
pubKeyEstimatedStrength pk = fromIntegral <$> mkGetSize withPubKeyPtr botan_pubkey_estimated_strength pk

pubKeyFingerprint :: PubKey -> ByteString -> IO ByteString
pubKeyFingerprint pk algo = withPubKeyPtr pk $ \ pkPtr -> do
    asCString algo $ \ algoPtr -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_pubkey_fingerprint
            pkPtr
            algoPtr
            outPtr
            outLen

-- NOTE: Sets the MP
pubKeyGetField :: MP -> PubKey -> ByteString -> IO ()
pubKeyGetField mp pk field = withMPPtr mp $ \ mpPtr -> do
    withPubKeyPtr pk $ \ pkPtr -> do
        asCString field $ \ fieldPtr -> do
            throwBotanIfNegative_ $ botan_pubkey_get_field mpPtr pkPtr fieldPtr

-- NOTE: Sets the MP
privKeyGetField :: MP -> PrivKey -> ByteString -> IO ()
privKeyGetField mp sk field = withMPPtr mp $ \ mpPtr -> do
    withPrivKeyPtr sk $ \ skPtr -> do
        asCString field $ \ fieldPtr -> do
            throwBotanIfNegative_ $ botan_privkey_get_field mpPtr skPtr fieldPtr

mkPrivKeyLoadECDSA :: MP -> ByteString -> IO PrivKey
mkPrivKeyLoadECDSA = mkPrivKeyLoad1_name botan_privkey_load_ecdsa

mkPubKeyLoadECDSA :: MP -> MP -> ByteString -> IO PubKey
mkPubKeyLoadECDSA = mkPubKeyLoad2_name botan_pubkey_load_ecdsa

mkPrivKeyLoadECDH :: MP -> ByteString -> IO PrivKey
mkPrivKeyLoadECDH = mkPrivKeyLoad1_name botan_privkey_load_ecdh

mkPubKeyLoadECDH :: MP -> MP -> ByteString -> IO PubKey
mkPubKeyLoadECDH = mkPubKeyLoad2_name botan_pubkey_load_ecdh

mkPrivKeyLoadSM2 :: MP -> ByteString -> IO PrivKey
mkPrivKeyLoadSM2 = mkPrivKeyLoad1_name botan_privkey_load_sm2

mkPubKeyLoadSM2 :: MP -> MP -> ByteString -> IO PubKey
mkPubKeyLoadSM2 = mkPubKeyLoad2_name botan_pubkey_load_sm2

-- TODO:
-- pubKeySM2ComputeZA :: ByteString -> ByteString -> PubKey -> IO ByteString
-- pubKeySM2omputeZA = undefined

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
