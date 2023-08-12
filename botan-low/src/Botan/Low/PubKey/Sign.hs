{-|
Module      : Botan.Low.Sign
Description : Signature Generation
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.Sign where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.Sign

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.RNG
import Botan.Low.PubKey

-- /*
-- * Signature Generation
-- */

newtype SignCtx = MkSignCtx { getSignForeignPtr :: ForeignPtr SignStruct }

withSignPtr :: SignCtx -> (SignPtr -> IO a) -> IO a
withSignPtr = withForeignPtr . getSignForeignPtr

-- TODO: Rename SignAlgoParams / SigningParams
type SignAlgoName = ByteString

pattern SigningNoFlags :: SigningFlags
pattern SigningNoFlags = BOTAN_PUBKEY_SIGNING_FLAGS_NONE
pattern SigningDERFormatSignature = BOTAN_PUBKEY_DER_FORMAT_SIGNATURE

signCtxCreateIO :: PrivKey -> SignAlgoName -> SigningFlags -> IO SignCtx
signCtxCreateIO sk algo flags = alloca $ \ outPtr -> do
    withPrivKeyPtr sk $ \ skPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative_ $ botan_pk_op_sign_create outPtr skPtr algoPtr flags
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_sign_destroy out
            return $ MkSignCtx foreignPtr

withSignCtxCreateIO :: PrivKey -> SignAlgoName -> SigningFlags -> (SignCtx -> IO a) -> IO a
withSignCtxCreateIO = mkWithTemp3 signCtxCreateIO signCtxDestroyIO

signCtxDestroyIO :: SignCtx -> IO ()
signCtxDestroyIO sign = finalizeForeignPtr (getSignForeignPtr sign)

signCtxOutputLengthIO :: SignCtx -> IO Int
signCtxOutputLengthIO = mkGetSize withSignPtr botan_pk_op_sign_output_length

signCtxUpdateIO :: SignCtx -> ByteString -> IO ()
signCtxUpdateIO = mkSetBytesLen withSignPtr botan_pk_op_sign_update

-- TODO: Signature type
-- NOTE: Ignores szPtr result
signCtxFinishIO :: SignCtx -> RNGCtx -> IO ByteString
signCtxFinishIO sign rng = withSignPtr sign $ \ signPtr -> do
    withRNGPtr rng $ \ rngPtr -> do
        sz <- signCtxOutputLengthIO sign
        allocBytes sz $ \ sigPtr -> do
            alloca $ \ szPtr -> do
                throwBotanIfNegative_ $ botan_pk_op_sign_finish signPtr rngPtr sigPtr szPtr

-- /**
-- * Signature Scheme Utility Functions
-- */

-- TODO: botan_pkcs_hash_id
