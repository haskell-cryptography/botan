module Botan.ZFEC where

import Botan.Low.ZFEC

import Botan.Prelude

-- TODO:
-- data ZFECShare'
--     = ZFECShare'
--     { zfecShareLength :: Int
--     , zfecShareBytes :: ByteString
--     }

zfecEncode :: Int -> Int -> ByteString -> [ZFECShare]
zfecEncode = unsafePerformIO3 zfecEncodeIO

zfecDecode :: Int -> Int -> [ZFECShare] -> ByteString
zfecDecode = unsafePerformIO3 zfecDecodeIO
