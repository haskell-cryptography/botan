{-|
Module      : Botan.Low.Remake
Description : Low-level binding generators
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

Generate low-level bindings automatically
-}

module Botan.Low.Remake
( mkBindings
) where

import Botan.Low.Prelude

import Botan.Bindings.RNG
import Botan.Bindings.Error

import           Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Internal as ByteString

-- TODO: Determine if the use of `mask_` is appropriate
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
    createObject init = mask_ $ alloca $ \ outPtr -> do
        throwErrorIfNegative_ $ init outPtr
        out <- peek outPtr
        newObject out
    createObjects inits = mask_ $ alloca $ \ szPtr -> do
        code <- inits nullPtr szPtr
        case code of
            BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE -> do
                sz <- fromIntegral <$> peek szPtr
                allocaArray sz $ \ arrPtr -> do
                    throwErrorIfNegative_ $ inits arrPtr szPtr
                    -- outPtrs <- peekArray sz arrPtr
                    -- forM outPtrs $ \ outPtr -> do
                    --     out <- peek outPtr
                    --     newObject out
                    outs <- peekArray sz arrPtr
                    forM outs newObject
            _ -> throwErrorCode code

newtype RNG = MkRNG { getRNGForeignPtr :: ForeignPtr BotanRNGStruct }

newRNG      :: BotanRNG -> IO RNG
withRNG     :: RNG -> (BotanRNG -> IO a) -> IO a
rngDestroy  :: RNG -> IO ()
createRNG   :: (Ptr BotanRNG -> IO CInt) -> IO RNG
(newRNG, withRNG, rngDestroy, createRNG, _)
    = mkBindings MkBotanRNG runBotanRNG MkRNG getRNGForeignPtr botan_rng_destroy

rngInit :: ByteString -> IO RNG
rngInit name = do
    ByteString.useAsCString name $ \ namePtr -> do 
        createRNG $ \ outPtr -> botan_rng_init outPtr (ConstPtr namePtr)

rngGet :: Int -> RNG -> IO ByteString
rngGet len rng = do
    withRNG rng $ \ botanRNG -> do
        allocBytes len $ \ bytesPtr -> do
            throwErrorIfNegative_ $ botan_rng_get botanRNG bytesPtr (fromIntegral len)

rngAddEntropy :: RNG -> ByteString -> IO ()
rngAddEntropy rng bytes = do
    withRNG rng $ \ botanRNG -> do
        asBytesLen bytes $ \ bytesPtr bytesLen -> do
            throwErrorIfNegative_ $ botan_rng_add_entropy botanRNG (ConstPtr bytesPtr) bytesLen

-- Helpers, taken from botan-low

throwErrorCode :: Show e => e -> a
throwErrorCode e = error $ "Botan: " ++ show e

throwErrorIfNegative_ :: IO CInt -> IO ()
throwErrorIfNegative_ act = do
    e <- act
    when (e < 0) $ throwErrorCode e

-- TODO: Consistent asFoo, asConstFoo, unsafeFoo, unsafeConstFoo variants

-- type CBytes = Ptr Word8
-- type CBytesLen = (Ptr Word8, Int)

-- asCBytes :: ByteString -> (CBytes -> IO a) -> IO a
-- asCBytesLen :: ByteString -> (CBytesLen -> IO a) -> IO a

-- type ConstCBytes = ConstPtr Word8
-- type ConstCBytesLen = (ConstCBytes, Int)

-- asConstCBytes :: ByteString -> (ConstCBytes -> IO a) -> IO a
-- asConstCBytesLen :: ByteString -> (ConstCBytesLen -> IO a) -> IO a

-- {-
-- type CString = ConstPtr CChar
-- type CStringLen = (ConstCString, Int) 
-- -}

-- asCString :: ByteString -> (CString -> IO a) -> IO a
-- asCStringLen :: ByteString -> (CStringLen -> IO a) -> IO a 

-- type ConstCString = ConstPtr CChar
-- type ConstCStringLen = (ConstCString, Int) 

-- asConstCString :: ByteString -> (ConstCString -> IO a) -> IO a
-- asConstCString bs = asCString bs $ \ ()

-- asConstCStringLen :: ByteString -> (ConstCStringLen -> IO a) -> IO a 
-- asConstCStringLen bs = asCStringLen