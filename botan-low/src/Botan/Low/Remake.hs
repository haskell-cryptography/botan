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

module Botan.Low.Remake
( mkBindings
, mkCreateObject
, mkCreateObjects
, mkCreateObjectWith
, mkCreateObjectCString
, mkCreateObjectCString1
, mkCreateObjectCBytes
, mkCreateObjectCBytesLen
, mkCreateObjectCBytesLen1
, mkWithObjectAction
, mkWithObjectGetterCBytesLen
, mkWithObjectGetterCBytesLen1
, mkWithObjectSetterCString
, mkWithObjectSetterCBytesLen
) where

import           Botan.Low.Error
import           Botan.Low.Prelude

import qualified Data.ByteString.Internal as ByteString

import           Botan.Low.Make (allocBytesQuerying)

-- ByteString Helpers

-- NOTE: Was allocBytes
createByteString :: Int -> (Ptr byte -> IO ()) -> IO ByteString
createByteString sz f = ByteString.create sz (f . castPtr)

-- NOTE: Was allocBytesWith
-- createByteString' :: Int -> (Ptr byte -> IO a) -> IO (a, ByteString)

-- NOTE: Was allocBytesQuerying
-- createByteStringQuerying :: (Ptr byte -> Ptr CSize -> IO CInt) -> IO ByteString
-- createByteStringQuerying fn = do
--     alloca $ \ szPtr -> do
--         -- TODO: Maybe poke szPtr 0 for extra safety in cas its not initially zero
--         code <- fn nullPtr szPtr
--         case code of
--             InsufficientBufferSpace -> do
--                 sz <- fromIntegral <$> peek szPtr
--                 allocBytes sz $ \ outPtr -> throwBotanIfNegative_ $ fn outPtr szPtr
--             _                       -> do
--                 throwBotanError code

-- NOTE: Was allocBytesQueryingCString
-- NOTE: Does not check length of taken string, vulnerable to null byte injection
-- createByteStringQueryingCString :: (Ptr byte -> Ptr CSize -> IO CInt) -> IO ByteString
-- createByteStringQueryingCString action = do
--     cstring <- allocBytesQuerying action
--     return $!! ByteString.takeWhile (/= 0) cstring

--

-- type NewObject      object botan = botan -> IO object
-- type WithObject     object botan = (forall a . object -> (botan -> IO a) -> IO a)
-- type DestroyObject  object botan = object -> IO ()
-- type CreateObject   object botan = (Ptr botan -> IO CInt) -> IO object
-- type CreateObjects  object botan = (Ptr botan -> Ptr CSize -> IO CInt) -> IO object

-- Example usage
{-
newtype RNG = MkRNG { getRNGForeignPtr :: ForeignPtr BotanRNGStruct }

newRNG      :: BotanRNG -> IO RNG
withRNG     :: RNG -> (BotanRNG -> IO a) -> IO a
rngDestroy  :: RNG -> IO ()
createRNG   :: (Ptr BotanRNG -> IO CInt) -> IO RNG
(newRNG, withRNG, rngDestroy, createRNG, _)
    = mkBindings MkBotanRNG runBotanRNG MkRNG getRNGForeignPtr botan_rng_destroy

rngInit :: RNGType -> IO RNG
rngInit name = asCString name $ \ namePtr -> do
    createRNG $ \ outPtr -> botan_rng_init outPtr (ConstPtr namePtr)
-}
mkBindings
    ::  (Storable botan)
    =>  (Ptr struct -> botan)                                   -- mkBotan
    ->  (botan -> Ptr struct)                                   -- runBotan
    ->  (ForeignPtr struct -> object)                           -- mkForeign
    ->  (object -> ForeignPtr struct)                           -- runForeign
    ->  FinalizerPtr struct                                     -- destroy / finalizer
    ->  (   botan -> IO object                                  -- newObject
        ,   object -> (botan -> IO a) -> IO a                   -- withObject
        ,   object -> IO ()                                     -- destroyObject
        ,   (Ptr botan -> IO CInt) -> IO object                 -- createObject
        ,   (Ptr botan -> Ptr CSize -> IO CInt) -> IO [object]  -- createObjects
        )
mkBindings mkBotan runBotan mkForeign runForeign destroy = bindings where
    bindings = (newObject, withObject, objectDestroy, createObject, createObjects)
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
    createObjects = mkCreateObjects newObject

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

-- TODO: Rename mkCreates
mkCreateObjects
    :: (Storable botan)
    => (botan -> IO object)
    -> (Ptr botan -> Ptr CSize -> IO CInt)
    -> IO [object]
mkCreateObjects newObject inits = mask_ $ alloca $ \ szPtr -> do
        code <- inits nullPtr szPtr
        case code of
            InsufficientBufferSpace -> do
                sz <- fromIntegral <$> peek szPtr
                allocaArray sz $ \ arrPtr -> do
                    throwBotanIfNegative_ $ inits arrPtr szPtr
                    outs <- peekArray sz arrPtr
                    forM outs newObject
            _ -> throwBotanError code

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

mkCreateObjectCBytesLen1
    :: ((Ptr botan -> IO CInt) -> IO object)
    -> (Ptr botan -> ConstPtr Word8 -> CSize -> a -> IO CInt)
    -> ByteString
    -> a
    -> IO object
mkCreateObjectCBytesLen1 createObject init bytes a = withCBytesLen bytes $ \ (cbytes,len) -> do
    createObject $ \ out -> init out (ConstPtr cbytes) (fromIntegral len) a

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
mkWithObjectGetterCBytesLen
    :: (forall a . object -> (botan -> IO a) -> IO a)
    -> (botan -> Ptr Word8 -> Ptr CSize -> IO CInt)
    -> object
    -> IO ByteString
mkWithObjectGetterCBytesLen withObject getter obj = withObject obj $ \ cobj -> do
    allocBytesQuerying $ \ outPtr outLen -> getter
        cobj
        outPtr
        outLen

-- TODO: getter parameter order may be improper - switch up if problematic
mkWithObjectGetterCBytesLen1
    :: (forall a . object -> (botan -> IO a) -> IO a)
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

-- TODO: Rename mkSetterCString
mkWithObjectSetterCString
    :: (forall a . object -> (botan -> IO a) -> IO a)
    -> (botan -> ConstPtr CChar -> IO BotanErrorCode)
    -> object
    -> ByteString
    -> IO ()
mkWithObjectSetterCString withObject setter obj str = withObject obj $ \ cobj -> do
    withCString str $ \ cstr -> do
        throwBotanIfNegative_ $ setter cobj (ConstPtr cstr)

-- Replaces mkSetBytesLen
-- TODO: Rename mkSetterCBytesLen
mkWithObjectSetterCBytesLen
    :: (forall a . object -> (botan -> IO a) -> IO a)
    -> (botan -> ConstPtr Word8 -> CSize -> IO BotanErrorCode)
    -> object
    -> ByteString
    -> IO ()
mkWithObjectSetterCBytesLen withObject setter obj bytes = withObject obj $ \ cobj -> do
    withCBytesLen bytes $ \ (cbytes,len) -> do
        throwBotanIfNegative_ $ setter cobj (ConstPtr cbytes) (fromIntegral len)
