{-# LANGUAGE CApiFFI                    #-}
{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE DerivingVia                #-}
{-# LANGUAGE EmptyDataDecls             #-}
{-# LANGUAGE ExplicitForAll             #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MagicHash                  #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE PatternSynonyms            #-}
{-# LANGUAGE StandaloneDeriving         #-}
{-# LANGUAGE TypeApplications           #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE TypeOperators              #-}
{-# LANGUAGE UnboxedTuples              #-}
{-# LANGUAGE UndecidableInstances       #-}

module Botan.Bindings.Generated.Botan_3_8_0 where

import qualified C.Expr.HostPlatform as C
import qualified Data.List.NonEmpty
import qualified Data.Primitive.Types
import qualified Data.Proxy
import           Data.Void (Void)
import qualified Foreign as F
import qualified Foreign.C as FC
import qualified GHC.Ptr as Ptr
import qualified GHC.Records
import qualified HsBindgen.Runtime.CEnum
import qualified HsBindgen.Runtime.ConstPtr
import qualified HsBindgen.Runtime.FunPtr
import qualified HsBindgen.Runtime.HasBaseForeignType
import qualified HsBindgen.Runtime.HasCField
import qualified HsBindgen.Runtime.Prelude
import           HsBindgen.Runtime.TypeEquality (TyEq)
import           Prelude (Eq, IO, Int, Ord, Read, Show, pure, showsPrec, (<*>))
import qualified Text.Read

{-| __C declaration:__ @BOTAN_FFI_API_VERSION@

    __defined at:__ @botan\/ffi.h:70:9@

    __exported by:__ @botan\/ffi.h@
-}
bOTAN_FFI_API_VERSION :: FC.CInt
bOTAN_FFI_API_VERSION = (20250506 :: FC.CInt)

{-| Error codes

  If you add a new value here be sure to also add it in botan_error_description

__C declaration:__ @enum BOTAN_FFI_ERROR@

__defined at:__ @botan\/ffi.h:112:6@

__exported by:__ @botan\/ffi.h@
-}
newtype BOTAN_FFI_ERROR = BOTAN_FFI_ERROR
  { un_BOTAN_FFI_ERROR :: FC.CInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable BOTAN_FFI_ERROR where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure BOTAN_FFI_ERROR
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          BOTAN_FFI_ERROR un_BOTAN_FFI_ERROR2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_BOTAN_FFI_ERROR2

deriving via FC.CInt instance Data.Primitive.Types.Prim BOTAN_FFI_ERROR

instance HsBindgen.Runtime.CEnum.CEnum BOTAN_FFI_ERROR where

  type CEnumZ BOTAN_FFI_ERROR = FC.CInt

  toCEnum = BOTAN_FFI_ERROR

  fromCEnum = un_BOTAN_FFI_ERROR

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (-100, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_UNKNOWN_ERROR")
                                                     , (-78, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_TPM_ERROR")
                                                     , (-77, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_ROUGHTIME_ERROR")
                                                     , (-76, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_HTTP_ERROR")
                                                     , (-75, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_TLS_ERROR")
                                                     , (-50, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_INVALID_OBJECT")
                                                     , (-40, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_NOT_IMPLEMENTED")
                                                     , (-35, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_INVALID_OBJECT_STATE")
                                                     , (-34, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_INVALID_KEY_LENGTH")
                                                     , (-33, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_KEY_NOT_SET")
                                                     , (-32, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_BAD_PARAMETER")
                                                     , (-31, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_NULL_POINTER")
                                                     , (-30, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_BAD_FLAG")
                                                     , (-23, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_INTERNAL_ERROR")
                                                     , (-22, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_SYSTEM_ERROR")
                                                     , (-21, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_OUT_OF_MEMORY")
                                                     , (-20, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_EXCEPTION_THROWN")
                                                     , (-11, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR")
                                                     , (-10, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE")
                                                     , (-3, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_NO_VALUE")
                                                     , (-2, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_BAD_MAC")
                                                     , (-1, Data.List.NonEmpty.singleton "BOTAN_FFI_ERROR_INVALID_INPUT")
                                                     , (0, Data.List.NonEmpty.singleton "BOTAN_FFI_SUCCESS")
                                                     , (1, Data.List.NonEmpty.singleton "BOTAN_FFI_INVALID_VERIFIER")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "BOTAN_FFI_ERROR"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "BOTAN_FFI_ERROR"

instance Show BOTAN_FFI_ERROR where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read BOTAN_FFI_ERROR where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @BOTAN_FFI_SUCCESS@

    __defined at:__ @botan\/ffi.h:113:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_SUCCESS :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_SUCCESS = BOTAN_FFI_ERROR 0

{-| __C declaration:__ @BOTAN_FFI_INVALID_VERIFIER@

    __defined at:__ @botan\/ffi.h:115:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_INVALID_VERIFIER :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_INVALID_VERIFIER = BOTAN_FFI_ERROR 1

{-| __C declaration:__ @BOTAN_FFI_ERROR_INVALID_INPUT@

    __defined at:__ @botan\/ffi.h:117:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_INVALID_INPUT :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_INVALID_INPUT = BOTAN_FFI_ERROR (-1)

{-| __C declaration:__ @BOTAN_FFI_ERROR_BAD_MAC@

    __defined at:__ @botan\/ffi.h:118:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_BAD_MAC :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_BAD_MAC = BOTAN_FFI_ERROR (-2)

{-| __C declaration:__ @BOTAN_FFI_ERROR_NO_VALUE@

    __defined at:__ @botan\/ffi.h:119:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_NO_VALUE :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_NO_VALUE = BOTAN_FFI_ERROR (-3)

{-| __C declaration:__ @BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE@

    __defined at:__ @botan\/ffi.h:121:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE = BOTAN_FFI_ERROR (-10)

{-| __C declaration:__ @BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR@

    __defined at:__ @botan\/ffi.h:122:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_STRING_CONVERSION_ERROR = BOTAN_FFI_ERROR (-11)

{-| __C declaration:__ @BOTAN_FFI_ERROR_EXCEPTION_THROWN@

    __defined at:__ @botan\/ffi.h:124:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_EXCEPTION_THROWN :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_EXCEPTION_THROWN = BOTAN_FFI_ERROR (-20)

{-| __C declaration:__ @BOTAN_FFI_ERROR_OUT_OF_MEMORY@

    __defined at:__ @botan\/ffi.h:125:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_OUT_OF_MEMORY :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_OUT_OF_MEMORY = BOTAN_FFI_ERROR (-21)

{-| __C declaration:__ @BOTAN_FFI_ERROR_SYSTEM_ERROR@

    __defined at:__ @botan\/ffi.h:126:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_SYSTEM_ERROR :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_SYSTEM_ERROR = BOTAN_FFI_ERROR (-22)

{-| __C declaration:__ @BOTAN_FFI_ERROR_INTERNAL_ERROR@

    __defined at:__ @botan\/ffi.h:127:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_INTERNAL_ERROR :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_INTERNAL_ERROR = BOTAN_FFI_ERROR (-23)

{-| __C declaration:__ @BOTAN_FFI_ERROR_BAD_FLAG@

    __defined at:__ @botan\/ffi.h:129:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_BAD_FLAG :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_BAD_FLAG = BOTAN_FFI_ERROR (-30)

{-| __C declaration:__ @BOTAN_FFI_ERROR_NULL_POINTER@

    __defined at:__ @botan\/ffi.h:130:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_NULL_POINTER :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_NULL_POINTER = BOTAN_FFI_ERROR (-31)

{-| __C declaration:__ @BOTAN_FFI_ERROR_BAD_PARAMETER@

    __defined at:__ @botan\/ffi.h:131:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_BAD_PARAMETER :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_BAD_PARAMETER = BOTAN_FFI_ERROR (-32)

{-| __C declaration:__ @BOTAN_FFI_ERROR_KEY_NOT_SET@

    __defined at:__ @botan\/ffi.h:132:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_KEY_NOT_SET :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_KEY_NOT_SET = BOTAN_FFI_ERROR (-33)

{-| __C declaration:__ @BOTAN_FFI_ERROR_INVALID_KEY_LENGTH@

    __defined at:__ @botan\/ffi.h:133:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_INVALID_KEY_LENGTH :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_INVALID_KEY_LENGTH = BOTAN_FFI_ERROR (-34)

{-| __C declaration:__ @BOTAN_FFI_ERROR_INVALID_OBJECT_STATE@

    __defined at:__ @botan\/ffi.h:134:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_INVALID_OBJECT_STATE :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_INVALID_OBJECT_STATE = BOTAN_FFI_ERROR (-35)

{-| __C declaration:__ @BOTAN_FFI_ERROR_NOT_IMPLEMENTED@

    __defined at:__ @botan\/ffi.h:136:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_NOT_IMPLEMENTED :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_NOT_IMPLEMENTED = BOTAN_FFI_ERROR (-40)

{-| __C declaration:__ @BOTAN_FFI_ERROR_INVALID_OBJECT@

    __defined at:__ @botan\/ffi.h:137:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_INVALID_OBJECT :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_INVALID_OBJECT = BOTAN_FFI_ERROR (-50)

{-| __C declaration:__ @BOTAN_FFI_ERROR_TLS_ERROR@

    __defined at:__ @botan\/ffi.h:139:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_TLS_ERROR :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_TLS_ERROR = BOTAN_FFI_ERROR (-75)

{-| __C declaration:__ @BOTAN_FFI_ERROR_HTTP_ERROR@

    __defined at:__ @botan\/ffi.h:140:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_HTTP_ERROR :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_HTTP_ERROR = BOTAN_FFI_ERROR (-76)

{-| __C declaration:__ @BOTAN_FFI_ERROR_ROUGHTIME_ERROR@

    __defined at:__ @botan\/ffi.h:141:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_ROUGHTIME_ERROR :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_ROUGHTIME_ERROR = BOTAN_FFI_ERROR (-77)

{-| __C declaration:__ @BOTAN_FFI_ERROR_TPM_ERROR@

    __defined at:__ @botan\/ffi.h:142:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_TPM_ERROR :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_TPM_ERROR = BOTAN_FFI_ERROR (-78)

{-| __C declaration:__ @BOTAN_FFI_ERROR_UNKNOWN_ERROR@

    __defined at:__ @botan\/ffi.h:144:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern BOTAN_FFI_ERROR_UNKNOWN_ERROR :: BOTAN_FFI_ERROR
pattern BOTAN_FFI_ERROR_UNKNOWN_ERROR = BOTAN_FFI_ERROR (-100)

{-| The application provided context for a view function

__C declaration:__ @botan_view_ctx@

__defined at:__ @botan\/ffi.h:150:15@

__exported by:__ @botan\/ffi.h@
-}
newtype Botan_view_ctx = Botan_view_ctx
  { un_Botan_view_ctx :: Ptr.Ptr Void
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_view_ctx) "un_Botan_view_ctx")
         ) => GHC.Records.HasField "un_Botan_view_ctx" (Ptr.Ptr Botan_view_ctx) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_view_ctx")

instance HsBindgen.Runtime.HasCField.HasCField Botan_view_ctx "un_Botan_view_ctx" where

  type CFieldType Botan_view_ctx "un_Botan_view_ctx" =
    Ptr.Ptr Void

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Botan_view_bin_fn'

__C declaration:__ @botan_view_bin_fn@

__defined at:__ @botan\/ffi.h:159:15@

__exported by:__ @botan\/ffi.h@
-}
newtype Botan_view_bin_fn_Aux = Botan_view_bin_fn_Aux
  { un_Botan_view_bin_fn_Aux :: Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

-- __unique:__ @toBotan_view_bin_fn_Aux@
foreign import ccall safe "wrapper" hs_bindgen_27b139e7e646bbb3 ::
     Botan_view_bin_fn_Aux
  -> IO (Ptr.FunPtr Botan_view_bin_fn_Aux)

-- __unique:__ @fromBotan_view_bin_fn_Aux@
foreign import ccall safe "dynamic" hs_bindgen_4fe374d6367faa00 ::
     Ptr.FunPtr Botan_view_bin_fn_Aux
  -> Botan_view_bin_fn_Aux

instance HsBindgen.Runtime.FunPtr.ToFunPtr Botan_view_bin_fn_Aux where

  toFunPtr = hs_bindgen_27b139e7e646bbb3

instance HsBindgen.Runtime.FunPtr.FromFunPtr Botan_view_bin_fn_Aux where

  fromFunPtr = hs_bindgen_4fe374d6367faa00

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_view_bin_fn_Aux) "un_Botan_view_bin_fn_Aux")
         ) => GHC.Records.HasField "un_Botan_view_bin_fn_Aux" (Ptr.Ptr Botan_view_bin_fn_Aux) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_view_bin_fn_Aux")

instance HsBindgen.Runtime.HasCField.HasCField Botan_view_bin_fn_Aux "un_Botan_view_bin_fn_Aux" where

  type CFieldType Botan_view_bin_fn_Aux "un_Botan_view_bin_fn_Aux" =
    Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| Viewer function for binary data

  [__@view_ctx@ /(input)/__]: some application context

  [__@data@ /(input)/__]: the binary data

  [__@len@ /(input)/__]: the length of data in bytes

__C declaration:__ @botan_view_bin_fn@

__defined at:__ @botan\/ffi.h:159:15@

__exported by:__ @botan\/ffi.h@
-}
newtype Botan_view_bin_fn = Botan_view_bin_fn
  { un_Botan_view_bin_fn :: Ptr.FunPtr Botan_view_bin_fn_Aux
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_view_bin_fn) "un_Botan_view_bin_fn")
         ) => GHC.Records.HasField "un_Botan_view_bin_fn" (Ptr.Ptr Botan_view_bin_fn) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_view_bin_fn")

instance HsBindgen.Runtime.HasCField.HasCField Botan_view_bin_fn "un_Botan_view_bin_fn" where

  type CFieldType Botan_view_bin_fn "un_Botan_view_bin_fn" =
    Ptr.FunPtr Botan_view_bin_fn_Aux

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Botan_view_str_fn'

__C declaration:__ @botan_view_str_fn@

__defined at:__ @botan\/ffi.h:168:15@

__exported by:__ @botan\/ffi.h@
-}
newtype Botan_view_str_fn_Aux = Botan_view_str_fn_Aux
  { un_Botan_view_str_fn_Aux :: Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt
  }
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

-- __unique:__ @toBotan_view_str_fn_Aux@
foreign import ccall safe "wrapper" hs_bindgen_917299e3c75a35ba ::
     Botan_view_str_fn_Aux
  -> IO (Ptr.FunPtr Botan_view_str_fn_Aux)

-- __unique:__ @fromBotan_view_str_fn_Aux@
foreign import ccall safe "dynamic" hs_bindgen_396f3823702be56f ::
     Ptr.FunPtr Botan_view_str_fn_Aux
  -> Botan_view_str_fn_Aux

instance HsBindgen.Runtime.FunPtr.ToFunPtr Botan_view_str_fn_Aux where

  toFunPtr = hs_bindgen_917299e3c75a35ba

instance HsBindgen.Runtime.FunPtr.FromFunPtr Botan_view_str_fn_Aux where

  fromFunPtr = hs_bindgen_396f3823702be56f

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_view_str_fn_Aux) "un_Botan_view_str_fn_Aux")
         ) => GHC.Records.HasField "un_Botan_view_str_fn_Aux" (Ptr.Ptr Botan_view_str_fn_Aux) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_view_str_fn_Aux")

instance HsBindgen.Runtime.HasCField.HasCField Botan_view_str_fn_Aux "un_Botan_view_str_fn_Aux" where

  type CFieldType Botan_view_str_fn_Aux "un_Botan_view_str_fn_Aux" =
    Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt

  offset# = \_ -> \_ -> 0

{-| Viewer function for string data

  [__@view_ctx@ /(input)/__]: some application context

  [__@str@ /(input)/__]: the null terminated string

  [__@len@ /(input)/__]: the length of string *including* the null terminator

__C declaration:__ @botan_view_str_fn@

__defined at:__ @botan\/ffi.h:168:15@

__exported by:__ @botan\/ffi.h@
-}
newtype Botan_view_str_fn = Botan_view_str_fn
  { un_Botan_view_str_fn :: Ptr.FunPtr Botan_view_str_fn_Aux
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_view_str_fn) "un_Botan_view_str_fn")
         ) => GHC.Records.HasField "un_Botan_view_str_fn" (Ptr.Ptr Botan_view_str_fn) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_view_str_fn")

instance HsBindgen.Runtime.HasCField.HasCField Botan_view_str_fn "un_Botan_view_str_fn" where

  type CFieldType Botan_view_str_fn "un_Botan_view_str_fn" =
    Ptr.FunPtr Botan_view_str_fn_Aux

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @BOTAN_FFI_HEX_LOWER_CASE@

    __defined at:__ @botan\/ffi.h:245:9@

    __exported by:__ @botan\/ffi.h@
-}
bOTAN_FFI_HEX_LOWER_CASE :: FC.CInt
bOTAN_FFI_HEX_LOWER_CASE = (1 :: FC.CInt)

{-| __C declaration:__ @struct botan_rng_struct@

    __defined at:__ @botan\/ffi.h:287:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_rng_struct

{-| RNG type

__C declaration:__ @botan_rng_t@

__defined at:__ @botan\/ffi.h:287:34@

__exported by:__ @botan\/ffi.h@
-}
newtype Botan_rng_t = Botan_rng_t
  { un_Botan_rng_t :: Ptr.Ptr Botan_rng_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_rng_t) "un_Botan_rng_t")
         ) => GHC.Records.HasField "un_Botan_rng_t" (Ptr.Ptr Botan_rng_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_rng_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_rng_t "un_Botan_rng_t" where

  type CFieldType Botan_rng_t "un_Botan_rng_t" =
    Ptr.Ptr Botan_rng_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_hash_struct@

    __defined at:__ @botan\/ffi.h:379:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_hash_struct

{-| __C declaration:__ @botan_hash_t@

    __defined at:__ @botan\/ffi.h:379:35@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_hash_t = Botan_hash_t
  { un_Botan_hash_t :: Ptr.Ptr Botan_hash_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_hash_t) "un_Botan_hash_t")
         ) => GHC.Records.HasField "un_Botan_hash_t" (Ptr.Ptr Botan_hash_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_hash_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_hash_t "un_Botan_hash_t" where

  type CFieldType Botan_hash_t "un_Botan_hash_t" =
    Ptr.Ptr Botan_hash_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_mac_struct@

    __defined at:__ @botan\/ffi.h:459:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_mac_struct

{-| __C declaration:__ @botan_mac_t@

    __defined at:__ @botan\/ffi.h:459:34@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_mac_t = Botan_mac_t
  { un_Botan_mac_t :: Ptr.Ptr Botan_mac_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_mac_t) "un_Botan_mac_t")
         ) => GHC.Records.HasField "un_Botan_mac_t" (Ptr.Ptr Botan_mac_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_mac_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_mac_t "un_Botan_mac_t" where

  type CFieldType Botan_mac_t "un_Botan_mac_t" =
    Ptr.Ptr Botan_mac_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_cipher_struct@

    __defined at:__ @botan\/ffi.h:555:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_cipher_struct

{-| __C declaration:__ @botan_cipher_t@

    __defined at:__ @botan\/ffi.h:555:37@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_cipher_t = Botan_cipher_t
  { un_Botan_cipher_t :: Ptr.Ptr Botan_cipher_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_cipher_t) "un_Botan_cipher_t")
         ) => GHC.Records.HasField "un_Botan_cipher_t" (Ptr.Ptr Botan_cipher_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_cipher_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_cipher_t "un_Botan_cipher_t" where

  type CFieldType Botan_cipher_t "un_Botan_cipher_t" =
    Ptr.Ptr Botan_cipher_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @BOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION@

    __defined at:__ @botan\/ffi.h:557:9@

    __exported by:__ @botan\/ffi.h@
-}
bOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION :: FC.CInt
bOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION =
  (1 :: FC.CInt)

{-| __C declaration:__ @BOTAN_CIPHER_INIT_FLAG_ENCRYPT@

    __defined at:__ @botan\/ffi.h:558:9@

    __exported by:__ @botan\/ffi.h@
-}
bOTAN_CIPHER_INIT_FLAG_ENCRYPT :: FC.CInt
bOTAN_CIPHER_INIT_FLAG_ENCRYPT = (0 :: FC.CInt)

{-| __C declaration:__ @BOTAN_CIPHER_INIT_FLAG_DECRYPT@

    __defined at:__ @botan\/ffi.h:559:9@

    __exported by:__ @botan\/ffi.h@
-}
bOTAN_CIPHER_INIT_FLAG_DECRYPT :: FC.CInt
bOTAN_CIPHER_INIT_FLAG_DECRYPT = (1 :: FC.CInt)

{-| __C declaration:__ @BOTAN_CIPHER_UPDATE_FLAG_FINAL@

    __defined at:__ @botan\/ffi.h:652:9@

    __exported by:__ @botan\/ffi.h@
-}
bOTAN_CIPHER_UPDATE_FLAG_FINAL :: FC.CUInt
bOTAN_CIPHER_UPDATE_FLAG_FINAL =
  (C.<<) (1 :: FC.CUInt) (0 :: FC.CInt)

{-| __C declaration:__ @struct botan_block_cipher_struct@

    __defined at:__ @botan\/ffi.h:853:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_block_cipher_struct

{-| __C declaration:__ @botan_block_cipher_t@

    __defined at:__ @botan\/ffi.h:853:43@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_block_cipher_t = Botan_block_cipher_t
  { un_Botan_block_cipher_t :: Ptr.Ptr Botan_block_cipher_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_block_cipher_t) "un_Botan_block_cipher_t")
         ) => GHC.Records.HasField "un_Botan_block_cipher_t" (Ptr.Ptr Botan_block_cipher_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_block_cipher_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_block_cipher_t "un_Botan_block_cipher_t" where

  type CFieldType Botan_block_cipher_t "un_Botan_block_cipher_t" =
    Ptr.Ptr Botan_block_cipher_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_mp_struct@

    __defined at:__ @botan\/ffi.h:919:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_mp_struct

{-| __C declaration:__ @botan_mp_t@

    __defined at:__ @botan\/ffi.h:919:33@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_mp_t = Botan_mp_t
  { un_Botan_mp_t :: Ptr.Ptr Botan_mp_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_mp_t) "un_Botan_mp_t")
         ) => GHC.Records.HasField "un_Botan_mp_t" (Ptr.Ptr Botan_mp_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_mp_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_mp_t "un_Botan_mp_t" where

  type CFieldType Botan_mp_t "un_Botan_mp_t" =
    Ptr.Ptr Botan_mp_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_asn1_oid_struct@

    __defined at:__ @botan\/ffi.h:1117:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_asn1_oid_struct

{-| __C declaration:__ @botan_asn1_oid_t@

    __defined at:__ @botan\/ffi.h:1117:39@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_asn1_oid_t = Botan_asn1_oid_t
  { un_Botan_asn1_oid_t :: Ptr.Ptr Botan_asn1_oid_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_asn1_oid_t) "un_Botan_asn1_oid_t")
         ) => GHC.Records.HasField "un_Botan_asn1_oid_t" (Ptr.Ptr Botan_asn1_oid_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_asn1_oid_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_asn1_oid_t "un_Botan_asn1_oid_t" where

  type CFieldType Botan_asn1_oid_t "un_Botan_asn1_oid_t" =
    Ptr.Ptr Botan_asn1_oid_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_ec_group_struct@

    __defined at:__ @botan\/ffi.h:1166:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_ec_group_struct

{-| __C declaration:__ @botan_ec_group_t@

    __defined at:__ @botan\/ffi.h:1166:39@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_ec_group_t = Botan_ec_group_t
  { un_Botan_ec_group_t :: Ptr.Ptr Botan_ec_group_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_ec_group_t) "un_Botan_ec_group_t")
         ) => GHC.Records.HasField "un_Botan_ec_group_t" (Ptr.Ptr Botan_ec_group_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_ec_group_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_ec_group_t "un_Botan_ec_group_t" where

  type CFieldType Botan_ec_group_t "un_Botan_ec_group_t" =
    Ptr.Ptr Botan_ec_group_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_privkey_struct@

    __defined at:__ @botan\/ffi.h:1300:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_privkey_struct

{-| __C declaration:__ @botan_privkey_t@

    __defined at:__ @botan\/ffi.h:1300:38@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_privkey_t = Botan_privkey_t
  { un_Botan_privkey_t :: Ptr.Ptr Botan_privkey_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_privkey_t) "un_Botan_privkey_t")
         ) => GHC.Records.HasField "un_Botan_privkey_t" (Ptr.Ptr Botan_privkey_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_privkey_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_privkey_t "un_Botan_privkey_t" where

  type CFieldType Botan_privkey_t "un_Botan_privkey_t" =
    Ptr.Ptr Botan_privkey_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @BOTAN_CHECK_KEY_EXPENSIVE_TESTS@

    __defined at:__ @botan\/ffi.h:1323:9@

    __exported by:__ @botan\/ffi.h@
-}
bOTAN_CHECK_KEY_EXPENSIVE_TESTS :: FC.CInt
bOTAN_CHECK_KEY_EXPENSIVE_TESTS = (1 :: FC.CInt)

{-| __C declaration:__ @BOTAN_PRIVKEY_EXPORT_FLAG_DER@

    __defined at:__ @botan\/ffi.h:1393:9@

    __exported by:__ @botan\/ffi.h@
-}
bOTAN_PRIVKEY_EXPORT_FLAG_DER :: FC.CInt
bOTAN_PRIVKEY_EXPORT_FLAG_DER = (0 :: FC.CInt)

{-| __C declaration:__ @BOTAN_PRIVKEY_EXPORT_FLAG_PEM@

    __defined at:__ @botan\/ffi.h:1394:9@

    __exported by:__ @botan\/ffi.h@
-}
bOTAN_PRIVKEY_EXPORT_FLAG_PEM :: FC.CInt
bOTAN_PRIVKEY_EXPORT_FLAG_PEM = (1 :: FC.CInt)

{-| __C declaration:__ @BOTAN_PRIVKEY_EXPORT_FLAG_RAW@

    __defined at:__ @botan\/ffi.h:1395:9@

    __exported by:__ @botan\/ffi.h@
-}
bOTAN_PRIVKEY_EXPORT_FLAG_RAW :: FC.CInt
bOTAN_PRIVKEY_EXPORT_FLAG_RAW = (2 :: FC.CInt)

{-| __C declaration:__ @struct botan_pubkey_struct@

    __defined at:__ @botan\/ffi.h:1533:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_pubkey_struct

{-| __C declaration:__ @botan_pubkey_t@

    __defined at:__ @botan\/ffi.h:1533:37@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_pubkey_t = Botan_pubkey_t
  { un_Botan_pubkey_t :: Ptr.Ptr Botan_pubkey_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_pubkey_t) "un_Botan_pubkey_t")
         ) => GHC.Records.HasField "un_Botan_pubkey_t" (Ptr.Ptr Botan_pubkey_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_pubkey_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_pubkey_t "un_Botan_pubkey_t" where

  type CFieldType Botan_pubkey_t "un_Botan_pubkey_t" =
    Ptr.Ptr Botan_pubkey_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_pk_op_encrypt_struct@

    __defined at:__ @botan\/ffi.h:1894:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_pk_op_encrypt_struct

{-| __C declaration:__ @botan_pk_op_encrypt_t@

    __defined at:__ @botan\/ffi.h:1894:44@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_pk_op_encrypt_t = Botan_pk_op_encrypt_t
  { un_Botan_pk_op_encrypt_t :: Ptr.Ptr Botan_pk_op_encrypt_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_pk_op_encrypt_t) "un_Botan_pk_op_encrypt_t")
         ) => GHC.Records.HasField "un_Botan_pk_op_encrypt_t" (Ptr.Ptr Botan_pk_op_encrypt_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_pk_op_encrypt_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_pk_op_encrypt_t "un_Botan_pk_op_encrypt_t" where

  type CFieldType Botan_pk_op_encrypt_t "un_Botan_pk_op_encrypt_t" =
    Ptr.Ptr Botan_pk_op_encrypt_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_pk_op_decrypt_struct@

    __defined at:__ @botan\/ffi.h:1918:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_pk_op_decrypt_struct

{-| __C declaration:__ @botan_pk_op_decrypt_t@

    __defined at:__ @botan\/ffi.h:1918:44@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_pk_op_decrypt_t = Botan_pk_op_decrypt_t
  { un_Botan_pk_op_decrypt_t :: Ptr.Ptr Botan_pk_op_decrypt_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_pk_op_decrypt_t) "un_Botan_pk_op_decrypt_t")
         ) => GHC.Records.HasField "un_Botan_pk_op_decrypt_t" (Ptr.Ptr Botan_pk_op_decrypt_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_pk_op_decrypt_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_pk_op_decrypt_t "un_Botan_pk_op_decrypt_t" where

  type CFieldType Botan_pk_op_decrypt_t "un_Botan_pk_op_decrypt_t" =
    Ptr.Ptr Botan_pk_op_decrypt_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @BOTAN_PUBKEY_DER_FORMAT_SIGNATURE@

    __defined at:__ @botan\/ffi.h:1939:9@

    __exported by:__ @botan\/ffi.h@
-}
bOTAN_PUBKEY_DER_FORMAT_SIGNATURE :: FC.CInt
bOTAN_PUBKEY_DER_FORMAT_SIGNATURE = (1 :: FC.CInt)

{-| __C declaration:__ @struct botan_pk_op_sign_struct@

    __defined at:__ @botan\/ffi.h:1941:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_pk_op_sign_struct

{-| __C declaration:__ @botan_pk_op_sign_t@

    __defined at:__ @botan\/ffi.h:1941:41@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_pk_op_sign_t = Botan_pk_op_sign_t
  { un_Botan_pk_op_sign_t :: Ptr.Ptr Botan_pk_op_sign_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_pk_op_sign_t) "un_Botan_pk_op_sign_t")
         ) => GHC.Records.HasField "un_Botan_pk_op_sign_t" (Ptr.Ptr Botan_pk_op_sign_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_pk_op_sign_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_pk_op_sign_t "un_Botan_pk_op_sign_t" where

  type CFieldType Botan_pk_op_sign_t "un_Botan_pk_op_sign_t" =
    Ptr.Ptr Botan_pk_op_sign_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_pk_op_verify_struct@

    __defined at:__ @botan\/ffi.h:1961:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_pk_op_verify_struct

{-| __C declaration:__ @botan_pk_op_verify_t@

    __defined at:__ @botan\/ffi.h:1961:43@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_pk_op_verify_t = Botan_pk_op_verify_t
  { un_Botan_pk_op_verify_t :: Ptr.Ptr Botan_pk_op_verify_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_pk_op_verify_t) "un_Botan_pk_op_verify_t")
         ) => GHC.Records.HasField "un_Botan_pk_op_verify_t" (Ptr.Ptr Botan_pk_op_verify_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_pk_op_verify_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_pk_op_verify_t "un_Botan_pk_op_verify_t" where

  type CFieldType Botan_pk_op_verify_t "un_Botan_pk_op_verify_t" =
    Ptr.Ptr Botan_pk_op_verify_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_pk_op_ka_struct@

    __defined at:__ @botan\/ffi.h:1980:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_pk_op_ka_struct

{-| __C declaration:__ @botan_pk_op_ka_t@

    __defined at:__ @botan\/ffi.h:1980:39@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_pk_op_ka_t = Botan_pk_op_ka_t
  { un_Botan_pk_op_ka_t :: Ptr.Ptr Botan_pk_op_ka_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_pk_op_ka_t) "un_Botan_pk_op_ka_t")
         ) => GHC.Records.HasField "un_Botan_pk_op_ka_t" (Ptr.Ptr Botan_pk_op_ka_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_pk_op_ka_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_pk_op_ka_t "un_Botan_pk_op_ka_t" where

  type CFieldType Botan_pk_op_ka_t "un_Botan_pk_op_ka_t" =
    Ptr.Ptr Botan_pk_op_ka_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_pk_op_kem_encrypt_struct@

    __defined at:__ @botan\/ffi.h:2009:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_pk_op_kem_encrypt_struct

{-| __C declaration:__ @botan_pk_op_kem_encrypt_t@

    __defined at:__ @botan\/ffi.h:2009:48@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_pk_op_kem_encrypt_t = Botan_pk_op_kem_encrypt_t
  { un_Botan_pk_op_kem_encrypt_t :: Ptr.Ptr Botan_pk_op_kem_encrypt_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_pk_op_kem_encrypt_t) "un_Botan_pk_op_kem_encrypt_t")
         ) => GHC.Records.HasField "un_Botan_pk_op_kem_encrypt_t" (Ptr.Ptr Botan_pk_op_kem_encrypt_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_pk_op_kem_encrypt_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_pk_op_kem_encrypt_t "un_Botan_pk_op_kem_encrypt_t" where

  type CFieldType Botan_pk_op_kem_encrypt_t "un_Botan_pk_op_kem_encrypt_t" =
    Ptr.Ptr Botan_pk_op_kem_encrypt_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_pk_op_kem_decrypt_struct@

    __defined at:__ @botan\/ffi.h:2039:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_pk_op_kem_decrypt_struct

{-| __C declaration:__ @botan_pk_op_kem_decrypt_t@

    __defined at:__ @botan\/ffi.h:2039:48@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_pk_op_kem_decrypt_t = Botan_pk_op_kem_decrypt_t
  { un_Botan_pk_op_kem_decrypt_t :: Ptr.Ptr Botan_pk_op_kem_decrypt_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_pk_op_kem_decrypt_t) "un_Botan_pk_op_kem_decrypt_t")
         ) => GHC.Records.HasField "un_Botan_pk_op_kem_decrypt_t" (Ptr.Ptr Botan_pk_op_kem_decrypt_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_pk_op_kem_decrypt_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_pk_op_kem_decrypt_t "un_Botan_pk_op_kem_decrypt_t" where

  type CFieldType Botan_pk_op_kem_decrypt_t "un_Botan_pk_op_kem_decrypt_t" =
    Ptr.Ptr Botan_pk_op_kem_decrypt_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_x509_cert_struct@

    __defined at:__ @botan\/ffi.h:2103:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_x509_cert_struct

{-| __C declaration:__ @botan_x509_cert_t@

    __defined at:__ @botan\/ffi.h:2103:40@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_x509_cert_t = Botan_x509_cert_t
  { un_Botan_x509_cert_t :: Ptr.Ptr Botan_x509_cert_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_x509_cert_t) "un_Botan_x509_cert_t")
         ) => GHC.Records.HasField "un_Botan_x509_cert_t" (Ptr.Ptr Botan_x509_cert_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_x509_cert_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_x509_cert_t "un_Botan_x509_cert_t" where

  type CFieldType Botan_x509_cert_t "un_Botan_x509_cert_t" =
    Ptr.Ptr Botan_x509_cert_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @enum botan_x509_cert_key_constraints@

    __defined at:__ @botan\/ffi.h:2150:6@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_x509_cert_key_constraints = Botan_x509_cert_key_constraints
  { un_Botan_x509_cert_key_constraints :: FC.CUInt
  }
  deriving stock (Eq, Ord)
  deriving newtype (HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance F.Storable Botan_x509_cert_key_constraints where

  sizeOf = \_ -> (4 :: Int)

  alignment = \_ -> (4 :: Int)

  peek =
    \ptr0 ->
          pure Botan_x509_cert_key_constraints
      <*> F.peekByteOff ptr0 (0 :: Int)

  poke =
    \ptr0 ->
      \s1 ->
        case s1 of
          Botan_x509_cert_key_constraints un_Botan_x509_cert_key_constraints2 ->
            F.pokeByteOff ptr0 (0 :: Int) un_Botan_x509_cert_key_constraints2

deriving via FC.CUInt instance Data.Primitive.Types.Prim Botan_x509_cert_key_constraints

instance HsBindgen.Runtime.CEnum.CEnum Botan_x509_cert_key_constraints where

  type CEnumZ Botan_x509_cert_key_constraints =
    FC.CUInt

  toCEnum = Botan_x509_cert_key_constraints

  fromCEnum = un_Botan_x509_cert_key_constraints

  declaredValues =
    \_ ->
      HsBindgen.Runtime.CEnum.declaredValuesFromList [ (0, Data.List.NonEmpty.singleton "NO_CONSTRAINTS")
                                                     , (128, Data.List.NonEmpty.singleton "DECIPHER_ONLY")
                                                     , (256, Data.List.NonEmpty.singleton "ENCIPHER_ONLY")
                                                     , (512, Data.List.NonEmpty.singleton "CRL_SIGN")
                                                     , (1024, Data.List.NonEmpty.singleton "KEY_CERT_SIGN")
                                                     , (2048, Data.List.NonEmpty.singleton "KEY_AGREEMENT")
                                                     , (4096, Data.List.NonEmpty.singleton "DATA_ENCIPHERMENT")
                                                     , (8192, Data.List.NonEmpty.singleton "KEY_ENCIPHERMENT")
                                                     , (16384, Data.List.NonEmpty.singleton "NON_REPUDIATION")
                                                     , (32768, Data.List.NonEmpty.singleton "DIGITAL_SIGNATURE")
                                                     ]

  showsUndeclared =
    HsBindgen.Runtime.CEnum.showsWrappedUndeclared "Botan_x509_cert_key_constraints"

  readPrecUndeclared =
    HsBindgen.Runtime.CEnum.readPrecWrappedUndeclared "Botan_x509_cert_key_constraints"

instance Show Botan_x509_cert_key_constraints where

  showsPrec = HsBindgen.Runtime.CEnum.showsCEnum

instance Read Botan_x509_cert_key_constraints where

  readPrec = HsBindgen.Runtime.CEnum.readPrecCEnum

  readList = Text.Read.readListDefault

  readListPrec = Text.Read.readListPrecDefault

{-| __C declaration:__ @NO_CONSTRAINTS@

    __defined at:__ @botan\/ffi.h:2151:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern NO_CONSTRAINTS :: Botan_x509_cert_key_constraints
pattern NO_CONSTRAINTS = Botan_x509_cert_key_constraints 0

{-| __C declaration:__ @DIGITAL_SIGNATURE@

    __defined at:__ @botan\/ffi.h:2152:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern DIGITAL_SIGNATURE :: Botan_x509_cert_key_constraints
pattern DIGITAL_SIGNATURE = Botan_x509_cert_key_constraints 32768

{-| __C declaration:__ @NON_REPUDIATION@

    __defined at:__ @botan\/ffi.h:2153:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern NON_REPUDIATION :: Botan_x509_cert_key_constraints
pattern NON_REPUDIATION = Botan_x509_cert_key_constraints 16384

{-| __C declaration:__ @KEY_ENCIPHERMENT@

    __defined at:__ @botan\/ffi.h:2154:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern KEY_ENCIPHERMENT :: Botan_x509_cert_key_constraints
pattern KEY_ENCIPHERMENT = Botan_x509_cert_key_constraints 8192

{-| __C declaration:__ @DATA_ENCIPHERMENT@

    __defined at:__ @botan\/ffi.h:2155:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern DATA_ENCIPHERMENT :: Botan_x509_cert_key_constraints
pattern DATA_ENCIPHERMENT = Botan_x509_cert_key_constraints 4096

{-| __C declaration:__ @KEY_AGREEMENT@

    __defined at:__ @botan\/ffi.h:2156:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern KEY_AGREEMENT :: Botan_x509_cert_key_constraints
pattern KEY_AGREEMENT = Botan_x509_cert_key_constraints 2048

{-| __C declaration:__ @KEY_CERT_SIGN@

    __defined at:__ @botan\/ffi.h:2157:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern KEY_CERT_SIGN :: Botan_x509_cert_key_constraints
pattern KEY_CERT_SIGN = Botan_x509_cert_key_constraints 1024

{-| __C declaration:__ @CRL_SIGN@

    __defined at:__ @botan\/ffi.h:2158:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern CRL_SIGN :: Botan_x509_cert_key_constraints
pattern CRL_SIGN = Botan_x509_cert_key_constraints 512

{-| __C declaration:__ @ENCIPHER_ONLY@

    __defined at:__ @botan\/ffi.h:2159:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern ENCIPHER_ONLY :: Botan_x509_cert_key_constraints
pattern ENCIPHER_ONLY = Botan_x509_cert_key_constraints 256

{-| __C declaration:__ @DECIPHER_ONLY@

    __defined at:__ @botan\/ffi.h:2160:4@

    __exported by:__ @botan\/ffi.h@
-}
pattern DECIPHER_ONLY :: Botan_x509_cert_key_constraints
pattern DECIPHER_ONLY = Botan_x509_cert_key_constraints 128

{-| __C declaration:__ @struct botan_x509_crl_struct@

    __defined at:__ @botan\/ffi.h:2201:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_x509_crl_struct

{-| __C declaration:__ @botan_x509_crl_t@

    __defined at:__ @botan\/ffi.h:2201:39@

    __exported by:__ @botan\/ffi.h@
-}
newtype Botan_x509_crl_t = Botan_x509_crl_t
  { un_Botan_x509_crl_t :: Ptr.Ptr Botan_x509_crl_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_x509_crl_t) "un_Botan_x509_crl_t")
         ) => GHC.Records.HasField "un_Botan_x509_crl_t" (Ptr.Ptr Botan_x509_crl_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_x509_crl_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_x509_crl_t "un_Botan_x509_crl_t" where

  type CFieldType Botan_x509_crl_t "un_Botan_x509_crl_t" =
    Ptr.Ptr Botan_x509_crl_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_hotp_struct@

    __defined at:__ @botan\/ffi.h:2278:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_hotp_struct

{-| HOTP

__C declaration:__ @botan_hotp_t@

__defined at:__ @botan\/ffi.h:2278:35@

__exported by:__ @botan\/ffi.h@
-}
newtype Botan_hotp_t = Botan_hotp_t
  { un_Botan_hotp_t :: Ptr.Ptr Botan_hotp_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_hotp_t) "un_Botan_hotp_t")
         ) => GHC.Records.HasField "un_Botan_hotp_t" (Ptr.Ptr Botan_hotp_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_hotp_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_hotp_t "un_Botan_hotp_t" where

  type CFieldType Botan_hotp_t "un_Botan_hotp_t" =
    Ptr.Ptr Botan_hotp_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_totp_struct@

    __defined at:__ @botan\/ffi.h:2310:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_totp_struct

{-| TOTP

__C declaration:__ @botan_totp_t@

__defined at:__ @botan\/ffi.h:2310:35@

__exported by:__ @botan\/ffi.h@
-}
newtype Botan_totp_t = Botan_totp_t
  { un_Botan_totp_t :: Ptr.Ptr Botan_totp_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_totp_t) "un_Botan_totp_t")
         ) => GHC.Records.HasField "un_Botan_totp_t" (Ptr.Ptr Botan_totp_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_totp_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_totp_t "un_Botan_totp_t" where

  type CFieldType Botan_totp_t "un_Botan_totp_t" =
    Ptr.Ptr Botan_totp_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_fpe_struct@

    __defined at:__ @botan\/ffi.h:2350:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_fpe_struct

{-| Format Preserving Encryption

__C declaration:__ @botan_fpe_t@

__defined at:__ @botan\/ffi.h:2350:34@

__exported by:__ @botan\/ffi.h@
-}
newtype Botan_fpe_t = Botan_fpe_t
  { un_Botan_fpe_t :: Ptr.Ptr Botan_fpe_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_fpe_t) "un_Botan_fpe_t")
         ) => GHC.Records.HasField "un_Botan_fpe_t" (Ptr.Ptr Botan_fpe_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_fpe_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_fpe_t "un_Botan_fpe_t" where

  type CFieldType Botan_fpe_t "un_Botan_fpe_t" =
    Ptr.Ptr Botan_fpe_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @BOTAN_FPE_FLAG_FE1_COMPAT_MODE@

    __defined at:__ @botan\/ffi.h:2352:9@

    __exported by:__ @botan\/ffi.h@
-}
bOTAN_FPE_FLAG_FE1_COMPAT_MODE :: FC.CInt
bOTAN_FPE_FLAG_FE1_COMPAT_MODE = (1 :: FC.CInt)

{-| __C declaration:__ @struct botan_srp6_server_session_struct@

    __defined at:__ @botan\/ffi.h:2373:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_srp6_server_session_struct

{-| SRP-6 Server Session type

__C declaration:__ @botan_srp6_server_session_t@

__defined at:__ @botan\/ffi.h:2373:50@

__exported by:__ @botan\/ffi.h@
-}
newtype Botan_srp6_server_session_t = Botan_srp6_server_session_t
  { un_Botan_srp6_server_session_t :: Ptr.Ptr Botan_srp6_server_session_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_srp6_server_session_t) "un_Botan_srp6_server_session_t")
         ) => GHC.Records.HasField "un_Botan_srp6_server_session_t" (Ptr.Ptr Botan_srp6_server_session_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_srp6_server_session_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_srp6_server_session_t "un_Botan_srp6_server_session_t" where

  type CFieldType Botan_srp6_server_session_t "un_Botan_srp6_server_session_t" =
    Ptr.Ptr Botan_srp6_server_session_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_tpm2_ctx_struct@

    __defined at:__ @botan\/ffi.h:2531:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_tpm2_ctx_struct

{-| TPM2 context

__C declaration:__ @botan_tpm2_ctx_t@

__defined at:__ @botan\/ffi.h:2531:39@

__exported by:__ @botan\/ffi.h@
-}
newtype Botan_tpm2_ctx_t = Botan_tpm2_ctx_t
  { un_Botan_tpm2_ctx_t :: Ptr.Ptr Botan_tpm2_ctx_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_tpm2_ctx_t) "un_Botan_tpm2_ctx_t")
         ) => GHC.Records.HasField "un_Botan_tpm2_ctx_t" (Ptr.Ptr Botan_tpm2_ctx_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_tpm2_ctx_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_tpm2_ctx_t "un_Botan_tpm2_ctx_t" where

  type CFieldType Botan_tpm2_ctx_t "un_Botan_tpm2_ctx_t" =
    Ptr.Ptr Botan_tpm2_ctx_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_tpm2_session_struct@

    __defined at:__ @botan\/ffi.h:2536:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_tpm2_session_struct

{-| TPM2 session

__C declaration:__ @botan_tpm2_session_t@

__defined at:__ @botan\/ffi.h:2536:43@

__exported by:__ @botan\/ffi.h@
-}
newtype Botan_tpm2_session_t = Botan_tpm2_session_t
  { un_Botan_tpm2_session_t :: Ptr.Ptr Botan_tpm2_session_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_tpm2_session_t) "un_Botan_tpm2_session_t")
         ) => GHC.Records.HasField "un_Botan_tpm2_session_t" (Ptr.Ptr Botan_tpm2_session_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_tpm2_session_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_tpm2_session_t "un_Botan_tpm2_session_t" where

  type CFieldType Botan_tpm2_session_t "un_Botan_tpm2_session_t" =
    Ptr.Ptr Botan_tpm2_session_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct botan_tpm2_crypto_backend_state_struct@

    __defined at:__ @botan\/ffi.h:2541:16@

    __exported by:__ @botan\/ffi.h@
-}
data Botan_tpm2_crypto_backend_state_struct

{-| TPM2 crypto backend state object

__C declaration:__ @botan_tpm2_crypto_backend_state_t@

__defined at:__ @botan\/ffi.h:2541:56@

__exported by:__ @botan\/ffi.h@
-}
newtype Botan_tpm2_crypto_backend_state_t = Botan_tpm2_crypto_backend_state_t
  { un_Botan_tpm2_crypto_backend_state_t :: Ptr.Ptr Botan_tpm2_crypto_backend_state_struct
  }
  deriving stock (Eq, Ord, Show)
  deriving newtype (F.Storable, HsBindgen.Runtime.HasBaseForeignType.HasBaseForeignType)

instance ( TyEq ty ((HsBindgen.Runtime.HasCField.CFieldType Botan_tpm2_crypto_backend_state_t) "un_Botan_tpm2_crypto_backend_state_t")
         ) => GHC.Records.HasField "un_Botan_tpm2_crypto_backend_state_t" (Ptr.Ptr Botan_tpm2_crypto_backend_state_t) (Ptr.Ptr ty) where

  getField =
    HsBindgen.Runtime.HasCField.ptrToCField (Data.Proxy.Proxy @"un_Botan_tpm2_crypto_backend_state_t")

instance HsBindgen.Runtime.HasCField.HasCField Botan_tpm2_crypto_backend_state_t "un_Botan_tpm2_crypto_backend_state_t" where

  type CFieldType Botan_tpm2_crypto_backend_state_t "un_Botan_tpm2_crypto_backend_state_t" =
    Ptr.Ptr Botan_tpm2_crypto_backend_state_struct

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct ESYS_CONTEXT@

    __defined at:__ @botan\/ffi.h:2543:8@

    __exported by:__ @botan\/ffi.h@
-}
data ESYS_CONTEXT

-- __unique:__ @instance ToFunPtr (Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)@
foreign import ccall safe "wrapper" hs_bindgen_84c12dcae5dbfa89 ::
     (Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
  -> IO (Ptr.FunPtr (Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

-- __unique:__ @instance FromFunPtr (Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)@
foreign import ccall safe "dynamic" hs_bindgen_77773c3700f750af ::
     Ptr.FunPtr (Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
  -> Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt

instance HsBindgen.Runtime.FunPtr.ToFunPtr (Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt) where

  toFunPtr = hs_bindgen_84c12dcae5dbfa89

instance HsBindgen.Runtime.FunPtr.FromFunPtr (Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt) where

  fromFunPtr = hs_bindgen_77773c3700f750af

-- __unique:__ @instance ToFunPtr (Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)@
foreign import ccall safe "wrapper" hs_bindgen_452085eb661a56c6 ::
     (Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
  -> IO (Ptr.FunPtr (Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

-- __unique:__ @instance FromFunPtr (Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)@
foreign import ccall safe "dynamic" hs_bindgen_aa01a8a48d88978e ::
     Ptr.FunPtr (Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
  -> Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt

instance HsBindgen.Runtime.FunPtr.ToFunPtr (Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt) where

  toFunPtr = hs_bindgen_452085eb661a56c6

instance HsBindgen.Runtime.FunPtr.FromFunPtr (Botan_view_ctx -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt) where

  fromFunPtr = hs_bindgen_aa01a8a48d88978e
