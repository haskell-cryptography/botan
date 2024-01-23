module Botan.Hash.Class
( Hash(..)
, Digest(..)
, IncrementalHash(..)
) where

import Botan.Prelude

import Data.Proxy (Proxy(..))

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy

data family Digest hash

class Hash h where
    hash :: ByteString -> Digest h
    default hash :: (IncrementalHash h) => ByteString -> Digest h
    hash = hashLazy . ByteString.fromStrict

class (Hash h) => IncrementalHash h where
    hashLazy :: Lazy.ByteString -> Digest h
