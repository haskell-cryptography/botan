module Crypto.Prelude
( module Prelude
, module Control.Applicative
, module Control.Monad
, module Control.Exception
, module Data.ByteString
, module Data.Text
, module Data.Typeable
, module Data.Word
, module System.IO
, module GHC.Stack
, showText
, showBytes
, Combined(..)
, Message(..)
) where

-- Re-exported modules

import Prelude

import Control.Applicative
import Control.Monad
import Control.Exception

import Data.ByteString (ByteString)
import Data.Text (Text)
import Data.Typeable
import Data.Word

import System.IO
import System.IO.Unsafe

import GHC.Stack

-- Internal imports

import qualified Data.ByteString.Char8 as Char8
import qualified Data.Text as Text
import qualified Type.Reflection as Control

showText :: (Show a) => a -> Text
showText = Text.pack . show

showBytes :: (Show a) => a -> ByteString
showBytes = Char8.pack . show

data SomeKeySpec a = SomeKeySpec
    { keySpecMin :: Int
    , keySpecMax :: Int
    , keySpecMod :: Int
    }

-- data Combined f g alg = MkCombined (f alg) (g alg)

infixr 6 :*:
data Combined f g a = f a :*: g a
-- With PolyKinds like GHC.Generics.(:*:)
-- data Combined (f :: k -> Type) (g :: k -> Type) (a :: k) = f a :*: g a

type Message = ByteString
