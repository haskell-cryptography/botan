{-|
Module      : Botan.Bindings.KeyAgreement
Description : Key Agreement
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.KeyAgreement where

import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.View

#include <botan/ffi.h>

-- NOTE: Asymmetry in naming of struct vs functions

-- | Opaque key agreement struct
data {-# CTYPE "botan/ffi.h" "struct botan_pk_op_ka_struct" #-} BotanPKOpKeyAgreementStruct

-- | Botan key agreement object
newtype {-# CTYPE "botan/ffi.h" "botan_pk_op_ka_t" #-} BotanPKOpKeyAgreement
    = MkBotanPKOpKeyAgreement { runBotanPKOpKeyAgreement :: Ptr BotanPKOpKeyAgreementStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy a key agreement object
foreign import capi safe "botan/ffi.h &botan_pk_op_key_agreement_destroy"
    botan_pk_op_key_agreement_destroy
        :: FinalizerPtr BotanPKOpKeyAgreementStruct

pattern BOTAN_PUBKEY_KEY_AGREEMENT_FLAGS_NONE -- ^ Not actual flag
    ::  (Eq a, Num a) => a
pattern BOTAN_PUBKEY_KEY_AGREEMENT_FLAGS_NONE = 0

foreign import capi safe "botan/ffi.h botan_pk_op_key_agreement_create"
    botan_pk_op_key_agreement_create
        :: Ptr BotanPKOpKeyAgreement -- ^ @op@
        -> BotanPrivKey              -- ^ @key@
        -> ConstPtr CChar            -- ^ @kdf@
        -> Word32                    -- ^ @flags@
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_key_agreement_export_public"
    botan_pk_op_key_agreement_export_public
        :: BotanPrivKey    -- ^ @key@
        -> Ptr Word8       -- ^ @out[]@
        -> Ptr CSize       -- ^ @out_len@
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_key_agreement_view_public"
    botan_pk_op_key_agreement_view_public
        :: BotanPrivKey                         -- ^ @key@
        -> BotanViewContext ctx                 -- ^ @ctx@
        -> FunPtr (BotanViewBinCallback ctx)    -- ^ @view@
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_key_agreement_size"
    botan_pk_op_key_agreement_size
        :: BotanPKOpKeyAgreement -- ^ @op@
        -> Ptr CSize             -- ^ @out_len@
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_key_agreement"
    botan_pk_op_key_agreement
        :: BotanPKOpKeyAgreement -- ^ @op@
        -> Ptr Word8             -- ^ @out[]@
        -> Ptr CSize             -- ^ @out_len@,
        -> ConstPtr Word8        -- ^ @other_key[]@
        -> CSize                 -- ^ @other_key_len@
        -> ConstPtr Word8        -- ^ @salt[]@
        -> CSize                 -- ^ @salt_len@
        -> IO CInt
