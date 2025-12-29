{-# LANGUAGE OverloadedStrings #-}

module Botan.Low.Internal.String (
    (//)
  , (/$)
  ) where

import           Data.String (IsString (..))

infixr 6 //
(//) :: (IsString a, Semigroup a) => a -> a -> a
a // b = a <> "/" <> b

infixr 0 /$
(/$) :: (IsString a, Semigroup a) => a -> a -> a
a /$ b = a <> "(" <> b <> ")"
