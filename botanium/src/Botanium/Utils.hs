module Botanium.Utils
( randomByteString
, bin2hex
) where

import Botanium.Prelude
import Botan.Utility
import Botan.Low.RNG

randomByteString :: Int -> IO ByteString
randomByteString = systemRNGGet

bin2hex :: ByteString -> Text
bin2hex = flip hexEncode Lower

-- data Security
--     = Fast
--     | Good
--     | Strong

-- data KeySpec
--     = KeySpec
--     { keySpecMinimum :: Int
--     , keySpecMaximum :: Int
--     , keySpecModulo  :: Int
--     }

-- data KeyPrefs
--     = KeyPrefs
--     { keyPrefsMinKeyLength :: Int
--     , keyprefsMaxKeyLength :: Int
--     }

-- defaultKeyPrefs = KeyPrefs
--     { keyPrefsMinKeyLength = 16
--     , keyprefsMaxKeyLength = 4096
--     }

-- selectKeyLength :: Security -> KeyPrefs -> KeySpec -> Int
-- selectKeyLength Fast    = selectFastKeyLength
-- selectKeyLength Good    = selectGoodKeyLength
-- selectKeyLength Strong  = selectStrongKeyLength

-- selectFastKeyLength :: KeyPrefs -> KeySpec -> Int
-- selectFastKeyLength (KeyPrefs pmin _) (KeySpec kmin kmax 1) = max kmin (min pmin kmax)
-- selectFastKeyLength (KeyPrefs pmin _) (KeySpec kmin kmax kmod) = undefined

-- selectGoodKeyLength :: KeyPrefs -> KeySpec -> Int
-- selectGoodKeyLength (KeyPrefs pmin pmax) (KeySpec kmin kmax kmod) = undefined

-- selectStrongKeyLength :: KeyPrefs -> KeySpec -> Int
-- selectStrongKeyLength (KeyPrefs pmin pmax) (KeySpec kmin kmax kmod) = undefined

alignMod :: Integral a => a -> a -> a
alignMod a 1 = a
alignMod a b = case quotRem a b of
    (_,0) -> a
    (q,r) -> b * (if r < div b 2 then q else q + 1)

floorMod :: Integral a => a -> a -> a
floorMod a 1 = a
floorMod a b = case quotRem a b of
    (_,0) -> a
    (q,_) -> b * q

ceilMod :: Integral a => a -> a -> a
ceilMod a 1 = a
ceilMod a b = case quotRem a b of
    (_,0) -> a
    (q,_) -> b * (q + 1)
