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
import Botan.Low.RNG
import Botan.Low.PubKey
import Botan.Low.PubKey.Sign (SignAlgoName(..))

-- /*
-- * Signature Verification
-- */

newtype VerifyCtx = MkVerifyCtx { getVerifyForeignPtr :: ForeignPtr VerifyStruct }

withVerifyPtr :: VerifyCtx -> (VerifyPtr -> IO a) -> IO a
withVerifyPtr = withForeignPtr . getVerifyForeignPtr

type VerifyAlgo = ByteString

verifyCtxCreateIO :: PubKey -> SignAlgoName -> SigningFlags -> IO VerifyCtx
verifyCtxCreateIO pk algo flags = alloca $ \ outPtr -> do
    withPubKeyPtr pk $ \ pkPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative_ $ botan_pk_op_verify_create outPtr pkPtr algoPtr flags
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_verify_destroy out
            return $ MkVerifyCtx foreignPtr

withVerifyCtxCreateIO :: PubKey -> SignAlgoName -> SigningFlags -> (VerifyCtx -> IO a) -> IO a
withVerifyCtxCreateIO = mkWithTemp3 verifyCtxCreateIO verifyCtxDestroyIO

verifyCtxDestroyIO :: VerifyCtx -> IO ()
verifyCtxDestroyIO verify = finalizeForeignPtr (getVerifyForeignPtr verify)

verifyCtxUpdateIO :: VerifyCtx -> ByteString -> IO ()
verifyCtxUpdateIO = mkSetBytesLen withVerifyPtr botan_pk_op_verify_update

-- TODO: Signature type
-- NOTE: Ignores szPtr result
verifyCtxFinishIO :: VerifyCtx -> ByteString -> IO Bool
verifyCtxFinishIO verify sig = withVerifyPtr verify $ \ verifyPtr -> do
    asBytesLen sig $ \ sigPtr sigLen -> do
        throwBotanCatchingSuccess $ botan_pk_op_verify_finish verifyPtr sigPtr sigLen
