module Botan.Make where

import Prelude

import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString

import Data.Word

import System.IO

import Foreign.C.String
import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable

import Botan.Error
import Botan.Prelude

{-
Basic botan type template
-}

{-
data TypStruct
type TypPtr = Ptr (TypStruct)

newtype Typ = MkTyp { getTypForeignPtr :: ForeignPtr (TypStruct) }

withTypPtr :: Typ -> (TypPtr -> IO a) -> IO a
withTypPtr = withForeignPtr . getTypForeignPtr

-- Common / optional associated types
type TypName = ByteString
type TypFlags = Word32
-}

{-
Helper types
-}

type WithPtr typ ptr = (forall a . typ -> (ptr -> IO a) -> IO a)

{-
Initializers and destroyers
-}

type Constr struct typ = ForeignPtr struct -> typ

type Initializer struct = Ptr (Ptr struct) -> IO BotanErrorCode
type Initializer_name struct = Ptr (Ptr struct) -> CString -> IO BotanErrorCode
type Initializer_name_flags struct = Ptr (Ptr struct) -> CString -> Word32 -> IO BotanErrorCode

type Destructor struct = FinalizerPtr struct

mkInit
    :: Constr struct typ
    -> Initializer struct
    -> Destructor struct
    -> IO typ
mkInit constr init destroy = do
    alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ init outPtr
        out <- peek outPtr
        foreignPtr <- newForeignPtr destroy out
        return $ constr foreignPtr

mkInit_name
    :: Constr struct typ
    -> Initializer_name struct
    -> Destructor struct
    -> ByteString -> IO typ
mkInit_name constr init destroy name = do
    alloca $ \ outPtr -> do
        asCString name $ \ namePtr -> do 
            throwBotanIfNegative_ $ init outPtr namePtr
        out <- peek outPtr
        foreignPtr <- newForeignPtr destroy out
        return $ constr foreignPtr

mkInit_name_flags
    :: Constr struct typ
    -> Initializer_name_flags struct
    -> Destructor struct
    -> ByteString -> Word32 -> IO typ
mkInit_name_flags constr init destroy name flags = do
    alloca $ \ outPtr -> do
        asCString name $ \ namePtr -> do 
            throwBotanIfNegative_ $ init outPtr namePtr flags
        out <- peek outPtr
        foreignPtr <- newForeignPtr destroy out
        return $ constr foreignPtr

