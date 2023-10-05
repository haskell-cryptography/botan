module Botan.KeyWrap where

import qualified Botan.Low.KeyWrap as Low

import Botan.BlockCipher
import Botan.Prelude

nistKeyWrapEncode :: BlockCipher -> Int -> ByteString -> ByteString -> IO ByteString
nistKeyWrapEncode = Low.nistKeyWrapEncode . blockCipherName

nistKeyWrapDecode :: BlockCipher -> Int -> ByteString -> ByteString -> IO ByteString
nistKeyWrapDecode = Low.nistKeyWrapDecode . blockCipherName

-- NOTE: Functions are not well documented, but do work.
-- What documentation that exists says it takes 128-bit ciphers
--  but other ciphers work too in newer mode (padding = 1)
{-
import Data.ByteString
import Botan.Low.BlockCipher
import Botan.Low.KeyWrap
import Botan.Low.RNG
import Botan.Low.Utility
kwbc bc = nistKeyWrapEncode (blockCipherName bc)
key = "Fee fi fo fum! I smell the blood of an Englishman!" :: ByteString
kek <- systemRNGGetIO 32
kwbc AES256 1 key kek >>= flip hexEncode 0
"7511E9B6C7F2969464BD72471638CCA57A332944C856261385E2C8A37AB5012FAB708171FB5198D710A5E38F868AB80F2D6FE83E41E9A3260E4058BDC99C613D"
-}