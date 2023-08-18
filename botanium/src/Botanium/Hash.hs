module Botanium.Hash
( HashDigest(..)
, hash
, ShorthashKey(..)
, ShorthashDigest(..)
, newShorthashKey
, shorthash
, GenerichashKey(..)
, GenerichashDigest(..)
, GenerichashOutLen(..)
, newGenerichashKey
, generichashOutLen
, generichash
) where

import Botanium.Prelude

data HashDigest

hash :: Message -> HashDigest
hash = undefined

data ShorthashKey
data ShorthashDigest

newShorthashKey :: IO ShorthashKey
newShorthashKey = undefined

shorthash :: ShorthashKey -> Message -> ShorthashDigest
shorthash = undefined

data GenerichashKey
data GenerichashDigest

data GenerichashOutLen

newGenerichashKey :: Int -> IO (Maybe GenerichashKey)
newGenerichashKey = undefined

generichashOutLen :: Int -> Maybe GenerichashOutLen
generichashOutLen = undefined

generichash :: GenerichashKey -> Message -> GenerichashOutLen -> HashDigest
generichash = undefined
