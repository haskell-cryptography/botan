module Test.Util.ByteString (
    chars
  , splitBlocks
  ) where

import           Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import qualified Data.ByteString.Char8 as BSC

chars :: ByteString -> [Char]
chars = BSC.unpack

splitBlocks :: Int -> ByteString -> [ByteString]
splitBlocks blockSize = go
  where
    go bytes = case BS.splitAt blockSize bytes of
        (block,rest)
          | BS.null rest -> [block]
          | otherwise    -> block : go rest
