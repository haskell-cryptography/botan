module Botanium.Prelude
( module Prelude
, module Data.ByteString
, module Data.Text
, module System.IO
, module System.IO.Unsafe
, Message(..)
) where

import Prelude

import Data.ByteString (ByteString)
import Data.Text (Text)

import System.IO
import System.IO.Unsafe

type Message = ByteString
