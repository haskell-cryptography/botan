{-|
Module      : Botan.Bindings.Verify
Description : Signature Verification
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.Verify
( BotanPKOpVerifyStruct
, BotanPKOpVerify(..)
, botan_pk_op_verify_destroy
, botan_pk_op_verify_create
, botan_pk_op_verify_update
, botan_pk_op_verify_finish
, pattern BOTAN_PUBKEY_STD_FORMAT_SIGNATURE 
, pattern BOTAN_PUBKEY_DER_FORMAT_SIGNATURE
) where

import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.PubKey.Sign

-- | Opaque verify struct
data {-# CTYPE "botan/ffi.h" "struct botan_pk_op_verify_struct" #-} BotanPKOpVerifyStruct

-- | Botan verify object
newtype {-# CTYPE "botan/ffi.h" "botan_pk_op_verify_t" #-} BotanPKOpVerify
    = MkBotanPKOpVerify { runBotanPKOpVerify :: Ptr BotanPKOpVerifyStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy a verify object
foreign import capi safe "botan/ffi.h &botan_pk_op_verify_destroy"
    botan_pk_op_verify_destroy
        :: FinalizerPtr BotanPKOpVerifyStruct

-- | Uses the same flags as botan_pk_op_sign_create
foreign import capi safe "botan/ffi.h botan_pk_op_verify_create"
    botan_pk_op_verify_create
        :: Ptr BotanPKOpVerify      -- ^ __op__
        -> BotanPubKey              -- ^ __key__
        -> ConstPtr CChar           -- ^ __hash_and_padding__
        -> Word32                   -- ^ __flags__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_verify_update"
    botan_pk_op_verify_update
        :: BotanPKOpVerify      -- ^ __op__
        -> ConstPtr Word8       -- ^ __in[]__
        -> CSize                -- ^ __in_len__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_verify_finish"
    botan_pk_op_verify_finish
        :: BotanPKOpVerify      -- ^ __op__
        -> ConstPtr Word8       -- ^ __sig[]__
        -> CSize                -- ^ __sig_len__
        -> IO CInt
