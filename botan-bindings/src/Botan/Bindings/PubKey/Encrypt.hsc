{-|
Module      : Botan.Bindings.Encrypt
Description : Public Key Encryption
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.Encrypt where

import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.RNG

#include <botan/ffi.h>

-- | Opaque encrypt struct
data {-# CTYPE "botan/ffi.h" "struct botan_pk_op_encrypt_struct" #-} BotanPKOpEncryptStruct

-- | Botan encrypt object
newtype {-# CTYPE "botan/ffi.h" "botan_pk_op_encrypt_t" #-} BotanPKOpEncrypt
    = MkBotanPKOpEncrypt { runBotanPKOpEncrypt :: Ptr BotanPKOpEncryptStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy a encrypt object
foreign import capi safe "botan/ffi.h &botan_pk_op_encrypt_destroy"
    botan_pk_op_encrypt_destroy
        :: FinalizerPtr BotanPKOpEncryptStruct

pattern BOTAN_PUBKEY_ENCRYPT_FLAGS_NONE -- ^ Not actual flag
    ::  (Eq a, Num a) => a
pattern BOTAN_PUBKEY_ENCRYPT_FLAGS_NONE = 0

foreign import capi safe "botan/ffi.h botan_pk_op_encrypt_create"
    botan_pk_op_encrypt_create
        :: Ptr BotanPKOpEncrypt      -- ^ op
        -> BotanPubKey               -- ^ key
        -> ConstPtr CChar            -- ^ padding
        -> Word32                    -- ^ flags
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_encrypt_output_length"
    botan_pk_op_encrypt_output_length
        :: BotanPKOpEncrypt      -- ^ op
        -> CSize                 -- ^ ptext_len
        -> Ptr CSize             -- ^ ctext_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_encrypt"
    botan_pk_op_encrypt
        :: BotanPKOpEncrypt      -- ^ op
        -> BotanRNG              -- ^ rng
        -> Ptr Word8             -- ^ out[]
        -> Ptr CSize             -- ^ out_len
        -> Ptr Word8             -- ^ plaintext[]
        -> CSize                 -- ^ plaintext_len
        -> IO CInt
