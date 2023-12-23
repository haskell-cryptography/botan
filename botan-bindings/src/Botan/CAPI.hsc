{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI, CPP #-}

module Botan.CAPI where

import Botan.Bindings.Prelude

import           Control.Exception
import           Control.Monad

import           Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Internal as ByteString

-- Bindings

-- import           Foreign.C.Types
-- import           Foreign.Ptr

-- -- Low-level

-- import           Foreign.C.String
-- import           Foreign.ForeignPtr
-- import           Foreign.Marshal.Alloc
-- import           Foreign.Storable

-- NOTE: Necessary to access '#const' for patterns
-- NOTE: Necessitates the use of *.hsc files
#include <botan/ffi.h>
-- Eg:
pattern BOTAN_FFI_SUCCESS
    ,   BOTAN_FFI_INVALID_VERIFIER
    ,   BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE
    ::  (Eq a, Num a) => a
pattern BOTAN_FFI_SUCCESS                         = #const BOTAN_FFI_SUCCESS
pattern BOTAN_FFI_INVALID_VERIFIER                = #const BOTAN_FFI_INVALID_VERIFIER
pattern BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE = #const BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE

-- Bindings

data {-# CTYPE "botan/ffi.h" "struct botan_rng_struct" #-} BotanRNGStruct

newtype {-# CTYPE "botan/ffi.h" "botan_rng_t" #-} BotanRNG
    = MkBotanRNG { runBotanRNG :: Ptr BotanRNGStruct }
        deriving newtype (Eq, Ord, Storable)
-- NOTE: This does not allow us to take advantage of ConstPtr
--  for objects, unlike plain type aliases
--  Would need to promote the mkBindings generator to a full
--  typeclass to allow to / from ForeignPtr <-> Ptr <-> ConstPtr

pattern BOTAN_RANDOM_TYPE_SYSTEM
    ,   BOTAN_RANDOM_TYPE_USER
    ,   BOTAN_RANDOM_TYPE_USER_THREADSAFE
    ,   BOTAN_RANDOM_TYPE_RDRAND
    ::  (Eq a, IsString a) => a
pattern BOTAN_RANDOM_TYPE_SYSTEM            = "system"
pattern BOTAN_RANDOM_TYPE_USER              = "user"
pattern BOTAN_RANDOM_TYPE_USER_THREADSAFE   = "user-threadsafe"
pattern BOTAN_RANDOM_TYPE_RDRAND            = "rdrand"

foreign import capi safe "botan/ffi.h &botan_rng_destroy"
    botan_rng_destroy
        :: FinalizerPtr BotanRNGStruct

-- TODO: Contemplate also directly exposing destructor. eg:
{-
foreign import capi safe "botan/ffi.h botan_rng_destroy"
    botan_rng_destroy
        :: BotanRNG -- ^ rng
        -> IO CInt

foreign import capi safe "botan/ffi.h &botan_rng_destroy"
    botan_rng_finalizer
        :: FinalizerPtr BotanRNGStruct
-}

foreign import capi safe "botan/ffi.h botan_rng_init"
    botan_rng_init
        :: Ptr BotanRNG     -- ^ rng
        -> ConstPtr CChar   -- ^ rng_type
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_rng_get"
    botan_rng_get
        :: BotanRNG     -- ^ rng
        -> Ptr Word8    -- ^ out
        -> CSize        -- ^ out_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_rng_add_entropy"
    botan_rng_add_entropy
        :: BotanRNG         -- ^ rng
        -> ConstPtr Word8   -- ^ entropy
        -> CSize            -- ^ entropy_len
        -> IO CInt

-- Low-level

-- TODO: Determine if the use of `mask_` is appropriate
-- TODO: Potentially
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

allocBytes :: Int -> (Ptr byte -> IO ()) -> IO ByteString
allocBytes sz f = ByteString.create sz (f . castPtr)

asBytesLen :: ByteString -> (Ptr byte -> CSize -> IO a) -> IO a
asBytesLen bs f = ByteString.useAsCStringLen bs (\ (ptr,len) -> f (castPtr ptr) (fromIntegral len))

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