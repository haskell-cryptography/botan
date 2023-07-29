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
zfecEncode :: Int -> Int -> ByteString -> IO [ZFECShare]
zfecEncode k n input = asBytesLen input $ \ inputPtr inputLen -> do
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

{-# WARNING zfecDecode "Not implemented correctly, causes segfault." #-}
zfecDecode :: Int -> Int -> [ZFECShare] -> Int -> IO ByteString
zfecDecode k n shares shareSize = allocaArray k $ \ (indexesPtr :: Ptr CSize) -> do
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
                    return $ ByteString.copy $ ByteString.concat decodedShares
