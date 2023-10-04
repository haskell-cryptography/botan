{-|
Module      : Botan.Low.RNG
Description : Random number generators
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.RNG where

import qualified Data.ByteString as ByteString

import Botan.Bindings.RNG

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

-- TODO: Make this use the new `Botan.Make` functions

newtype RNGCtx = MkRandomCtx { getRNGForeignPtr :: ForeignPtr RNGStruct }

withRNGPtr :: RNGCtx -> (RNGPtr -> IO a) -> IO a
withRNGPtr = withForeignPtr . getRNGForeignPtr

rngInit :: RNGName -> IO RNGCtx
rngInit name = do
    alloca $ \ outPtr -> do
        asCString name $ \ namePtr -> do 
            throwBotanIfNegative_ $ botan_rng_init outPtr namePtr
        out <- peek outPtr
        macForeignPtr <- newForeignPtr botan_rng_destroy out
        return $ MkRandomCtx macForeignPtr

withRNGInit :: RNGName -> (RNGCtx -> IO a) -> IO a
withRNGInit = mkWithTemp1 rngInit rngDestroy

rngDestroy :: RNGCtx -> IO ()
rngDestroy rng = finalizeForeignPtr (getRNGForeignPtr rng)

rngGet :: Int -> RNGCtx -> IO ByteString
rngGet len rng = do
    withRNGPtr rng $ \ rngPtr -> do
        allocBytes len $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_rng_get rngPtr bytesPtr (fromIntegral len)

systemRNGGet :: Int -> IO ByteString
systemRNGGet len = allocBytes len $ \ bytesPtr -> do
    throwBotanIfNegative_ $ botan_system_rng_get bytesPtr (fromIntegral len)

rngReseed :: RNGCtx -> Int -> IO ()
rngReseed rng bits = do
    withRNGPtr rng $ \ rngPtr -> do
        throwBotanIfNegative_ $ botan_rng_reseed rngPtr (fromIntegral bits)

rngReseedFromRNGCtx :: RNGCtx -> RNGCtx -> Int -> IO ()
rngReseedFromRNGCtx rng source bits = do
    withRNGPtr rng $ \ rngPtr -> do
        withRNGPtr source $ \ sourcePtr -> do
            throwBotanIfNegative_ $ botan_rng_reseed_from_rng rngPtr sourcePtr (fromIntegral bits)

rngAddEntropy :: RNGCtx -> ByteString -> IO ()
rngAddEntropy rng bytes = do
    withRNGPtr rng $ \ rngPtr -> do
        asBytesLen bytes $ \ bytesPtr bytesLen -> do
            throwBotanIfNegative_ $ botan_rng_add_entropy rngPtr bytesPtr bytesLen
