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
import Botan.Low.Error

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
    createObject init = mask_ $ alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ init outPtr
        out <- peek outPtr
        newObject out
    createObjects inits = mask_ $ alloca $ \ szPtr -> do
        code <- inits nullPtr szPtr
        case code of
            InsufficientBufferSpace -> do
                sz <- fromIntegral <$> peek szPtr
                allocaArray sz $ \ arrPtr -> do
                    throwBotanIfNegative_ $ inits arrPtr szPtr
                    outs <- peekArray sz arrPtr
                    forM outs newObject
            _ -> throwBotanError code
