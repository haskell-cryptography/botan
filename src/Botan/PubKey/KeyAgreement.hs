module Botan.PubKey.KeyAgreement where

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
import Botan.PubKey

-- /*
-- * Key Agreement
-- */
-- typedef struct botan_pk_op_ka_struct* botan_pk_op_ka_t;

data KeyAgreementStruct
type KeyAgreementPtr = Ptr KeyAgreementStruct

newtype KeyAgreement = MkKeyAgreement { getKeyAgreementForeignPtr :: ForeignPtr KeyAgreementStruct }

withKeyAgreementPtr :: KeyAgreement -> (KeyAgreementPtr -> IO a) -> IO a
withKeyAgreementPtr = withForeignPtr . getKeyAgreementForeignPtr

-- TODO: Figure out what the flags actually are
type KeyAgreementFlags = Word32

pattern BOTAN_PUBKEY_KeyAgreement_FLAGS_NONE = 0 :: KeyAgreementFlags -- NOTE: NOT ACTUAL FLAG

-- BOTAN_PUBLIC_API(2,0)
-- int botan_pk_op_key_agreement_create(botan_pk_op_ka_t* op,
--                                      botan_privkey_t key,
--                                      const char* kdf,
--                                      uint32_t flags);
foreign import ccall unsafe botan_pk_op_key_agreement_create :: Ptr KeyAgreementPtr -> PrivKeyPtr -> CString -> KeyAgreementFlags -> IO BotanErrorCode

-- /**
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_key_agreement_destroy(botan_pk_op_ka_t op);
foreign import ccall unsafe "&botan_pk_op_key_agreement_destroy" botan_pk_op_key_agreement_destroy :: FinalizerPtr KeyAgreementStruct

-- NOTE: Is same as Encrypt - unify?
keyAgreementCreate :: PrivKey -> ByteString -> KeyAgreementFlags -> IO KeyAgreement
keyAgreementCreate sk algo flags = alloca $ \ outPtr -> do
    withPrivKeyPtr sk $ \ skPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative_ $ botan_pk_op_key_agreement_create outPtr skPtr algoPtr flags
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_key_agreement_destroy out
            return $ MkKeyAgreement foreignPtr

keyAgreementDestroy :: KeyAgreement -> IO ()
keyAgreementDestroy ka = finalizeForeignPtr (getKeyAgreementForeignPtr ka)

withKeyAgreement :: PrivKey -> ByteString -> KeyAgreementFlags -> (KeyAgreement -> IO a) -> IO a
withKeyAgreement = mkWithTemp3 keyAgreementCreate keyAgreementDestroy

-- BOTAN_PUBLIC_API(2,0) int botan_pk_op_key_agreement_export_public(botan_privkey_t key,
--                                                       uint8_t out[], size_t* out_len);
foreign import ccall unsafe botan_pk_op_key_agreement_export_public
    :: PrivKeyPtr
    -> Ptr Word8
    -> Ptr CSize
    -> IO BotanErrorCode

keyAgreementExportPublic :: PrivKey -> IO ByteString
keyAgreementExportPublic sk = withPrivKeyPtr sk $ \ skPtr -> do
    allocBytesQuerying $ \ outPtr outLen -> botan_pk_op_key_agreement_export_public
        skPtr
        outPtr
        outLen

-- BOTAN_PUBLIC_API(3,0) int botan_pk_op_key_agreement_view_public(
--    botan_privkey_t key,
--    botan_view_ctx ctx,
--    botan_view_bin_fn view);
-- TODO: After we figure out view functions

-- BOTAN_PUBLIC_API(2,8) int botan_pk_op_key_agreement_size(botan_pk_op_ka_t op, size_t* out_len);
foreign import ccall unsafe botan_pk_op_key_agreement_size :: KeyAgreementPtr -> Ptr CSize -> IO BotanErrorCode

keyAgreementSize :: KeyAgreement -> IO Int
keyAgreementSize = mkGetSize withKeyAgreementPtr botan_pk_op_key_agreement_size

-- BOTAN_PUBLIC_API(2,0)
-- int botan_pk_op_key_agreement(botan_pk_op_ka_t op,
--                               uint8_t out[], size_t* out_len,
--                               const uint8_t other_key[], size_t other_key_len,
--                               const uint8_t salt[], size_t salt_len);
foreign import ccall unsafe botan_pk_op_key_agreement
    :: KeyAgreementPtr
    -> Ptr Word8
    -> Ptr CSize
    -> Ptr Word8
    -> CSize
    -> Ptr Word8
    -> CSize
    -> IO BotanErrorCode

keyAgreement :: KeyAgreement -> ByteString -> ByteString -> IO ByteString
keyAgreement ka key salt = withKeyAgreementPtr ka $ \ kaPtr -> do
    asBytesLen key $ \ keyPtr keyLen -> do
        asBytesLen salt $ \ saltPtr saltLen -> do
            allocBytesQuerying $ \ outPtr outLen -> botan_pk_op_key_agreement
                kaPtr
                outPtr
                outLen
                keyPtr
                keyLen
                saltPtr
                saltLen
