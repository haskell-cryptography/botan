module Botan.Make where

import Prelude

import Control.Exception
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
type TypPtr = Ptr TypStruct

newtype Typ = MkTyp { getTypForeignPtr :: ForeignPtr TypStruct }

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
-- NOTE: WithPtr typ ptr ~ typ -> Codensity IO ptr 
--  where: type Codensity m a = forall b . (a -> m b) -> m b
-- TODO: Refine further per:
--  https://discourse.haskell.org/t/questions-about-ffi-foreignptr-and-opaque-types/6914/21?u=apothecalabs

{-
Initializers and destroyers
-}

type Constr struct typ = ForeignPtr struct -> typ

type Initializer struct = Ptr (Ptr struct) -> IO BotanErrorCode
type Initializer_name struct = Ptr (Ptr struct) -> CString -> IO BotanErrorCode
type Initializer_name_flags struct = Ptr (Ptr struct) -> CString -> Word32 -> IO BotanErrorCode
type Initializer_bytes struct = Ptr (Ptr struct) -> Ptr Word8 -> IO BotanErrorCode
type Initializer_bytes_len struct = Ptr (Ptr struct) -> Ptr Word8 -> CSize -> IO BotanErrorCode

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

-- NOTE: Assumes that length is known
mkInit_bytes
    :: Constr struct typ
    -> Initializer_bytes struct
    -> Destructor struct
    -> ByteString -> IO typ
mkInit_bytes constr init destroy bytes = do
    asBytes bytes $ \ bytesPtr -> do 
        alloca $ \ outPtr -> do
            throwBotanIfNegative_ $ init outPtr bytesPtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr destroy out
            return $ constr foreignPtr

mkInit_bytes_len
    :: Constr struct typ
    -> Initializer_bytes_len struct
    -> Destructor struct
    -> ByteString -> IO typ
mkInit_bytes_len constr init destroy bytes = do
    asBytesLen bytes $ \ bytesPtr bytesLen -> do 
        alloca $ \ outPtr -> do
            throwBotanIfNegative_ $ init outPtr bytesPtr bytesLen
            out <- peek outPtr
            foreignPtr <- newForeignPtr destroy out
            return $ constr foreignPtr

-- Initializing with another botan object
-- TODO: Use this in already-implemented functions as appropriate

type Initializer_with struct withptr = Ptr (Ptr struct) -> withptr -> IO BotanErrorCode

mkInit_with
    :: Constr struct typ
    -> Initializer_with struct withptr
    -> Destructor struct
    -> (withtyp -> (withptr -> IO typ) -> IO typ)
    -> withtyp -> IO typ
mkInit_with constr init destroy withTypPtr typ = alloca $ \ outPtr -> do
    withTypPtr typ $ \ typPtr -> do
        throwBotanIfNegative_ $ init outPtr typPtr
        out <- peek outPtr
        foreignPtr <- newForeignPtr destroy out
        return $ constr foreignPtr

{-
Non-effectful queries
-}

type GetName ptr = ptr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

mkGetName
    :: WithPtr typ ptr
    -> GetName ptr
    -> typ -> IO ByteString
mkGetName withPtr get typ = withPtr typ $ \ typPtr -> do
    -- TODO: Take advantage of allocBytesQuerying
    -- TODO: use ByteString.Internal.createAndTrim?
    -- NOTE: This uses copy to mimic ByteArray.take (which copies!) so we can drop the rest of the bytestring
    alloca $ \ szPtr -> do
        bytes <- allocBytes 64 $ \ bytesPtr -> do
            throwBotanIfNegative_ $ get typPtr bytesPtr szPtr
        sz <- peek szPtr
        return $ ByteString.copy $ ByteString.take (fromIntegral sz) bytes

type GetInt ptr = ptr -> Ptr CInt -> IO BotanErrorCode

mkGetInt
    :: WithPtr typ ptr
    -> GetInt ptr
    -> typ -> IO Int
mkGetInt withPtr get typ = withPtr typ $ \ typPtr -> do
    alloca $ \ szPtr -> do
        throwBotanIfNegative_ $ get typPtr szPtr
        fromIntegral <$> peek szPtr

type GetSize ptr = ptr -> Ptr CSize -> IO BotanErrorCode
type GetSize_csize ptr = ptr -> CSize -> Ptr CSize -> IO BotanErrorCode
type GetSizes2 ptr = ptr -> Ptr CSize -> Ptr CSize -> IO BotanErrorCode
type GetSizes3 ptr = ptr -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO BotanErrorCode

mkGetSize
    :: WithPtr typ ptr
    -> GetSize ptr
    -> typ -> IO Int
mkGetSize withPtr get typ = withPtr typ $ \ typPtr -> do
    alloca $ \ szPtr -> do
        throwBotanIfNegative_ $ get typPtr szPtr
        fromIntegral <$> peek szPtr

mkGetSize_csize
    :: WithPtr typ ptr
    -> GetSize_csize ptr
    -> typ -> Int -> IO Int
mkGetSize_csize withPtr get typ forSz = withPtr typ $ \ typPtr -> do
    alloca $ \ szPtr -> do
        throwBotanIfNegative_ $ get typPtr (fromIntegral forSz) szPtr
        fromIntegral <$> peek szPtr

mkGetSizes2
    :: WithPtr typ ptr
    -> GetSizes2 ptr
    -> typ -> IO (Int,Int)
mkGetSizes2 withPtr get typ = withPtr typ $ \ typPtr -> do
    alloca $ \ szPtrA -> alloca $ \ szPtrB -> do
        throwBotanIfNegative_ $ get typPtr szPtrA szPtrB
        szA <- fromIntegral <$> peek szPtrA
        szB <- fromIntegral <$> peek szPtrB
        return (szA,szB)

mkGetSizes3
    :: WithPtr typ ptr
    -> GetSizes3 ptr
    -> typ -> IO (Int,Int,Int)
mkGetSizes3 withPtr get typ = withPtr typ $ \ typPtr -> do
    alloca $ \ szPtrA -> alloca $ \ szPtrB -> alloca $ \ szPtrC -> do
        throwBotanIfNegative_ $ get typPtr szPtrA szPtrB szPtrC
        szA <- fromIntegral <$> peek szPtrA
        szB <- fromIntegral <$> peek szPtrB
        szC <- fromIntegral <$> peek szPtrC
        return (szA,szB,szC)

-- type GetBytes ptr = ptr -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- NOTE: Get...Code nomenclature signifies that we get the desired return value
--  from the error code error code, eg they use something other than throwBotanIfNegative_
--      


type GetSuccessCode ptr = ptr -> IO BotanErrorCode
type GetSuccessCode_csize ptr = ptr -> CSize -> IO BotanErrorCode

mkGetSuccessCode
    :: WithPtr typ ptr
    -> GetSuccessCode ptr
    -> typ -> IO Bool
mkGetSuccessCode withPtr get typ = withPtr typ $ \ typPtr -> do
    throwBotanCatchingSuccess $ get typPtr

mkGetSuccessCode_csize
    :: WithPtr typ ptr
    -> GetSuccessCode_csize ptr
    -> typ -> Int -> IO Bool
mkGetSuccessCode_csize withPtr get typ sz = withPtr typ $ \ typPtr -> do
    throwBotanCatchingSuccess $ get typPtr (fromIntegral sz)


type GetBoolCode ptr = ptr -> IO BotanErrorCode
type GetBoolCode_csize ptr = ptr -> CSize -> IO BotanErrorCode

mkGetBoolCode
    :: WithPtr typ ptr
    -> GetBoolCode ptr
    -> typ -> IO Bool
mkGetBoolCode withPtr get typ = withPtr typ $ \ typPtr -> do
    throwBotanCatchingBool $ get typPtr

mkGetBoolCode_csize
    :: WithPtr typ ptr
    -> GetBoolCode_csize ptr
    -> typ -> Int -> IO Bool
mkGetBoolCode_csize withPtr get typ sz = withPtr typ $ \ typPtr -> do
    throwBotanCatchingBool $ get typPtr (fromIntegral sz)

type GetIntCode ptr = ptr -> IO BotanErrorCode
type GetIntCode_csize ptr = ptr -> CSize -> IO BotanErrorCode

mkGetIntCode
    :: WithPtr typ ptr
    -> GetIntCode ptr
    -> typ -> IO Int
mkGetIntCode withPtr get typ = withPtr typ $ \ typPtr -> do
    throwBotanCatchingInt $ get typPtr

mkGetIntCode_csize
    :: WithPtr typ ptr
    -> GetIntCode_csize ptr
    -> typ -> CSize -> IO Int
mkGetIntCode_csize withPtr get typ sz = withPtr typ $ \ typPtr -> do
    throwBotanCatchingInt $ get typPtr sz

{-
Effectful actions
-}

type Action ptr = ptr -> IO BotanErrorCode
mkAction
    :: WithPtr typ ptr
    -> Action ptr
    -> typ -> IO ()
mkAction withPtr action typ = withPtr typ $ \ typPtr -> do
    throwBotanIfNegative_ $ action typPtr

type SetCSize ptr = ptr -> CSize -> IO BotanErrorCode
type SetCInt ptr = ptr -> CInt -> IO BotanErrorCode

mkSetCSize
    :: WithPtr typ ptr
    -> SetCSize ptr
    -> typ -> Int -> IO ()
mkSetCSize withPtr set typ sz = withPtr typ $ \ typPtr -> do
    throwBotanIfNegative_ $ set typPtr (fromIntegral sz)

mkSetCInt
    :: WithPtr typ ptr
    -> SetCInt ptr
    -> typ -> Int -> IO ()
mkSetCInt withPtr set typ sz = withPtr typ $ \ typPtr -> do
    throwBotanIfNegative_ $ set typPtr (fromIntegral sz)

type SetCString ptr = ptr -> CString -> IO BotanErrorCode
type SetCString_csize ptr = ptr -> CString -> CSize -> IO BotanErrorCode

mkSetCString
    :: WithPtr typ ptr
    -> SetCString ptr
    -> typ -> ByteString -> IO ()
mkSetCString withPtr set typ cstring = withPtr typ $ \ typPtr -> do
    asCString cstring $ \ cstringPtr -> do 
        throwBotanIfNegative_ $ set typPtr cstringPtr

mkSetCString_csize
    :: WithPtr typ ptr
    -> SetCString_csize ptr
    -> typ -> ByteString -> Int -> IO ()
mkSetCString_csize withPtr set typ cstring sz = withPtr typ $ \ typPtr -> do
    asCString cstring $ \ cstringPtr -> do 
        throwBotanIfNegative_ $ set typPtr cstringPtr (fromIntegral sz)

type SetBytesLen ptr = ptr -> Ptr Word8 -> CSize -> IO BotanErrorCode

mkSetBytesLen
    :: WithPtr typ ptr
    -> SetBytesLen ptr
    -> typ -> ByteString -> IO ()
mkSetBytesLen withPtr set typ bytes = withPtr typ $ \ typPtr -> do
    asBytesLen bytes $ \ bytesPtr bytesLen -> do 
        throwBotanIfNegative_ $ set typPtr bytesPtr bytesLen

-- EXPERIMENTAL

-- NOTE: This properly takes advantage of szPtr, queries the buffer size - use this elsewhere
-- NOTE: This throws any botan codes other than BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE
allocBytesQuerying :: (Ptr byte -> Ptr CSize -> IO BotanErrorCode) -> IO ByteString
allocBytesQuerying fn = do
    alloca $ \ szPtr -> do
        -- _ <- fn nullPtr szPtr
        -- sz <- fromIntegral <$> peek szPtr
        -- allocBytes sz $ \ outPtr -> throwBotanIfNegative_ $ fn outPtr szPtr
        code <- fn nullPtr szPtr
        case code of
            BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE   -> do
                sz <- fromIntegral <$> peek szPtr
                allocBytes sz $ \ outPtr -> throwBotanIfNegative_ $ fn outPtr szPtr
            _                                           -> do
                throwBotanError code

--  Alternative is to try with an initial size, and catch INSUFFICIENT_BUFFER_SPACE
-- TODO: Tries with an allocated buffer of specific size
-- allogBytesCatchingInsufficientBufferSpace :: Int -> fn -> args -> IO ByteString
-- allogBytesCatchingInsufficientBufferSpace = undefined

-- ALSO EXPERIMENTAL

-- LAZY BUT EFFECTIVE

mkWithTemp :: IO t -> (t -> IO ()) -> (t -> IO a) -> IO a
mkWithTemp = bracket

mkWithTemp1 :: (x -> IO t) -> (t -> IO ()) -> x -> (t -> IO a) -> IO a
mkWithTemp1 init destroy x = bracket (init x) destroy

mkWithTemp2 :: (x -> y -> IO t) -> (t -> IO ()) -> x -> y -> (t -> IO a) -> IO a
mkWithTemp2 init destroy x y = bracket (init x y) destroy

mkWithTemp3 :: (x -> y -> z -> IO t) -> (t -> IO ()) -> x -> y -> z -> (t -> IO a) -> IO a
mkWithTemp3 init destroy x y z = bracket (init x y z) destroy

mkWithTemp4 :: (x -> y -> z -> w -> IO t) -> (t -> IO ()) -> x -> y -> z -> w -> (t -> IO a) -> IO a
mkWithTemp4 init destroy x y z w = bracket (init x y z w) destroy

--

withPtrs :: (forall a . typ -> (ptr -> IO a) -> IO a) -> [typ] -> ([ptr] -> IO b) -> IO b
withPtrs withPtr []         act = act []
withPtrs withPtr (typ:typs) act = withPtr typ $ \ typPtr -> withPtrs withPtr typs (act . (typPtr:))
