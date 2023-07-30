{-|
Module      : Botan.Low.KeyAgreement
Description : Key Agreement
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.KeyAgreement where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.KeyAgreement

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.PubKey

-- /*
-- * Key Agreement
-- */

newtype KeyAgreement = MkKeyAgreement { getKeyAgreementForeignPtr :: ForeignPtr KeyAgreementStruct }

withKeyAgreementPtr :: KeyAgreement -> (KeyAgreementPtr -> IO a) -> IO a
withKeyAgreementPtr = withForeignPtr . getKeyAgreementForeignPtr

pattern KeyAgreementNoFlags :: KeyAgreementFlags
pattern KeyAgreementNoFlags = BOTAN_PUBKEY_KEYAGREEMENT_FLAGS_NONE

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

keyAgreementExportPublic :: PrivKey -> IO ByteString
keyAgreementExportPublic sk = withPrivKeyPtr sk $ \ skPtr -> do
    allocBytesQuerying $ \ outPtr outLen -> botan_pk_op_key_agreement_export_public
        skPtr
        outPtr
        outLen

keyAgreementSize :: KeyAgreement -> IO Int
keyAgreementSize = mkGetSize withKeyAgreementPtr botan_pk_op_key_agreement_size

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
