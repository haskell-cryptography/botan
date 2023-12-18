{-# LANGUAGE CApiFFI
           , CPP
           #-}

module Botan.Bindings.Prelude
( module Prelude
, module Data.ByteString
, module Data.String
, module Data.Word
, module System.IO
, module Foreign.C.String
, module Foreign.C.Types
, module Foreign.ForeignPtr
, module Foreign.Marshal.Alloc
, module Foreign.Marshal.Array
, module Foreign.Ptr
, module Foreign.Storable
, ConstPtr(..)
) where

import Prelude

import Data.ByteString (ByteString)
import Data.String (IsString(..))
import Data.Word

import System.IO

import Foreign.C.String
import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Marshal.Array
import Foreign.Ptr
import Foreign.Storable


#if MIN_VERSION_base (4,18,0)
import Foreign.C.ConstPtr
#else
import Data.Data
import Data.Kind
#endif

#if !(MIN_VERSION_base (4,18,0))

-- NOTE: Taken from Foreign.C.ConstPtr, more or less
type ConstPtr :: Type -> Type
type role ConstPtr phantom
newtype ConstPtr a = ConstPtr { unConstPtr :: Ptr a }
    deriving stock (Data)
    deriving newtype (Eq, Ord, Storable)

instance Show (ConstPtr a) where
    showsPrec d (ConstPtr p) = showParen (d > 10) $ showString "ConstPtr " . showsPrec 11 p

#endif
