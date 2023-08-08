module Botan.Prelude
( module Prelude
, module Control.Monad
, module Control.Exception
, module Control.DeepSeq
, module Data.ByteString
, module Data.Text
, module Data.Word
, module System.IO
, module System.IO.Unsafe
, module GHC.Stack
, Ciphertext(..)
, Plaintext(..)
, unsafePerformIO1
, unsafePerformIO2
, unsafePerformIO3
, unsafePerformIO4
-- , strictReturn
-- , strictly
-- , strictPerformIO
-- , strictPerformIO1
-- , strictPerformIO2
-- , strictPerformIO3
, showText
, showBytes
--
, module Data.IORef
, track
) where

-- Re-exported modules

import Prelude

import Control.Monad
import Control.Exception
import Control.DeepSeq

import Data.ByteString (ByteString)
import Data.Text (Text)

import Data.Word

import System.IO
import System.IO.Unsafe

import GHC.Stack

import Data.IORef

-- Internal imports

import qualified Data.ByteString.Char8 as Char8
import qualified Data.ByteString as Bytes
import qualified Data.Text as Text

--

type Ciphertext = ByteString

type Plaintext = ByteString

--

unsafePerformIO1 :: (a -> IO b) -> a -> b
unsafePerformIO1 = (unsafePerformIO .)
{-# INLINE unsafePerformIO1 #-}

unsafePerformIO2 :: (a -> b -> IO c) -> a -> b -> c
unsafePerformIO2 = (unsafePerformIO1 .)
{-# INLINE unsafePerformIO2 #-}

unsafePerformIO3 :: (a -> b -> c -> IO d) -> a -> b -> c -> d
unsafePerformIO3 = (unsafePerformIO2 .)
{-# INLINE unsafePerformIO3 #-}

unsafePerformIO4 :: (a -> b -> c -> d -> IO e) -> a -> b -> c -> d -> e
unsafePerformIO4 = (unsafePerformIO3 .)
{-# INLINE unsafePerformIO4 #-}

-- NOTE: These strict and deeply strict functions are inspired by:
--  https://hackage.haskell.org/package/strict-io-0.2.2/docs/src/System-IO-Strict-Internals.html
-- Without the SIO monad, they are of dubious / unknown value at the moment.
-- Strictness may otherwise be achieved through $! and $!!

-- strictReturn :: (Monad m, NFData a) => a -> m a
-- strictReturn a = a `seq` return a
-- {-# INLINE strictReturn #-}

-- strictly :: (NFData a) => IO a -> IO a
-- strictly m = m >>= strictReturn
-- {-# INLINE strictly #-}

-- strictPerformIO :: (NFData a) => IO a -> a
-- strictPerformIO = unsafePerformIO . strictly
-- {-# INLINE strictPerformIO #-}

-- strictPerformIO1 :: (NFData b) => (a -> IO b) -> a -> b
-- strictPerformIO1 = (strictPerformIO .)
-- {-# INLINE strictPerformIO1 #-}

-- strictPerformIO2 :: (NFData c) => (a -> b -> IO c) -> a -> b -> c
-- strictPerformIO2 = (strictPerformIO1 .)
-- {-# INLINE strictPerformIO2 #-}

-- strictPerformIO3 :: (NFData d) => (a -> b -> c -> IO d) -> a -> b -> c -> d
-- strictPerformIO3 = (strictPerformIO2 .)
-- {-# INLINE strictPerformIO3 #-}

-- deepReturn :: (Monad m, NFData a) => a -> m a
-- deepReturn a = rnf a `seq` return a
-- {-# INLINE deepReturn #-}

-- deeply :: (NFData a) => IO a -> IO a
-- deeply m = m >>= deepReturn
-- {-# INLINE deeply #-}

-- deepPerformIO :: (NFData a) => IO a -> a
-- deepPerformIO = unsafePerformIO . deeply
-- {-# INLINE deepPerformIO #-}

-- deepPerformIO1 :: (NFData b) => (a -> IO b) -> a -> b
-- deepPerformIO1 = (deepPerformIO .)
-- {-# INLINE deepPerformIO1 #-}

-- deepPerformIO2 :: (NFData c) => (a -> b -> IO c) -> a -> b -> c
-- deepPerformIO2 = (deepPerformIO1 .)
-- {-# INLINE deepPerformIO2 #-}

-- deepPerformIO3 :: (NFData d) => (a -> b -> c -> IO d) -> a -> b -> c -> d
-- deepPerformIO3 = (deepPerformIO2 .)
-- {-# INLINE deepPerformIO3 #-}

showText :: (Show a) => a -> Text
showText = Text.pack . show

showBytes :: (Show a) => a -> ByteString
showBytes = Char8.pack . show

-- From: https://stackoverflow.com/questions/28687384/test-if-a-value-has-been-evaluated-to-weak-head-normal-form
-- import Data.IORef
-- import System.IO.Unsafe
track :: a -> IO (a, IO Bool)
track val = do
    ref <- newIORef False
    return
        ( unsafePerformIO (writeIORef ref True) `seq` val
        , readIORef ref
        )
