module Botan.KeySpec where

import           Botan.Prelude

import           Botan.RNG

import           Botan.Types.Class

-- Keep prior stuff working for the moment

type KeySpec = SizeSpecifier ()

keySpec :: Int -> Int -> Int -> KeySpec
keySpec = sizeSpec

monoMapKeySpec :: (Int -> Int) -> KeySpec -> KeySpec
monoMapKeySpec = monoMapSizes

minKeySize :: KeySpec -> Int
minKeySize = minSize

maxKeySize :: KeySpec -> Int
maxKeySize = maxSize

keySizes :: KeySpec -> [Int]
keySizes = allSizes

validKeySize :: KeySpec -> Int
validKeySize = defaultSize

keySizeIsValid :: Int -> KeySpec -> Bool
keySizeIsValid = flip sizeIsValid

newKeyMaybe :: (MonadRandomIO m) => Int -> KeySpec -> m (Maybe ByteString)
newKeyMaybe = flip newSizedMaybe

newKey :: (MonadRandomIO m) => KeySpec -> m ByteString
newKey = newSized
