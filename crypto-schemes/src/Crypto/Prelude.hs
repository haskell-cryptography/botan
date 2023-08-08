module Crypto.Prelude
( module Prelude
, module Control.Monad
, module Control.Exception
, module Data.ByteString
, module Data.Text
, module Data.Word
, module System.IO
, module GHC.Stack
, showText
, showBytes
) where

-- Re-exported modules

import Prelude

import Control.Monad
import Control.Exception

import Data.ByteString (ByteString)
import Data.Text (Text)

import Data.Word

import System.IO
import System.IO.Unsafe

import GHC.Stack

-- Internal imports

import qualified Data.ByteString.Char8 as Char8
import qualified Data.Text as Text

showText :: (Show a) => a -> Text
showText = Text.pack . show

showBytes :: (Show a) => a -> ByteString
showBytes = Char8.pack . show
