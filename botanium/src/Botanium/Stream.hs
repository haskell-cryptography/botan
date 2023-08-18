module Botanium.Stream
( StreamKey(..)
, StreamNonce(..)
, Stream(..)
, StreamCiphertext(..)
, newStreamKey
, newStreamNonce
, stream
, streamXor
) where

import Botanium.Prelude

data StreamKey

data StreamNonce

data Stream -- Streamtext?

data StreamCiphertext

newStreamKey :: IO StreamKey
newStreamKey = undefined

newStreamNonce :: IO StreamNonce
newStreamNonce = undefined

stream :: StreamKey -> StreamNonce -> Int -> Stream
stream = undefined

streamXor :: StreamKey -> StreamNonce -> Message -> StreamCiphertext
streamXor = undefined
