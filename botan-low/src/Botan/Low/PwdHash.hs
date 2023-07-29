module Botan.Low.PwdHash where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PwdHash

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

-- NOTE: Should passphrase be Text or ByteString? Text is implied by use of const char*
--  as well as the non-null context implied by passphrase_len == 0. ByteString for now.
pwdhash :: ByteString -> Int -> Int -> Int -> Int -> ByteString -> ByteString -> IO ByteString
pwdhash algo p1 p2 p3 outLen passphrase salt = allocBytes outLen $ \ outPtr -> do
    asCString algo $ \ algoPtr -> do
        asCStringLen passphrase $ \ passphrasePtr passphraseLen -> do
            asBytesLen salt $ \ saltPtr saltLen -> do
                throwBotanIfNegative_ $ botan_pwdhash
                    algoPtr
                    (fromIntegral p1)
                    (fromIntegral p2)
                    (fromIntegral p3)
                    outPtr
                    (fromIntegral outLen)
                    passphrasePtr
                    passphraseLen
                    saltPtr
                    saltLen

pwdhashTimed :: ByteString -> Int -> Int -> ByteString -> ByteString -> IO (Int,Int,Int,ByteString)
pwdhashTimed algo msec outLen passphrase salt = alloca $ \ p1Ptr -> alloca $ \ p2Ptr -> alloca $ \ p3Ptr -> do
    out <- allocBytes outLen $ \ outPtr -> do
        asCString algo $ \ algoPtr -> do
            asCStringLen passphrase $ \ passphrasePtr passphraseLen -> do
                asBytesLen salt $ \ saltPtr saltLen -> do
                    throwBotanIfNegative_ $ botan_pwdhash_timed
                        algoPtr
                        (fromIntegral msec)
                        p1Ptr
                        p2Ptr
                        p3Ptr
                        outPtr
                        (fromIntegral outLen)
                        passphrasePtr
                        passphraseLen
                        saltPtr
                        saltLen
    p1 <- fromIntegral <$> peek p1Ptr
    p2 <- fromIntegral <$> peek p2Ptr
    p3 <- fromIntegral <$> peek p3Ptr
    return (p1,p2,p3,out)
