module Botan.Prelude
( module Prelude
, module Control.Monad
, module Control.Exception
, module Data.ByteString
, module Data.Text
, module Data.Word
, module System.IO
, module System.IO.Unsafe
, module GHC.Stack
, apply
, apply1
, apply2
, apply3
, unsafePerformIO1
, unsafePerformIO2
, unsafePerformIO3
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

import qualified Data.ByteString.Char8 as Char8
import qualified Data.ByteString as Bytes
import qualified Data.Text as Text

apply :: (a -> b) -> a -> b
apply = ($)

-- NOTE: compose = dot1
apply1 :: (b -> c) -> (a -> b) -> a -> c
apply1 f g a = f $ g a
-- dot1 f g = f . g = apply1 f g

apply2 :: (c -> d) -> (a -> b -> c) -> a -> b -> d
apply2 f g a b = f $ g a b

apply3 :: (d -> e) -> (a -> b -> c -> d) -> a -> b -> c -> e
apply3 f g a b c = f $ g a b c

unsafePerformIO1 :: (a -> IO b) -> a -> b
unsafePerformIO1 = apply1 unsafePerformIO

unsafePerformIO2 :: (a -> b -> IO c) -> a -> b -> c
unsafePerformIO2 = apply2 unsafePerformIO

unsafePerformIO3 :: (a -> b -> c -> IO d) -> a -> b -> c -> d
unsafePerformIO3 = apply3 unsafePerformIO

showText :: (Show a) => a -> Text
showText = Text.pack . show

showBytes :: (Show a) => a -> ByteString
showBytes = Char8.pack . show
