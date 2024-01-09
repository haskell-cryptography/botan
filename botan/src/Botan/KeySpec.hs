module Botan.KeySpec where

import Botan.Prelude

import Botan.RNG

-- TODO: Maybe move this to crypto-schemes, and depend on it

-- Invariant: If `KeyRange mn mx md` then `mod mn md == 0` and `mod mx md == 0`
--  (or mn and mx congruent modulo md?)
--  Could relax 'min max mod' to 'from to step'
-- Invariant: If `KeySizes sizes` then `not . null $ sizes`
data KeySpec
    = KeyRange Int Int Int   -- ^ min max mod
    -- | KeyRange Int Int          -- ^ min max 1
    | KeySizes [ Int ]          -- ^ one of several sizes
    | KeySize Int               -- ^ exact size
    deriving (Show,Eq)

keySpec :: Int -> Int -> Int -> KeySpec
keySpec mn mx _ | mn == mx = KeySize mn
keySpec mn mx md = KeyRange mn mx md

toKeySpec :: (Int, Int, Int) -> KeySpec
toKeySpec (mn, mx, md) = keySpec mn mx md

minKeySize :: KeySpec -> Int
minKeySize (KeyRange mn _ _) = mn
minKeySize (KeySizes sizes)  = foldr min maxBound sizes
minKeySize (KeySize size)    = size

maxKeySize :: KeySpec -> Int
maxKeySize (KeyRange _ mx _) = mx
maxKeySize (KeySizes sizes)  = foldr max 0 sizes
maxKeySize (KeySize size)    = size

keySizes :: KeySpec -> [Int]
keySizes (KeyRange min max mod) = [ min, min+mod .. max ]
keySizes (KeySizes sizes)       = sizes
keySizes (KeySize size)         = [ size ]

validKeySize :: KeySpec -> Int
validKeySize = maxKeySize

keySizeIsValid :: Int -> KeySpec -> Bool 
keySizeIsValid sz (KeyRange mn mx md) = mn <= sz && sz <= mx && mod sz md == 0
keySizeIsValid sz (KeySizes sizes)    = sz `elem` sizes
keySizeIsValid sz (KeySize size)      = sz == size

newKeyMaybe :: (MonadRandomIO m) => Int -> KeySpec -> m (Maybe ByteString)
newKeyMaybe sz ks = if keySizeIsValid sz ks
    then Just <$> getRandomBytes sz
    else return Nothing

-- NOTE: Uses maxKeySize
newKey :: (MonadRandomIO m) => KeySpec -> m ByteString
newKey ks = getRandomBytes (validKeySize ks)
