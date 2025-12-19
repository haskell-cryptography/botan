{-|
Module      : Botan.Low.Remake
Description : Low-level binding generators
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

Generate low-level bindings automatically
-}

module Botan.Low.Remake (
    mkBindings
  , mkCreateObject
  , mkCreateObjectWith
  , mkCreateObjectCString
  , mkCreateObjectCString1
  , mkCreateObjectCBytes
  , mkCreateObjectCBytesLen
  , mkWithObjectAction
  , mkWithObjectGetterCBytesLen1
  , mkWithObjectSetterCBytesLen
  ) where

import           Botan.Low.Error.Internal
import           Botan.Low.Make (allocBytesQuerying)
import           Botan.Low.Prelude hiding (init)

mkBindings
    ::  (Storable botan)
    =>  (Ptr struct -> botan)                                   -- mkBotan
    ->  (botan -> Ptr struct)                                   -- runBotan
    ->  (ForeignPtr struct -> object)                           -- mkForeign
    ->  (object -> ForeignPtr struct)                           -- runForeign
    ->  FinalizerPtr struct                                     -- destroy / finalizer
    ->  (   object -> (botan -> IO a) -> IO a                   -- withObject
        ,   object -> IO ()                                     -- destroyObject
        ,   (Ptr botan -> IO CInt) -> IO object                 -- createObject
        )
mkBindings mkBotan runBotan mkForeign runForeign destroy = bindings where
    bindings = (withObject, objectDestroy, createObject)
    newObject botan = do
        foreignPtr <- newForeignPtr destroy (runBotan botan)
        return $ mkForeign foreignPtr
    withObject object f = withForeignPtr (runForeign object) (f . mkBotan)
    objectDestroy object = finalizeForeignPtr (runForeign object)
    -- NOTE: This ^ is really a Haskell finalizer
    --  We could include the actual C++ botan destructor instead of indirectly omitting it:
    --      objectFinalize obj = new stable foreign ptr ... destroy
    --      objectDestroy obj = withObject obj destroy
    createObject = mkCreateObject newObject

{-
Create functions
-}

-- TODO: Rename mkCreate
mkCreateObject
    :: (Storable botan)
    => (botan -> IO object)
    -> (Ptr botan-> IO CInt)
    -> IO object
mkCreateObject newObject init = mask_ $ alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ init outPtr
        out <- peek outPtr
        newObject out

mkCreateObjectWith
    :: ((Ptr botan -> IO CInt) -> IO object)
    -> (arg -> (carg -> IO object) -> IO object)
    -> (Ptr botan -> carg -> IO CInt)
    -> arg
    -> IO object
mkCreateObjectWith createObject withArg init arg = withArg arg $ \ carg -> do
    createObject $ \ outPtr -> init outPtr carg

-- TODO: Rename mkCreateCString
mkCreateObjectCString
    :: ((Ptr botan -> IO CInt) -> IO object)
    -> (Ptr botan -> ConstPtr CChar -> IO CInt)
    -> ByteString
    -> IO object
-- mkCreateObjectCString createObject init cstr = withCString cstr $ \ namePtr -> do
--     createObject $ \ outPtr -> init outPtr (ConstPtr namePtr)
mkCreateObjectCString createObject = mkCreateObjectWith createObject withConstCString

-- TODO: Rename mkCreateCString1
mkCreateObjectCString1
    :: ((Ptr botan -> IO CInt) -> IO object)
    -> (Ptr botan -> ConstPtr CChar -> a -> IO CInt)
    -> ByteString
    -> a
    -> IO object
mkCreateObjectCString1 createObject init str a = withCString str $ \ cstr -> do
    createObject $ \ outPtr -> init outPtr (ConstPtr cstr) a

-- | You probably want mkCreateObjectCBytesLen; this is for functions that
-- expect a bytestring of known exact length.
mkCreateObjectCBytes
    :: ((Ptr botan -> IO CInt) -> IO object)
    -> (Ptr botan -> ConstPtr Word8 -> IO CInt)
    -> ByteString
    -> IO object
-- TODO: Rename mkCreateCBytes
mkCreateObjectCBytes createObject init bytes = withCBytes bytes $ \ cbytes -> do
    createObject $ \ out -> init out (ConstPtr cbytes)

-- TODO: Rename mkCreateCBytesLen
mkCreateObjectCBytesLen
    :: ((Ptr botan -> IO CInt) -> IO object)
    -> (Ptr botan -> ConstPtr Word8 -> CSize -> IO CInt)
    -> ByteString
    -> IO object
mkCreateObjectCBytesLen createObject init bytes = withCBytesLen bytes $ \ (cbytes,len) -> do
    createObject $ \ out -> init out (ConstPtr cbytes) (fromIntegral len)

{-
Action
-}

-- TODO: Rename mkAction
mkWithObjectAction
    :: (forall a . object -> (botan -> IO a) -> IO a)
    -> (botan -> IO CInt)
    -> object
    -> IO ()
mkWithObjectAction withObject action obj = withObject obj $ \ cobj -> do
    throwBotanIfNegative_ $ action cobj

{-
Getters
-}

-- TODO: getter parameter order may be improper - switch up if problematic
mkWithObjectGetterCBytesLen1
    :: (forall b . object -> (botan -> IO b) -> IO b)
    -> (botan -> a -> Ptr Word8 -> Ptr CSize -> IO CInt)
    -> object
    -> a
    -> IO ByteString
mkWithObjectGetterCBytesLen1 withObject getter obj a = withObject obj $ \ cobj -> do
    allocBytesQuerying $ \ outPtr outLen -> getter
        cobj
        a
        outPtr
        outLen

{-
Setters
-}

-- Replaces mkSetBytesLen
-- TODO: Rename mkSetterCBytesLen
mkWithObjectSetterCBytesLen
    :: (forall a . object -> (botan -> IO a) -> IO a)
    -> (botan -> ConstPtr Word8 -> CSize -> IO CInt)
    -> object
    -> ByteString
    -> IO ()
mkWithObjectSetterCBytesLen withObject setter obj bytes = withObject obj $ \ cobj -> do
    withCBytesLen bytes $ \ (cbytes,len) -> do
        throwBotanIfNegative_ $ setter cobj (ConstPtr cbytes) (fromIntegral len)
