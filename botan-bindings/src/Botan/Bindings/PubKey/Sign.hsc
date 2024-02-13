{-|
Module      : Botan.Bindings.Sign
Description : Signature Generation
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.Sign where

import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.RNG

#include <botan/ffi.h>

-- | Opaque sign struct
data {-# CTYPE "botan/ffi.h" "struct botan_pk_op_sign_struct" #-} BotanPKOpSignStruct

-- | Botan sign object
newtype {-# CTYPE "botan/ffi.h" "botan_pk_op_sign_t" #-} BotanPKOpSign
    = MkBotanPKOpSign { runBotanPKOpSign :: Ptr BotanPKOpSignStruct }
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
        :: Ptr BotanPKOpSign      -- ^ @op@
        -> BotanPrivKey           -- ^ @key@
        -> ConstPtr CChar         -- ^ @hash_and_padding@
        -> Word32                 -- ^ @flags@
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_sign_output_length"
    botan_pk_op_sign_output_length
        :: BotanPKOpSign      -- ^ @op@
        -> Ptr CSize          -- ^ @olen@
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_sign_update"
    botan_pk_op_sign_update
        :: BotanPKOpSign      -- ^ @op@
        -> ConstPtr Word8     -- ^ @in[]@
        -> CSize              -- ^ @in_len@
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_sign_finish"
    botan_pk_op_sign_finish
        :: BotanPKOpSign      -- ^ @op@
        -> BotanRNG           -- ^ @rng@
        -> Ptr Word8          -- ^ @sig[]@
        -> Ptr CSize          -- ^ @sig_len@
        -> IO CInt
