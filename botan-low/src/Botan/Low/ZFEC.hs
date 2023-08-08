{-|
Module      : Botan.Low.ZFEC
Description : ZFEC Forward Error Correction
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

The ZFEC module provides forward error correction compatible
with the zfec library.

Forward error correction takes an input and creates multiple
“shares”, such that any K of N shares is sufficient to recover
the entire original input.

Note

Specific to the ZFEC format, the first K generated shares are
identical to the original input data, followed by N-K shares of
error correcting code. This is very different from threshold
secret sharing, where having fewer than K shares gives no
information about the original input.

Warning

If a corrupted share is provided to the decoding algorithm, the
resulting decoding will be invalid. It is recommended to protect
shares using a technique such as a MAC or public key signature,
if corruption is likely in your application.

ZFEC requires that the input length be exactly divisible by K; if
needed define a padding scheme to pad your input to the necessary
size.
-}

module Botan.Low.ZFEC where

import Control.Concurrent

import Data.Foldable

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Unsafe as ByteString

import Botan.Bindings.ZFEC

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

-- /**
--  * ZFEC
--  */

type ZFECShare = (Int, ByteString)

-- TODO: Better way of doing this?
zfecEncodeIO :: Int -> Int -> ByteString -> IO [ZFECShare]
zfecEncodeIO k n input = asBytesLen input $ \ inputPtr inputLen -> do
    let shareSize = div (fromIntegral inputLen) k
    allocaBytes (n * shareSize) $ \ outPtr -> do
        allocaArray n $ \ (sharePtrArrayPtr :: Ptr (Ptr Word8)) -> do
            let sharePtrs = fmap (advancePtr outPtr . (* shareSize)) [0..(n-1)]
            pokeArray sharePtrArrayPtr sharePtrs
            throwBotanIfNegative_ $ botan_zfec_encode
                (fromIntegral k)
                (fromIntegral n)
                inputPtr
                inputLen
                sharePtrArrayPtr
            shares <- traverse (ByteString.packCStringLen . (,shareSize) . castPtr) sharePtrs
            return $ zip [0..(n-1)] shares

{-# WARNING zfecDecodeIO "Not implemented correctly, causes segfault." #-}
-- NOTE: segfault may be related to strictness.
zfecDecodeIO :: Int -> Int -> [ZFECShare] -> Int -> IO ByteString
zfecDecodeIO k n shares shareSize = allocaArray k $ \ (indexesPtr :: Ptr CSize) -> do
    withPtrs unsafeAsBytes (fmap snd shares) $ \ (sharePtrs :: [Ptr Word8]) -> do
        allocaArray k $ \ (sharePtrArrayPtr :: Ptr (Ptr Word8)) -> do
            pokeArray indexesPtr $ fmap (fromIntegral . fst) shares
            withPtrs (const $ allocaBytes shareSize) [0..(k-1)] $ \ outPtrs -> do
                allocaArray k $ \ outPtrArrayPtr -> do
                    pokeArray outPtrArrayPtr outPtrs
                    throwBotanIfNegative_ $ botan_zfec_decode
                        (fromIntegral k)
                        (fromIntegral n)
                        indexesPtr
                        sharePtrArrayPtr
                        (fromIntegral shareSize)
                        outPtrArrayPtr
                    decodedShares <- traverse (ByteString.unsafePackCStringLen . (,shareSize) . castPtr) outPtrs
                    return $! ByteString.copy $! ByteString.concat decodedShares
