{-|
Module      : Botan.Low.KeyAgreement
Description : Key Agreement
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.KeyAgreement
(

-- * Key agreement
  KeyAgreement(..)
, withKeyAgreement
, keyAgreementCreate
, keyAgreementDestroy
, keyAgreementExportPublic
, keyAgreementSize
, keyAgreement 

) where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.KeyAgreement

import Botan.Low.Error
import Botan.Low.KDF
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.PubKey
import Botan.Low.Remake

-- /*
-- * Key Agreement
-- */

newtype KeyAgreement = MkKeyAgreement { getKeyAgreementForeignPtr :: ForeignPtr BotanPKOpKeyAgreementStruct }

newKeyAgreement      :: BotanPKOpKeyAgreement -> IO KeyAgreement
withKeyAgreement     :: KeyAgreement -> (BotanPKOpKeyAgreement -> IO a) -> IO a
keyAgreementDestroy  :: KeyAgreement -> IO ()
createKeyAgreement   :: (Ptr BotanPKOpKeyAgreement -> IO CInt) -> IO KeyAgreement
(newKeyAgreement, withKeyAgreement, keyAgreementDestroy, createKeyAgreement, _)
    = mkBindings
        MkBotanPKOpKeyAgreement runBotanPKOpKeyAgreement
        MkKeyAgreement getKeyAgreementForeignPtr
        botan_pk_op_key_agreement_destroy

-- NOTE: Silently uses the system RNG
keyAgreementCreate :: PrivKey -> KDFName -> IO KeyAgreement
keyAgreementCreate sk algo = withPrivKey sk $ \ skPtr -> do
    asCString algo $ \ algoPtr -> do
        createKeyAgreement $ \ out -> botan_pk_op_key_agreement_create
            out
            skPtr
            (ConstPtr algoPtr)
            0

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withKeyAgreementCreate :: PrivKey -> KDFName -> (KeyAgreement -> IO a) -> IO a
withKeyAgreementCreate = mkWithTemp2 keyAgreementCreate keyAgreementDestroy

-- NOTE: I do not know if this provides a different functionality than just being
--  an alias for botan_privkey_export_pubkey / privKeyExportPubKey
--  Observe that it *does* just take a privkey, instead of a keyagreement
--  It may simply be here for convenience.
{-
int botan_pk_op_key_agreement_export_public(botan_privkey_t key, uint8_t out[], size_t* out_len) {
   return copy_view_bin(out, out_len, botan_pk_op_key_agreement_view_public, key);
}

int botan_pk_op_key_agreement_view_public(botan_privkey_t key, botan_view_ctx ctx, botan_view_bin_fn view) {
   return BOTAN_FFI_VISIT(key, [=](const auto& k) -> int {
      if(auto kak = dynamic_cast<const Botan::PK_Key_Agreement_Key*>(&k))
         return invoke_view_callback(view, ctx, kak->public_value());
      else
         return BOTAN_FFI_ERROR_INVALID_INPUT;
   });
}
-}
keyAgreementExportPublic :: PrivKey -> IO ByteString
keyAgreementExportPublic sk = withPrivKey sk $ \ skPtr -> do
    allocBytesQuerying $ \ outPtr outLen -> botan_pk_op_key_agreement_export_public
        skPtr
        outPtr
        outLen

keyAgreementSize :: KeyAgreement -> IO Int
keyAgreementSize = mkGetSize withKeyAgreement botan_pk_op_key_agreement_size

{-# WARNING keyAgreement "This function was leaking memory and causing crashes. Please observe carefully and report any future leaks." #-}
keyAgreement :: KeyAgreement -> ByteString -> ByteString -> IO ByteString
keyAgreement ka key salt = withKeyAgreement ka $ \ kaPtr -> do
    asBytesLen key $ \ keyPtr keyLen -> do
        asBytesLen salt $ \ saltPtr saltLen -> do
            outSz <- keyAgreementSize ka
            alloca $ \ szPtr -> do
                -- NOTE: This poke was necessary to stop a memory leak
                -- Similar pokes have been needed elsewere
                -- TODO: Ensure that all alloca szPtr elsewhere are properly poked
                poke szPtr (fromIntegral outSz)
                out <- allocBytes outSz $ \ outPtr -> do
                    throwBotanIfNegative_ $ botan_pk_op_key_agreement
                        kaPtr
                        outPtr
                        szPtr
                        (ConstPtr keyPtr)
                        keyLen
                        (ConstPtr saltPtr)
                        saltLen
                sz <- fromIntegral <$> peek szPtr
                return $! ByteString.take sz out
