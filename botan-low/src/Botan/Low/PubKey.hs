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
import Botan.Bindings.RNG

import Botan.Low.Error
import Botan.Low.Hash
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude
import Botan.Low.Remake
import Botan.Low.RNG
import Botan.Low.View

-- Associated types

type PKPaddingName = ByteString
    
-- /*
-- * Public/private key creation, import, ...
-- */

newtype PrivKey = MkPrivKey { getPrivKeyForeignPtr :: ForeignPtr BotanPrivKeyStruct }

newPrivKey      :: BotanPrivKey -> IO PrivKey
withPrivKey     :: PrivKey -> (BotanPrivKey -> IO a) -> IO a
privKeyDestroy  :: PrivKey -> IO ()
createPrivKey   :: (Ptr BotanPrivKey -> IO CInt) -> IO PrivKey
(newPrivKey, withPrivKey, privKeyDestroy, createPrivKey, _)
    = mkBindings
        MkBotanPrivKey runBotanPrivKey
        MkPrivKey getPrivKeyForeignPtr
        botan_privkey_destroy

type PrivKeyName = ByteString

privKeyCreate :: ByteString -> ByteString -> RNG -> IO PrivKey
privKeyCreate name params rng = asCString name $ \ namePtr -> do
    asCString params $ \ paramsPtr -> do
        withRNG rng $ \ botanRNG -> do
            createPrivKey $ \ out -> botan_privkey_create
                out
                (ConstPtr namePtr)
                (ConstPtr paramsPtr)
                botanRNG

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withPrivKeyCreate :: ByteString -> ByteString -> RNG -> (PrivKey -> IO a) -> IO a
withPrivKeyCreate = mkWithTemp3 privKeyCreate privKeyDestroy

type CheckKeyFlags = Word32

pattern CheckKeyNormalTests
    ,   CheckKeyExpensiveTests
    ::  CheckKeyFlags
pattern CheckKeyNormalTests    = BOTAN_CHECK_KEY_NORMAL_TESTS
pattern CheckKeyExpensiveTests = BOTAN_CHECK_KEY_EXPENSIVE_TESTS

-- TODO: Probably catch -1 (INVALID_INPUT), return Bool
privKeyCheckKey :: PrivKey -> RNG -> CheckKeyFlags -> IO ()
privKeyCheckKey sk rng flags = withPrivKey sk $ \ skPtr -> do
    withRNG rng $ \ botanRNG -> do
        throwBotanIfNegative_ $ botan_privkey_check_key skPtr botanRNG flags

-- NOTE: Expectes PKCS #8 / PEM structure
-- botan_privkey_export -> null password? and botan_privkey_export_encrypted_... -> use a password?
-- NOTE: This is probably a bad implementation; null pointer and empty string are different
--  and unencrypted is not the same as encrypted with "" as a pasword
--  We'll fix this by having privKeyLoad and privKeyLoadEncrypted be separate functions
privKeyLoad :: ByteString -> ByteString -> IO PrivKey
privKeyLoad bits password = asBytesLen bits $ \ bitsPtr bitsLen -> do
    let asCStringNullable str act = if ByteString.null str
        then act nullPtr
        else asCString str act
    asCStringNullable password $ \ passwordPtr -> do
        createPrivKey $ \ out -> botan_privkey_load
            out
            (MkBotanRNG nullPtr)
            (ConstPtr bitsPtr)
            bitsLen
            (ConstPtr passwordPtr)

type PrivKeyExportFlags = Word32

pattern PrivKeyExportDER
    ,   PrivKeyExportPEM
    ::  PrivKeyExportFlags

pattern PrivKeyExportDER = BOTAN_PRIVKEY_EXPORT_FLAG_DER
pattern PrivKeyExportPEM = BOTAN_PRIVKEY_EXPORT_FLAG_PEM

-- NOTE: Different from allocBytesQuerying / INSUFFICIENT_BUFFER_SPACE
privKeyExport :: PrivKey -> PrivKeyExportFlags -> IO ByteString
privKeyExport sk flags = withPrivKey sk $ \ skPtr -> do
    alloca $ \szPtr -> do
        poke szPtr 0
        -- NOTE: Presumed be -1
        _ <- botan_privkey_export skPtr nullPtr szPtr flags
        sz <- peek szPtr
        allocBytes (fromIntegral sz) $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_privkey_export skPtr bytesPtr szPtr flags

privKeyAlgoName :: PrivKey -> IO ByteString
privKeyAlgoName = mkGetCString withPrivKey botan_privkey_algo_name

-- TODO:
-- privKeyExportEncryptedPBKDFMsec
--     :: PrivKey
--     -> RNG
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
--     -> RNG
--     -> ByteString   -- Passphrase
--     -> CSize        -- Iterations
--     -> ByteString   -- Cipher algo
--     -> ByteString   -- PBKDF algo
--     -> Word32       -- Flags
--     -> IO ByteString 
-- privKeyExportEncryptedPBKDFIter = undefined

newtype PubKey = MkPubKey { getPubKeyForeignPtr :: ForeignPtr BotanPubKeyStruct }

newPubKey      :: BotanPubKey -> IO PubKey
withPubKey     :: PubKey -> (BotanPubKey -> IO a) -> IO a
pubKeyDestroy  :: PubKey -> IO ()
createPubKey   :: (Ptr BotanPubKey -> IO CInt) -> IO PubKey
(newPubKey, withPubKey, pubKeyDestroy, createPubKey, _)
    = mkBindings
        MkBotanPubKey runBotanPubKey
        MkPubKey getPubKeyForeignPtr
        botan_pubkey_destroy

type PubKeyName = ByteString

pubKeyLoad :: ByteString -> IO PubKey
pubKeyLoad = mkCreateObjectCBytesLen createPubKey botan_pubkey_load

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withPubKeyLoad :: ByteString -> (PubKey -> IO a) -> IO a
withPubKeyLoad = mkWithTemp1 pubKeyLoad pubKeyDestroy

privKeyExportPubKey :: PrivKey -> IO PubKey
privKeyExportPubKey = mkCreateObjectWith createPubKey withPrivKey botan_privkey_export_pubkey

type PubKeyExportFlags = PrivKeyExportFlags

pattern PubKeyExportDER
    ,   PubKeyExportPEM
    ::  PubKeyExportFlags

pattern PubKeyExportDER = PrivKeyExportDER
pattern PubKeyExportPEM = PrivKeyExportPEM

-- NOTE: Different from allocBytesQuerying / INSUFFICIENT_BUFFER_SPACE
pubKeyExport :: PubKey -> PubKeyExportFlags -> IO ByteString
pubKeyExport pk flags = withPubKey pk $ \ pkPtr -> do
    alloca $ \szPtr -> do
        poke szPtr 0
        -- NOTE: Presumed be -1
        _ <- botan_pubkey_export pkPtr nullPtr szPtr flags
        sz <- peek szPtr
        allocBytes (fromIntegral sz) $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_pubkey_export pkPtr bytesPtr szPtr flags

pubKeyAlgoName :: PubKey -> IO ByteString
pubKeyAlgoName = mkGetCString withPubKey botan_pubkey_algo_name

pubKeyCheckKey :: PubKey -> RNG -> CheckKeyFlags -> IO Bool
pubKeyCheckKey pk rng flags = withPubKey pk $ \ pkPtr -> do
    withRNG rng $ \ botanRNG -> do
        throwBotanCatchingSuccess $ botan_pubkey_check_key pkPtr botanRNG flags

-- Annoying - this mixes cint and csize
--  I need to consolidate getsize / getint
pubKeyEstimatedStrength :: PubKey -> IO Int
pubKeyEstimatedStrength pk = fromIntegral <$> mkGetSize withPubKey botan_pubkey_estimated_strength pk

pubKeyFingerprint :: PubKey -> HashName -> IO ByteString
pubKeyFingerprint pk algo = withPubKey pk $ \ pkPtr -> do
    asCString algo $ \ algoPtr -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_pubkey_fingerprint
            pkPtr
            (ConstPtr algoPtr)
            outPtr
            outLen

-- NOTE: Sets the MP
pubKeyGetField :: MP -> PubKey -> ByteString -> IO ()
pubKeyGetField mp pk field = withMP mp $ \ mpPtr -> do
    withPubKey pk $ \ pkPtr -> do
        asCString field $ \ fieldPtr -> do
            throwBotanIfNegative_ $ botan_pubkey_get_field
                mpPtr
                pkPtr
                (ConstPtr fieldPtr)

-- NOTE: Sets the MP
privKeyGetField :: MP -> PrivKey -> ByteString -> IO ()
privKeyGetField mp sk field = withMP mp $ \ mpPtr -> do
    withPrivKey sk $ \ skPtr -> do
        asCString field $ \ fieldPtr -> do
            throwBotanIfNegative_ $ botan_privkey_get_field
                mpPtr
                skPtr
                (ConstPtr fieldPtr)

-- Helpers

mkPrivKeyLoad1_name
    :: (Ptr BotanPrivKey -> BotanMP -> ConstPtr CChar -> IO BotanErrorCode)
    -> MP -> ByteString -> IO PrivKey
mkPrivKeyLoad1_name load a name = withMP a $ \ aPtr -> do
    asCString name $ \ namePtr -> do
        createPrivKey $ \ out -> load out aPtr (ConstPtr namePtr)

mkPrivKeyLoad3
    :: (Ptr BotanPrivKey -> BotanMP -> BotanMP -> BotanMP -> IO BotanErrorCode)
    -> MP -> MP -> MP -> IO PrivKey
mkPrivKeyLoad3 load a b c = withMany withMP [a,b,c] $ \ [aPtr,bPtr,cPtr] -> do
    createPrivKey $ \ out -> load out aPtr bPtr cPtr

mkPrivKeyLoad4
    :: (Ptr BotanPrivKey -> BotanMP -> BotanMP -> BotanMP -> BotanMP -> IO BotanErrorCode)
    -> MP -> MP -> MP -> MP -> IO PrivKey
mkPrivKeyLoad4 load a b c d = withMany withMP [a,b,c] $ \ [aPtr,bPtr,cPtr,dPtr] -> do
    createPrivKey $ \ out -> load out aPtr bPtr cPtr dPtr

--

mkPubKeyLoad2
    :: (Ptr BotanPubKey -> BotanMP -> BotanMP -> IO BotanErrorCode)
    -> MP -> MP -> IO PubKey
mkPubKeyLoad2 load a b = withMany withMP [a,b] $ \ [aPtr,bPtr] -> do
    createPubKey $ \ out -> load out aPtr bPtr

mkPubKeyLoad2_name
    :: (Ptr BotanPubKey -> BotanMP -> BotanMP -> ConstPtr CChar -> IO BotanErrorCode)
    -> MP -> MP -> ByteString -> IO PubKey
mkPubKeyLoad2_name load x y name = withMany withMP [x,y] $ \ [xPtr,yPtr] -> do
    asCString name $ \ namePtr -> do
        createPubKey $ \ out -> load out xPtr yPtr (ConstPtr namePtr)

mkPubKeyLoad3
    :: (Ptr BotanPubKey -> BotanMP -> BotanMP -> BotanMP -> IO BotanErrorCode)
    -> MP -> MP -> MP -> IO PubKey
mkPubKeyLoad3 load a b c = withMany withMP [a,b,c] $ \ [aPtr,bPtr,cPtr] -> do
    createPubKey $ \ out -> load out aPtr bPtr cPtr

mkPubKeyLoad4
    :: (Ptr BotanPubKey -> BotanMP -> BotanMP -> BotanMP -> BotanMP -> IO BotanErrorCode)
    -> MP -> MP -> MP -> MP -> IO PubKey
mkPubKeyLoad4 load a b c d = withMany withMP [a,b,c,d] $ \ [aPtr,bPtr,cPtr,dPtr] -> do
    createPubKey $ \ out -> load out aPtr bPtr cPtr dPtr
