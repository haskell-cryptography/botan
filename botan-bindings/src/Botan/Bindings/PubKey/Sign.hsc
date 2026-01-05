{-|
Module      : Botan.Bindings.Sign
Description : Signature Generation
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.Sign (
    BotanPKOpSignStruct
  , BotanPKOpSign (..)
  , botan_pk_op_sign_destroy
  , pattern BOTAN_PUBKEY_STD_FORMAT_SIGNATURE
  , pattern BOTAN_PUBKEY_DER_FORMAT_SIGNATURE
  , botan_pk_op_sign_create
  , botan_pk_op_sign_output_length
  , botan_pk_op_sign_update
  , botan_pk_op_sign_finish
  ) where

import Botan.Bindings.ConstPtr
import Botan.Bindings.PubKey
import Botan.Bindings.RNG
import Data.Word
import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Ptr
import Foreign.Storable

#include <botan/ffi.h>

-- | Opaque sign struct
data {-# CTYPE "botan/ffi.h" "struct botan_pk_op_sign_struct" #-} BotanPKOpSignStruct

-- | Botan sign object
newtype {-# CTYPE "botan/ffi.h" "botan_pk_op_sign_t" #-} BotanPKOpSign
    = MkBotanPKOpSign { ptr :: Ptr BotanPKOpSignStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy a sign object
foreign import capi safe "botan/ffi.h &botan_pk_op_sign_destroy"
    botan_pk_op_sign_destroy
        :: FinalizerPtr BotanPKOpSignStruct

-- NOTE: These are separate flags from BOTAN_PRIVKEY_EXPORT_FLAG_DER and BOTAN_PRIVKEY_EXPORT_FLAG_PEM
-- The correct default flag would be BOTAN_PUBKEY_STD_FORMAT_SIGNATURE, and is not necessarily
-- indicative of PEM encoding
pattern BOTAN_PUBKEY_STD_FORMAT_SIGNATURE   -- ^ Not an actual flag
    ,   BOTAN_PUBKEY_DER_FORMAT_SIGNATURE
    ::  (Eq a, Num a) => a
pattern BOTAN_PUBKEY_STD_FORMAT_SIGNATURE = 0
pattern BOTAN_PUBKEY_DER_FORMAT_SIGNATURE = #const BOTAN_PUBKEY_DER_FORMAT_SIGNATURE

foreign import capi safe "botan/ffi.h botan_pk_op_sign_create"
    botan_pk_op_sign_create
        :: Ptr BotanPKOpSign      -- ^ __op__
        -> BotanPrivKey           -- ^ __key__
        -> ConstPtr CChar         -- ^ __hash_and_padding__
        -> Word32                 -- ^ __flags__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_sign_output_length"
    botan_pk_op_sign_output_length
        :: BotanPKOpSign      -- ^ __op__
        -> Ptr CSize          -- ^ __olen__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_sign_update"
    botan_pk_op_sign_update
        :: BotanPKOpSign      -- ^ __op__
        -> ConstPtr Word8     -- ^ __in[]__
        -> CSize              -- ^ __in_len__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_sign_finish"
    botan_pk_op_sign_finish
        :: BotanPKOpSign      -- ^ __op__
        -> BotanRNG           -- ^ __rng__
        -> Ptr Word8          -- ^ __sig[]__
        -> Ptr CSize          -- ^ __sig_len__
        -> IO CInt
