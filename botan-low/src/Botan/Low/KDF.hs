module Botan.Low.KDF where

import qualified Data.ByteString as ByteString

import Botan.Bindings.KDF

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

-- NOTE: Untested. May be obsolete / deprecated.
--  No KDF algorithms are available on my Botan installation,
--  or at least I am getting NotImplementedException (-40) for all of them.
-- SEE: Algos here: https://botan.randombit.net/doxygen/classBotan_1_1KDF.html
kdf :: ByteString -> Int -> ByteString -> ByteString -> ByteString -> IO ByteString
kdf algo outLen secret salt label = allocBytes outLen $ \ outPtr -> do
    asCString algo $ \ algoPtr -> do
        asBytesLen secret $ \ secretPtr secretLen -> do
            asBytesLen salt $ \ saltPtr saltLen -> do
                asBytesLen label $ \ labelPtr labelLen -> do
                    throwBotanIfNegative_ $ botan_kdf algoPtr outPtr (fromIntegral outLen) secretPtr secretLen saltPtr saltLen labelPtr labelLen
