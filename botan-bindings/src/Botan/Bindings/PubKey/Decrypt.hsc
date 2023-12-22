{-|
Module      : Botan.Bindings.Decrypt
Description : Public Key Decryption
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.Decrypt where

import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.RNG

#include <botan/ffi.h>

-- | Opaque decrypt struct
data {-# CTYPE "botan/ffi.h" "struct botan_pk_op_decrypt_struct" #-} BotanPKOpDecryptStruct

-- | Botan decrypt object
newtype {-# CTYPE "botan/ffi.h" "botan_pk_op_decrypt_t" #-} BotanPKOpDecrypt
    = MkBotanPKOpDecrypt { runBotanPKOpDecrypt :: Ptr BotanPKOpDecryptStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy a decrypt object
foreign import capi safe "botan/ffi.h &botan_pk_op_decrypt_destroy"
    botan_pk_op_decrypt_destroy
        :: FinalizerPtr BotanPKOpDecryptStruct

pattern BOTAN_PUBKEY_DECRYPT_FLAGS_NONE -- ^ Not actual flag
    ::  (Eq a, Num a) => a
pattern BOTAN_PUBKEY_DECRYPT_FLAGS_NONE = 0

foreign import capi safe "botan/ffi.h botan_pk_op_decrypt_create"
    botan_pk_op_decrypt_create
        :: Ptr BotanPKOpDecrypt      -- ^ op
        -> BotanPrivKey              -- ^ key
        -> Ptr CChar                 -- ^ padding
        -> Word32                    -- ^ flags
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_decrypt_output_length"
    botan_pk_op_decrypt_output_length
        :: BotanPKOpDecrypt      -- ^ op
        -> CSize                 -- ^ ctext_len
        -> Ptr CSize             -- ^ ptext_len
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_decrypt"
    botan_pk_op_decrypt
        :: BotanPKOpDecrypt      -- ^ op
        -> Ptr Word8             -- ^ out[]
        -> Ptr CSize             -- ^ out_len
        -> ConstPtr Word8        -- ^ ciphertext
        -> CSize                 -- ^ ciphertext_len
        -> IO CInt
