{-|
Module      : Botan.Low.Verify
Description : Signature Verification
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.Verify
(

-- * Public key signature verification
  Verify(..)
, withVerify
, verifyCreate
, verifyDestroy
, verifyUpdate
, verifyFinish

) where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.Verify

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.RNG
import Botan.Low.PubKey
import Botan.Low.PubKey.Sign (SigningFlags(..))
import Botan.Low.Remake

-- /*
-- * Signature Verification
-- */

newtype Verify = MkVerify { getVerifyForeignPtr :: ForeignPtr BotanPKOpVerifyStruct }

newVerify      :: BotanPKOpVerify -> IO Verify
withVerify     :: Verify -> (BotanPKOpVerify -> IO a) -> IO a
verifyDestroy  :: Verify -> IO ()
createVerify   :: (Ptr BotanPKOpVerify -> IO CInt) -> IO Verify
(newVerify, withVerify, verifyDestroy, createVerify, _)
    = mkBindings
        MkBotanPKOpVerify runBotanPKOpVerify
        MkVerify getVerifyForeignPtr
        botan_pk_op_verify_destroy

type VerifyAlgo = ByteString

verifyCreate
    :: PubKey       -- ^ __key__
    -> EMSAName     -- ^ __hash_and_padding__
    -> SigningFlags -- ^ __flags__
    -> IO Verify    -- ^ __op__
verifyCreate pk algo flags =  withPubKey pk $ \ pkPtr -> do
    asCString algo $ \ algoPtr -> do
        createVerify $ \ out -> botan_pk_op_verify_create
            out
            pkPtr
            (ConstPtr algoPtr)
            flags

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withVerifyCreate :: PubKey -> EMSAName -> SigningFlags -> (Verify -> IO a) -> IO a
withVerifyCreate = mkWithTemp3 verifyCreate verifyDestroy

verifyUpdate
    :: Verify       -- ^ __op__
    -> ByteString   -- ^ __in[]__
    -> IO ()
verifyUpdate = mkWithObjectSetterCBytesLen withVerify botan_pk_op_verify_update

-- TODO: Signature type
verifyFinish
    :: Verify       -- ^ __op__
    -> ByteString   -- ^ __sig[]__
    -> IO Bool
verifyFinish verify sig = withVerify verify $ \ verifyPtr -> do
    asBytesLen sig $ \ sigPtr sigLen -> do
        throwBotanCatchingSuccess $ botan_pk_op_verify_finish
            verifyPtr
            (ConstPtr sigPtr)
            sigLen
