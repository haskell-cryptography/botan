{-|
Module      : Botan.Low.Verify
Description : Signature Verification
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.Verify where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.Sign (SigningFlags(..))
import Botan.Bindings.PubKey.Verify

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.Random
import Botan.Low.PubKey
import Botan.Low.PubKey.Sign (SigningAlgo(..))

-- /*
-- * Signature Verification
-- */

newtype Verify = MkVerify { getVerifyForeignPtr :: ForeignPtr VerifyStruct }

withVerifyPtr :: Verify -> (VerifyPtr -> IO a) -> IO a
withVerifyPtr = withForeignPtr . getVerifyForeignPtr

type VerifyAlgo = ByteString

verifyCreate :: PubKey -> SigningAlgo -> SigningFlags -> IO Verify
verifyCreate pk algo flags = alloca $ \ outPtr -> do
    withPubKeyPtr pk $ \ pkPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative_ $ botan_pk_op_verify_create outPtr pkPtr algoPtr flags
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_verify_destroy out
            return $ MkVerify foreignPtr

verifyDestroy :: Verify -> IO ()
verifyDestroy verify = finalizeForeignPtr (getVerifyForeignPtr verify)

withVerify :: PubKey -> SigningAlgo -> SigningFlags -> (Verify -> IO a) -> IO a
withVerify = mkWithTemp3 verifyCreate verifyDestroy

verifyUpdate :: Verify -> ByteString -> IO ()
verifyUpdate = mkSetBytesLen withVerifyPtr botan_pk_op_verify_update

-- TODO: Signature type
-- NOTE: Ignores szPtr result
verifyFinish :: Verify -> ByteString -> IO Bool
verifyFinish verify sig = withVerifyPtr verify $ \ verifyPtr -> do
    asBytesLen sig $ \ sigPtr sigLen -> do
        throwBotanCatchingSuccess $ botan_pk_op_verify_finish verifyPtr sigPtr sigLen
