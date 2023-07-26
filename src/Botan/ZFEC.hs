module Botan.ZFEC where

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
import Foreign.Marshal.Array
import Foreign.Ptr
import Foreign.Storable

import Botan.Error
import Botan.Make
import Botan.Prelude

import Control.Concurrent
import Data.Foldable

-- /**
--  * ZFEC
--  */

type ZFECShare = (Int, ByteString)

-- /**
--  * Encode some bytes with certain ZFEC parameters.
--  *
--  * @param K the number of shares needed for recovery
--  * @param N the number of shares generated
--  * @param input the data to FEC
--  * @param size the length in bytes of input, which must be a multiple of K
--  *
--  * @param outputs An out parameter pointing to a fully allocated array of size
--  *                [N][size / K].  For all n in range, an encoded block will be
--  *                written to the memory starting at outputs[n][0].
--  *
--  * @return 0 on success, negative on failure
--  */
-- BOTAN_PUBLIC_API(3,0)
-- int botan_zfec_encode(size_t K, size_t N,
--                       const uint8_t *input,
--                       size_t size,
--                       uint8_t **outputs);
foreign import ccall unsafe botan_zfec_encode
    :: CSize            -- k, number of recovery shares
    -> CSize            -- n, number of total shares
    -> Ptr Word8        -- Input
    -> CSize            -- Input length, must be multiple of k
    -> Ptr (Ptr Word8)
    -> IO BotanErrorCode

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

-- /**
--  * Decode some previously encoded shares using certain ZFEC parameters.
--  *
--  * @param K the number of shares needed for recovery
--  * @param N the total number of shares
--  *
--  * @param indexes The index into the encoder's outputs for the corresponding
--  *                element of the inputs array. Must be of length K.
--  *
--  * @param inputs K previously encoded shares to decode
--  * @param shareSize the length in bytes of each input
--  *
--  * @param outputs An out parameter pointing to a fully allocated array of size
--  *                [K][shareSize].  For all k in range, a decoded block will
--  *                written to the memory starting at outputs[k][0].
--  *
--  * @return 0 on success, negative on failure
--  */
-- BOTAN_PUBLIC_API(3,0)
-- int botan_zfec_decode(size_t K, size_t N,
--                       const size_t *indexes,
--                       uint8_t *const*const inputs,
--                       size_t shareSize,
--                       uint8_t **outputs);
foreign import ccall unsafe botan_zfec_decode
    :: CSize            -- k, number of recovery shares
    -> CSize            -- n, number of total shares
    -> Ptr CSize        -- Indexes
    -> Ptr (Ptr Word8)  -- Shares
    -> CSize            -- Share size
    -> Ptr (Ptr Word8)  -- Outputs
    -> IO BotanErrorCode

-- NOTE: This causes a segfault (sometimes up to a second later)
-- zfecDecode :: Int -> Int -> [ZFECShare] -> IO ByteString
-- zfecDecode k n [] = return ""
-- zfecDecode k n shares@((_,x):_) = do
--     let shareSize = ByteString.length x
--         indexes = fmap (fromIntegral . fst) shares
--     print $ "Share size: " <> show shareSize
--     print $ "Indexes: " <> show indexes
--     withPtrs asBytes (fmap snd shares) $ \ sharePtrs -> do
--         allocaArray k $ \ sharePtrArrayPtr -> do
--             pokeArray sharePtrArrayPtr sharePtrs
--             allocaArray k $ \ indexesPtr -> do
--                 pokeArray indexesPtr indexes
--                 allocBytes (k * shareSize) $ \ (outPtr :: Ptr Word8) -> do
--                     let outPtrs = fmap (advancePtr outPtr . (* shareSize)) [0..(k-1)]
--                     allocaArray k $ \ outPtrArrayPtr -> do
--                         print "PENDING"
--                         result <- botan_zfec_decode
--                             (fromIntegral k)
--                             (fromIntegral n)
--                             indexesPtr
--                             sharePtrArrayPtr
--                             (fromIntegral shareSize)
--                             outPtrArrayPtr
--                         print $ "Result: " <> show result
--                         undefined

-- I think odd byte size (eg, non-word64) may be causing issues. It really is expecting
--  multiple buffers, which would only align with a contiguous allocation by chance.
zfecDecode :: Int -> Int -> [ZFECShare] -> Int -> IO a
zfecDecode k n shares shareSize = allocaArray k $ \ (outPtrArrayPtr :: Ptr (Ptr Word8)) -> do
    allocaArray k $ \ (indexesPtr :: Ptr CSize) -> do
        withPtrs unsafeAsBytes (fmap snd shares) $ \ (sharePtrs :: [Ptr Word8]) -> do
            allocaArray k $ \ sharePtrArrayPtr -> do
                pokeArray indexesPtr $ fmap (fromIntegral . fst) shares
                pokeArray sharePtrArrayPtr sharePtrs
                throwBotanIfNegative_ $ botan_zfec_decode
                    (fromIntegral k)
                    (fromIntegral n)
                    indexesPtr
                    sharePtrArrayPtr
                    (fromIntegral shareSize)
                    outPtrArrayPtr
                undefined

{-
import Prelude
import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import Botan.ZFEC
msg = "Fee fi fo fum! I smell the blood of an Englishman!" :: ByteString
[a,b,c,d,e,f,g] <- zfecEncode 5 7 msg
recovered <- zfecDecode 5 7 [a,c,e,f,g] -- [f,a,e,d,g]
recovered
-}
