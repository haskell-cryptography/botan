module Botan.ZFEC where

import           Botan.Low.ZFEC (ZFECShare (..))
import qualified Botan.Low.ZFEC as Low

import           Botan.Prelude

-- TODO:
-- data ZFECShare'
--     = ZFECShare'
--     { zfecShareLength :: Int
--     , zfecShareBytes :: ByteString
--     }

zfecEncode :: Int -> Int -> ByteString -> [ZFECShare]
zfecEncode = unsafePerformIO3 Low.zfecEncode

zfecDecode :: Int -> Int -> [ZFECShare] -> ByteString
zfecDecode = unsafePerformIO3 Low.zfecDecode
