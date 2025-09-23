module Botan.KeyWrap (
    KWKey
  , KWPKey
  , KWWrappedKey
  , KWPWrappedKey
  , keyWrap
  , keyUnwrap
  , keyWrapPadded
  , keyUnwrapPadded
  , nistKeyWrapEncode
  , nistKeyWrapDecode
  ) where

import qualified Botan.Low.KeyWrap as Low

import           Botan.BlockCipher
import           Botan.Prelude

-- NOTE: These friendlier names reflect the higher-level C++ interface names
--  as opposed to Botan.Low.KeyWrap and the C FFI names, but drop the 'nist'
--  prefix for even simpler nomenclature

type KWKey = ByteString
type KWPKey = ByteString

type KWWrappedKey = ByteString
type KWPWrappedKey = ByteString

keyWrap :: BlockCipher128 -> KWKey -> BlockCipher128Key -> IO KWWrappedKey
keyWrap bc = nistKeyWrapEncode bc False

keyUnwrap :: BlockCipher128 -> KWWrappedKey -> BlockCipher128Key -> IO KWKey
keyUnwrap bc = nistKeyWrapDecode bc False

keyWrapPadded :: BlockCipher128 -> KWPKey -> BlockCipher128Key -> IO KWPWrappedKey
keyWrapPadded bc = nistKeyWrapEncode bc True

keyUnwrapPadded :: BlockCipher128 -> KWPWrappedKey -> BlockCipher128Key -> IO KWPKey
keyUnwrapPadded bc = nistKeyWrapDecode bc True

-- NOTE: The Botan FFI conflates the unpadded and padded key wrap functions using the
--  int / bool flag to select which.
--  I feel it best to split them, but here we can provide a form consistent with the FFI

nistKeyWrapEncode :: BlockCipher128 -> Bool -> ByteString -> ByteString -> IO ByteString
nistKeyWrapEncode bc padded = Low.nistKeyWrapEncode (blockCipher128Name bc) (fromEnum padded)

nistKeyWrapDecode :: BlockCipher128 -> Bool -> ByteString -> ByteString -> IO ByteString
nistKeyWrapDecode bc padded = Low.nistKeyWrapDecode (blockCipher128Name bc) (fromEnum padded)
