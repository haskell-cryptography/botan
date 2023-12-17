{-|
Module      : Botan.Bindings.Version
Description : Botan version info
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI
           , CPP
           , DeriveDataTypeable
           , DerivingStrategies
           , GeneralizedNewtypeDeriving
           , RoleAnnotations
           , StandaloneKindSignatures
           #-}

module Botan.CAPI where

import           Prelude

import           Control.Monad

import           Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Internal as ByteString
import           Data.Coerce
import           Data.Word

-- Bindings

#if MIN_VERSION_base (4,18,0)
import           Foreign.C.ConstPtr
#else
import           Data.Data
import           Data.Kind
#endif

import           Foreign.C.Types
import           Foreign.Ptr

-- Low-level

import           Foreign.C.String
import           Foreign.ForeignPtr
import           Foreign.Marshal.Alloc
import           Foreign.Storable

-- ConstPtr shim

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

-- Bindings

data {-# CTYPE "botan/ffi.h" "struct botan_rng_struct" #-} BotanRNGStruct

newtype {-# CTYPE "botan/ffi.h" "botan_rng_t" #-} BotanRNG
    = MkBotanRNG { runBotanRNG :: Ptr BotanRNGStruct }
        deriving newtype (Eq, Ord, Storable)

-- NOTE: The benefits of these shenanigans are that we actually get to use
--  BotanRNG in the API with it automatically converting

foreign import capi safe "botan/ffi.h &botan_rng_destroy"
  botan_rng_destroy
    :: FinalizerPtr BotanRNGStruct

foreign import capi safe "botan/ffi.h botan_rng_init"
  botan_rng_init
    :: Ptr BotanRNG       -- ^ rng
    -> ConstPtr CChar   -- ^ rng_type
    -> IO CInt

foreign import capi safe "botan/ffi.h botan_rng_get"
  botan_rng_get
    :: BotanRNG -- ^ rng
    -> Ptr Word8   -- ^ out
    -> CSize       -- ^ out_len
    -> IO CInt

foreign import capi safe "botan/ffi.h botan_rng_add_entropy"
  botan_rng_add_entropy
    :: BotanRNG     -- ^ rng
    -> ConstPtr Word8  -- ^ entropy
    -> CSize           -- ^ entropy_len
    -> IO CInt

-- Low-level

mkBindings
    ::  (Storable botan)
    =>  (Ptr struct -> botan)
    ->  (botan -> Ptr struct)
    ->  (ForeignPtr struct -> object)
    ->  (object -> ForeignPtr struct)
    ->  FinalizerPtr struct
    ->  (   botan -> IO object
        ,   object -> (botan -> IO a) -> IO a
        ,   object -> IO ()
        ,   (Ptr botan -> IO CInt) -> IO object
        )
mkBindings mkBotan runBotan mkForeign runForeign destroy = bindings where
    bindings = (newObject, withObject, objectDestroy, createObject)
    newObject botan = do
        foreignPtr <- newForeignPtr destroy (runBotan botan)
        return $ mkForeign foreignPtr
    withObject object f = withForeignPtr (runForeign object) (f . mkBotan)
    objectDestroy object = finalizeForeignPtr (runForeign object)
    createObject init = alloca $ \ outPtr -> do
        throwErrorIfNegative_ $ init outPtr
        out <- peek outPtr
        newObject out

newtype RNG = MkRNG { getRNGForeignPtr :: ForeignPtr BotanRNGStruct }

newRNG      :: BotanRNG -> IO RNG
withRNG     :: RNG -> (BotanRNG -> IO a) -> IO a
rngDestroy  :: RNG -> IO ()
createRNG   :: (Ptr BotanRNG -> IO CInt) -> IO RNG
(newRNG, withRNG, rngDestroy, createRNG)
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

throwErrorIfNegative_ :: IO CInt -> IO ()
throwErrorIfNegative_ act = do
    e <- act
    when (e < 0) $ error $ "Botan: " ++ show e

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