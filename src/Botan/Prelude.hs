module Botan.Prelude where

import Prelude (($!), undefined)

import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString.Unsafe as ByteString

import Data.Text (Text)
import qualified Data.Text.Encoding as Text

import System.IO

import Foreign.C.String

-- Because:
--  https://github.com/haskell/text/issues/239
-- Is still an issue
peekCStringText :: CString -> IO Text
peekCStringText cs = do
  bs <- ByteString.unsafePackCString cs
  return $! Text.decodeUtf8 bs
