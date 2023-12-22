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

module Botan.Bindings.PubKey.Verify where

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
        :: Ptr BotanPKOpVerify      -- ^ op
        -> BotanPubKey              -- ^ key
        -> ConstPtr CChar           -- ^ hash_and_padding
        -> Word32                   -- ^ flags
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_verify_update"
    botan_pk_op_verify_update
        :: BotanPKOpVerify      -- ^ op
        -> ConstPtr Word8       -- ^ in[]
        -> CSize                -- ^ in_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_verify_finish"
    botan_pk_op_verify_finish
        :: BotanPKOpVerify      -- ^ op
        -> ConstPtr Word8       -- ^ sig[]
        -> CSize                -- ^ sig_len
        -> IO CInt
